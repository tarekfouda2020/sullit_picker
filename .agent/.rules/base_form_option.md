---
trigger: model_decision
description: when use BaseFormOption
---

# BaseFormOption — Rules & Usage Guide

## What is `BaseFormOption`?

`BaseFormOption<T, S>` is the **universal dropdown/selector widget** for this project. It renders a tappable field that opens a bottom sheet with a searchable list of options. It handles:

- **Single** and **multiple** selection modes
- **Local** (inline) data and **remote API** (paginated / async) data
- **Search** — locally filtered or remotely fetched
- **Validation** via Flutter `FormField`
- **Selection resolution** — when you pass a pre-selected item ID, it resolves the full model automatically from the options list

> **Rule:** Whenever a field requires choosing from a list of values, use `BaseFormOption`. Never build a custom dropdown or picker from scratch.

---

## Architecture Overview

```
BaseFormOption<T, S>          ← main widget (StatefulWidget)
 ├── BaseOptionsRequester<T, S>   ← data source (abstract, extend it for API)
 │    ├── LocalOptionsRequester   ← concrete: wraps a plain List<T>
 │    └── (your API requester)    ← concrete: calls your repository
 ├── OptionMatcher<T, S>          ← how an item matches a search term
 │    └── StringOptionMatcher     ← matches by string field on the model
 ├── BaseOptionsDisplayWidget<T>  ← renders the selected value inside the field
 └── OptionController             ← internal cubit — do NOT use directly
```

**Generic parameters:**
| Param | Meaning |
|---|---|
| `T` | Your domain model type (e.g. `CityModel`, `String`) |
| `S` | Search parameter type — almost always `String` |

---

## Required Parameters

| Parameter | Type | Purpose |
|---|---|---|
| `hintText` | `String` | Placeholder shown when nothing is selected |
| `bottomSheetTitle` | `String` | Title inside the options bottom sheet |
| `isMultiple` | `bool` | `true` → multi-select with save button; `false` → tap-to-select |
| `showSearch` | `bool` | Show/hide search bar inside the sheet |
| `optionsRequester` | `BaseOptionsRequester<T,S>` | Data source (local or API) |
| `selectedItems` | `List<T>?` | Currently selected items (drive from state) |
| `valueIdGetter` | `String? Function(T?)` | Returns a **unique ID** string for an item |
| `valueMainTitleGetter` | `String? Function(T?)` | Returns the **display label** string for an item |
| `onSaveValue` | `void Function(List<T>?, bool isMultiple)` | Called when selection is confirmed |

### Optional Parameters

| Parameter | Purpose |
|---|---|
| `showDecoration` | Show/hide the border box decoration (default `true`) |
| `onClearPressed` | Callback + shows a clear X icon on the field |
| `selectedOptionBuilder` | Custom widget to render selected items in the field |
| `optionItemBuilder` | Custom widget per list row in the bottom sheet |
| `validator` | Form validation function |
| `displayFormat` | `DisplayFormatEnum.flatList` (default) or `treeList` |
| `addNewOptionButtonText` | Label for "add new" button |
| `onAddNewOptionPressed` | Callback when "add new" is tapped |
| `padding` | Outer padding (default `EdgeInsets.all(0)`) |

---

## 1 — Static Shortcut: `BaseFormOption.singleLocalOption<T>()`

**Use this** when you have a local `List<T>` and need **single** selection. It is the most concise API.

```dart
BaseFormOption.singleLocalOption<CityModel>(
  hintText: 'Select City',
  bottomSheetTitle: 'Select City',
  options: controller.cities,           // List<CityModel>
  selectedItem: controller.cityObs.getValue(),
  valueIdGetter: (item) => item?.id.toString(),
  valueMainTitleGetter: (item) => item?.name,
  onSaveValue: (city) => controller.cityObs.setValue(city),
  onClearPressed: () => controller.cityObs.setValue(null),
  showSearch: true,   // optional, defaults to false
)
```

**When to use:** Local lists (countries, cities, address types, mock data, any static enum-like data).

---

## 2 — Full Constructor: Local Data, Multiple Selection

Use the full `BaseFormOption<T, S>(...)` constructor when you need **multi-select** or custom display.

```dart
BaseFormOption<TagModel, String>(
  hintText: 'Select Tags',
  bottomSheetTitle: 'Select Tags',
  showSearch: true,
  isMultiple: true,                          // ← multi-select
  selectedItems: controller.selectedTags,
  optionsRequester: LocalOptionsRequester(
    options: controller.allTags,             // List<TagModel>
    optionMatcher: StringOptionMatcher(
      stringGetter: (tag) => tag.name,       // ← field used for local search
    ),
  ),
  valueIdGetter: (tag) => tag?.id,
  valueMainTitleGetter: (tag) => tag?.name,
  onSaveValue: (tags, isMultiple) {
    setState(() => controller.selectedTags = tags ?? []);
  },
  onClearPressed: () {
    setState(() => controller.selectedTags = []);
  },
  selectedOptionBuilder: (tags) {
    return BaseOptionsDisplayWidget<TagModel>(
      selectedOptions: tags,
      titleGetter: (tag) => tag.name,
    );
  },
)
```

---

## 3 — API Data (Remote Requester)

### Step 1: Create a custom requester

```dart
import 'package:base_structure/core/http/models/result.dart';
import 'package:base_structure/core/widgets/base_form_option/options_requester/base_options_requester.dart';
import 'package:base_structure/core/widgets/base_form_option/options_requester/option_matchers/string_option_matcher.dart';

class CitiesOptionsRequester extends BaseOptionsRequester<CityModel, String> {
  CitiesOptionsRequester({required CitiesRepository repository})
      : super(
          isRemotelySearch: true,   // ← true = API called on each search
          immediatelyRequestOptions: false, // ← false = load only when sheet opens
          optionMatcher: StringOptionMatcher(
            stringGetter: (city) => city.name, // ← local fallback search field
          ),
          fetcher: (searchParam) async {
            // call your repository; searchParam is the typed search term
            return repository.getCities(search: searchParam);
            // must return MyResult<List<CityModel>>
          },
        );
}
```

### Step 2: Instantiate in the controller

```dart
// in your controller / cubit
late final CitiesOptionsRequester citiesRequester = CitiesOptionsRequester(
  repository: sl<CitiesRepository>(),
);
```

### Step 3: Use in the widget

```dart
BaseFormOption<CityModel, String>(
  hintText: 'Select City',
  bottomSheetTitle: 'Select City',
  showSearch: true,
  isMultiple: false,
  selectedItems: controller.selectedCity != null ? [controller.selectedCity!] : null,
  optionsRequester: controller.citiesRequester,
  valueIdGetter: (city) => city?.id,
  valueMainTitleGetter: (city) => city?.name,
  onSaveValue: (cities, _) {
    controller.selectedCity = cities?.firstOrNull;
  },
  onClearPressed: () {
    controller.selectedCity = null;
    controller.citiesRequester.clear(); // reset paginated state
  },
)
```

---

## Search Modes

| `isRemotelySearch` | Behaviour |
|---|---|
| `false` | Items are filtered **locally** in-memory using `optionMatcher` |
| `true` | API is called with a debounce on every keystroke. Local results also shown while waiting |

> Always use `showSearch: false` for short static lists (< 15 items). Use `showSearch: true` for long lists or API-driven lists.

---

## `StringOptionMatcher` — How to configure

`StringOptionMatcher` is the standard matcher. Pass a `stringGetter` that returns the field your users would search by:

```dart
StringOptionMatcher(
  stringGetter: (item) => item.name,   // search by name
)

// searching by multiple fields — concatenate:
StringOptionMatcher(
  stringGetter: (item) => '${item.firstName} ${item.lastName}',
)
```

---

## `BaseOptionsDisplayWidget` — Selected Value Display

Used inside `selectedOptionBuilder` to render what was selected inside the field button.

```dart
selectedOptionBuilder: (items) {
  return BaseOptionsDisplayWidget<ProductModel>(
    selectedOptions: items,
    titleGetter: (item) => item.title,
    // optionsDisplayMode: OptionsDisplayMode.summarized, // for multi-select chips
  );
},
```

If you don't pass `selectedOptionBuilder`, the widget automatically uses `valueMainTitleGetter` to render the default display — which is fine for most cases.

---

## Validation

```dart
BaseFormOption.singleLocalOption<CountryModel>(
  // ...
  validator: (item) {
    if (item == null) return 'Please select a country';
    return null;
  },
)

// For the full constructor:
validator: (items) {
  if (items == null || items.isEmpty) return 'Required';
  return null;
},
```

---

## Rules Summary

| Rule | Detail |
|---|---|
| ✅ Use `singleLocalOption` for local Single select | Shortest, most readable |
| ✅ Use full constructor for multi-select or API data | Full flexibility |
| ✅ Always provide `valueIdGetter` using a unique field | Used for selection equality checks |
| ✅ `isRemotelySearch: false` for local data | Avoids unnecessary API calls |
| ✅ `immediatelyRequestOptions: false` for API | Loads only when sheet opens |
| ✅ `immediatelyRequestOptions: true` for local | `LocalOptionsRequester` already sets this |
| ❌ Never use `DropdownButton` or `showDialog` for list selection | Use `BaseFormOption` |
| ❌ Never force-unwrap in `valueIdGetter` / `valueMainTitleGetter` | Both receive nullable `T?` |
| ❌ Never hold `OptionController` in your own state | It is managed internally |
| ❌ Don't pass `selectedItems` as a direct local variable | Drive it from your observable / cubit state |

---

## File Locations

| File | Role |
|---|---|
| `lib/core/widgets/base_form_option/base_form_option.dart` | Main widget |
| `.../options_requester/base_options_requester.dart` | Abstract requester — extend for API |
| `.../options_requester/local_options_requester.dart` | Concrete: wraps a `List<T>` |
| `.../options_requester/base_options_display_widget.dart` | Renders selected items in field |
| `.../options_requester/option_matchers/string_option_matcher.dart` | Standard string matcher |
| `.../options_listview/display_format_enum.dart` | `flatList` / `treeList` |

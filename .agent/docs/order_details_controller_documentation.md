# Order Details Controller Documentation

## Overview

The `OrderDetailsController` is responsible for managing the order picking process in the Suliit Picker application. It handles product picking, replacement, deletion, quantity modification, and order preparation.

---

## Key Variables

### Observable Values
| Variable                 | Type                   | Description                                       |
|--------------------------|------------------------|---------------------------------------------------|
| `isAllPickedObs`         | `ObsValue<bool>`       | Tracks if all products in the order are picked    |
| `refreshDeletedSheetObs` | `ObsValue<bool>`       | Used to refresh the deleted products sheet UI     |
| `enteredBagsPriceObs`    | `ObsValue<double>`     | Holds the calculated price for entered bags count |
| `detailsCubit`           | `BaseBloc<OrderModel>` | Manages the state of order details                |

### Text Controllers
| Controller             | Purpose                      |
|------------------------|------------------------------|
| `newWeightController`  | Input for new product weight |
| `newPriceController`   | Input for new product price  |
| `pickerNoteController` | Input for picker notes       |
| `newCountController`   | Input for bags count         |

### Form Keys
| Key                | Purpose                          |
|--------------------|----------------------------------|
| `formKey`          | General form validation          |
| `replaceReasonKey` | Replace reason dialog validation |
| `bagsCountFormKey` | Bags count dialog validation     |
| `newQntFormKey`    | New quantity form validation     |

---

## Understanding the Three Quantity Variables

In `OrderDetailsModel`:

1. **`quantity`** - The total quantity of the product to be picked
   - Modified when replacing a product (reduced by 1)
   - Represents how many items remain to be picked OR have been picked

2. **`pickedQuantity`** (in `ProductModel`) - How many items have been picked
   - Incremented when `pickItem()` is called
   - Default value: `0`

3. **`remainQnt`** (computed getter) - How many items remain to pick
   - Formula: `quantity - product!.pickedQuantity!`
   - When `remainQnt == 0`, the product is fully picked

### The Percent Calculation

The percent is calculated in `getProductPickedPercent()`:
```dart
double percent = (pickedQty / orderProduct.quantity) * 100;
```

---

## Methods Documentation

### Constructor & Initialization

#### `OrderDetailsController(int id, DateTime time)`
- **Purpose**: Initializes the controller with order ID and target time
- **Actions**: Calls `getDetails()` to fetch order data

#### `getDetails({bool fromRemote = true})`
- **Purpose**: Fetches order details from local storage or remote API
- **Flow**:
  1. Check if data exists in Hive local storage
  2. If exists → call `initDataFromLocal()`
  3. If not → call API and save to local storage

#### `initDataFromLocal()`
- **Purpose**: Loads order details from local storage
- **Links to**: `OrdersHelper.getOrderDetails()`, `updateDetailsCubit()`, `updateIsAllPickedObs()`

---

### Picking Methods

#### `onPressPick(BuildContext context, OrderDetailsModel orderProduct, {bool pickAll = false})`
- **Purpose**: Entry point when user taps the pick button
- **Parameters**:
  - `orderProduct`: The product being picked
  - `pickAll`: If true, picks all remaining quantities at once
- **Flow**:
  1. Check if picked quantity != total quantity
  2. Call `pickItem()`

#### `pickItem(OrderDetailsModel orderProduct, {bool pickedAll = false})` ⚠️ **CRITICAL METHOD**
- **Purpose**: Marks a product as picked (increments picked quantity)
- **Lines**: 547-555
- **Flow**:
  1. Check if `pickedQuantity != quantity`
  2. Call `getProductPickedPercent()` to update picked quantity and percent
  3. Update cubit and save to local storage
  4. Update the order in the orders list

#### `getProductPickedPercent(OrderDetailsModel orderProduct, {bool returnItem = false, bool pickedAll = false})` ⚠️ **CRITICAL METHOD**
- **Purpose**: Calculates the picked percentage for a product
- **Lines**: 615-637
- **Logic**:
  ```dart
  int pickedQty = orderProduct.product!.pickedQuantity!;
  if (returnItem) {
    pickedQty = pickedQty - 1;
  } else {
    if (pickedAll) {
      pickedQty = pickedQty + orderProduct.quantity;
    } else {
      pickedQty = pickedQty + 1;
    }
  }
  orderProduct.product!.pickedQuantity = pickedQty;
  double percent = (pickedQty / orderProduct.quantity) * 100;
  orderProduct.product!.productPickedPercent = percent;
  ```
- **Issue**: When `quantity` changes (due to replacement), the percent calculation uses the NEW quantity, not the original

#### `returnPickedItem(BuildContext context, OrderDetailsModel orderProduct)`
- **Purpose**: Returns a picked item (decrements picked quantity)
- **Lines**: 557-578
- **Logic**:
  1. Decrement picked quantity
  2. Recalculate percent
  3. If picked quantity becomes 0 and product was modified, show confirm dialog

---

### Replacement Methods

#### `onPressReplace(BuildContext context, OrderDetailsModel item)`
- **Purpose**: Entry point for replacing a product
- **Flow**:
  1. Check if product is fully picked → return if true
  2. If replacement allowed → `showReplaceDialog()`
  3. If not → `showDeleteDialog()`

#### `showReplaceDialog(BuildContext context, OrderDetailsModel currentItem)`
- **Purpose**: Shows confirmation dialog for replacement
- **Links to**: `showReturnReasonDialog()`

#### `showReturnReasonDialog(BuildContext context, OrderDetailsModel currentItem)`
- **Purpose**: Shows dialog to enter reason for replacement
- **Links to**: `confirmReplaceReason()`

#### `confirmReplaceReason(BuildContext context, OrderDetailsModel currentItem)`
- **Purpose**: Validates reason and initiates product scan
- **Links to**: `scanProduct()`

#### `scanProduct(BuildContext context, OrderDetailsModel oldItem)`
- **Purpose**: Scans barcode for replacement product
- **Links to**: `getProductWithBarcode()`

#### `getProductWithBarcode(BuildContext context, String barcode, OrderDetailsModel oldItem)`
- **Purpose**: Fetches product data by barcode from API
- **Links to**: `addNewProduct()`

#### `addNewProduct(SearchBarcodeModel newData, OrderDetailsModel oldItem)` ⚠️ **CRITICAL METHOD**
- **Purpose**: Adds a new replacement product
- **Lines**: 172-234
- **Logic**:
  1. Check if new price > old price → reject
  2. Find the old item index
  3. **Reduce oldItem.quantity by 1**
  4. Set product status to `qntModified`
  5. **If pickedQuantity > 0: call `pickItem(oldItem)`** ← This is where the issue occurs
  6. If quantity becomes 0: remove from list and add to deleted
  7. Check if new item was added before → update existing or add new

#### `updateReplacedProduct(SearchBarcodeModel newData, OrderDetailsModel oldItem)`
- **Purpose**: Updates product with replacement data (full replacement)
- **Lines**: 134-170

#### `_updateExistItem(SearchBarcodeModel newData)`
- **Purpose**: Updates quantity of already-added replacement product
- **Lines**: 236-244

#### `_addNewItem(OrderDetailsModel updatedItem, int index)`
- **Purpose**: Adds a new replacement item to the order
- **Lines**: 246-257
- **Important**: Sets `pickedQuantity = 0`, `productPickedPercent = 0`

---

### Quantity Modification Methods

#### `editQuantity(BuildContext context, OrderDetailsModel product)`
- **Purpose**: Shows dialog to reduce product quantity

#### `_reduceProductQnt(OrderDetailsModel product)`
- **Purpose**: Reduces product quantity by 1
- **Lines**: 286-302
- **Condition**: Only if `quantity > 1`

---

### Deletion Methods

#### `showDeleteItemDialog(BuildContext context, OrderDetailsModel item)`
- **Purpose**: Shows confirmation for deleting a product

#### `deleteReasonDialog(BuildContext context, int id)`
- **Purpose**: Shows dialog to enter deletion reason

#### `deleteProduct(BuildContext context, int itemId)`
- **Purpose**: Removes product from order
- **Lines**: 594-613
- **Actions**:
  1. Remove from `ordersDetails`
  2. Add to `deletedOrders`
  3. If order becomes empty → cancel order

#### `returnDeleteProduct(BuildContext context, int itemId)`
- **Purpose**: Returns a deleted product back to the order
- **Lines**: 639-654

---

### Return/Undo Methods

#### `returnChangedProduct(OrderDetailsModel updatedOrder)`
- **Purpose**: Returns a fully replaced product to original state
- **Lines**: 726-758

#### `returnAddedProduct(OrderDetailsModel updatedOrder)`
- **Purpose**: Returns an added replacement product (reverts 1-by-1 replacement)
- **Lines**: 761-810

#### `showConFirmReturnDialog(BuildContext context, OrderDetailsModel replacedItem)`
- **Purpose**: Shows confirmation dialog for returning modified products
- **Lines**: 812-839

---

### Order-Level Methods

#### `orderPickedPercent(OrderModel details, {bool isReturn = false})`
- **Purpose**: Calculates overall order picking progress
- **Lines**: 656-671
- **Formula**:
  ```dart
  int totalPickedQty = details.ordersDetails!.fold<int>(0, (sum, item) => sum + (item.product!.pickedQuantity ?? 0));
  int totalQty = details.ordersDetails!.fold<int>(0, (sum, item) => sum + item.quantity);
  final percent = (totalPickedQty / totalQty) * 100;
  ```

#### `updateSameOrderInList(OrderModel details)`
- **Purpose**: Updates the order in the main orders list
- **Lines**: 673-686

#### `updateDetailsCubit({OrderModel? data})`
- **Purpose**: Updates the state of order details cubit

#### `updateIsAllPickedObs()`
- **Purpose**: Updates the `isAllPickedObs` observable

---

### Order Actions

#### `showCancelOrderDialog(BuildContext context)`
- **Purpose**: Shows cancel order confirmation

#### `cancelOrder(BuildContext context, {bool fromDelete = false})`
- **Purpose**: Cancels the order via API
- **Lines**: 335-355

#### `removeOrder()`
- **Purpose**: Removes order from local storage
- **Lines**: 357-373

#### `sendToCashier()`
- **Purpose**: Marks order as ready for cashier
- **Lines**: 859-868

#### `showBagsCountDialog(BuildContext context)`
- **Purpose**: Shows dialog to enter bags count

#### `prepareOrder(BuildContext context)`
- **Purpose**: Submits the prepared order to API
- **Lines**: 888-924

#### `calcEnteredBagsPrice(String amount)`
- **Purpose**: Calculates price for entered bags count
- **Lines**: 926-935

---

### Price/Weight Modification Methods

#### `showWeightDialog(BuildContext context, OrderDetailsModel orderProduct)`
- **Purpose**: Shows dialog for weight confirmation

#### `showPriceDialog(BuildContext context, OrderDetailsModel orderProduct, {bool pickAll = false})`
- **Purpose**: Shows dialog for price adjustment

#### `showNewWeightDialog(BuildContext context, OrderDetailsModel orderProduct)`
- **Purpose**: Shows dialog for entering new weight

#### `showNewPriceDialog(BuildContext context, OrderDetailsModel orderProduct, {bool popTwice = true, bool pickAll = false})`
- **Purpose**: Shows dialog for entering new price

#### `confirmNewWeight(OrderDetailsModel orderProduct, BuildContext context)`
- **Purpose**: Validates and applies new weight
- **Lines**: 440-488

#### `confirmNewPrice(OrderDetailsModel oldItem, BuildContext context, {bool popTwice = true, bool pickAll = false})`
- **Purpose**: Validates and applies new price
- **Lines**: 508-545

---

### Helper Methods & Getters

#### `productMinimumNewWeight(OrderDetailsModel orderProduct)`
- **Purpose**: Calculates minimum allowed new weight (10% less than original)

#### `getProductWeight(OrderDetailsModel orderProduct)`
- **Purpose**: Extracts weight value from variation string

#### `getProductWeightUnit(OrderDetailsModel orderProduct)`
- **Purpose**: Extracts weight unit from variation string

#### `isProductFullPicked(OrderDetailsModel item)`
- **Purpose**: Checks if product is fully picked
- **Formula**: `item.remainQnt == 0`

#### `isAllProductsPicked` (getter)
- **Purpose**: Checks if all products are fully picked
- **Formula**: `ordersDetails.every((item) => item.remainQnt == 0)`

#### `getPickedItemsCount` (getter)
- **Purpose**: Returns count of fully picked products

#### `_orderParams(bool refresh)`
- **Purpose**: Creates OrdersParams object

#### `_replacedProductParams(String barcode)`
- **Purpose**: Creates ReplacedProductParams object

#### `_prepareOrderParams()`
- **Purpose**: Creates PrepareOrderParams object

---

## The Percent Issue - Root Cause Analysis

### Scenario: Pick 6 out of 7, then replace the last one

**Initial State:**
- `quantity = 7`
- `pickedQuantity = 0`
- `remainQnt = 7` (7 - 0)

**After picking 6:**
- `quantity = 7`
- `pickedQuantity = 6`
- `remainQnt = 1` (7 - 6)
- `percent = (6 / 7) * 100 = 85.7%`

**After replacing the last one (addNewProduct is called):**
- `quantity = 6` (reduced by 1 in line 189)
- `pickedQuantity = 6` (unchanged at this point)
- `remainQnt = 0` (6 - 6)

**The Problem:**
In `addNewProduct()` at line 210-213:
```dart
if(oldItem.product!.pickedQuantity! > 0){
  pickItem(oldItem);  // This calls getProductPickedPercent
}
```

But the condition at line 549 in `pickItem()`:
```dart
if (orderProduct.product!.pickedQuantity != qty) {
  // ...
}
```

Since `pickedQuantity = 6` and `qty (quantity) = 6`, they are **equal**, so `pickItem()` does nothing and the percent is never updated!

---

## ✅ The Fix Applied

### New Method: `_recalculateProductPercent(OrderDetailsModel orderProduct)`

**Purpose**: Recalculates the product percent based on current `pickedQuantity` and `quantity` without incrementing `pickedQuantity`. This is used when quantity changes (e.g., during replacement).

**Location**: Lines 649-671

**Logic**:
```dart
void _recalculateProductPercent(OrderDetailsModel orderProduct) {
  int pickedQty = orderProduct.product!.pickedQuantity!;
  int qty = orderProduct.quantity;
  
  // If pickedQuantity exceeds the new quantity, cap it to the new quantity
  if (pickedQty > qty) {
    pickedQty = qty;
    orderProduct.product!.pickedQuantity = pickedQty;
  }
  
  double percent = qty > 0 ? (pickedQty / qty) * 100 : 0;
  orderProduct.product!.productPickedPercent = percent;
  
  // If product is now fully picked after the quantity reduction, update order percent
  if (pickedQty == qty && qty > 0) {
    orderPickedPercent(_detailsData);
  }
}
```

### Changes in `addNewProduct()`

**Before** (broken):
```dart
if(oldItem.product!.pickedQuantity! > 0){
  pickItem(oldItem);  // ❌ Fails when pickedQty == quantity
}
else if (oldItem.quantity == 0) { ... }
```

**After** (fixed):
```dart
if(oldItem.product!.pickedQuantity! > 0){
  _recalculateProductPercent(oldItem);  // ✅ Always recalculates correctly
}
if (oldItem.quantity == 0) { ... }  // Note: removed 'else' to allow both conditions
```

### Why This Fix Works

| Scenario               | Before Fix                              | After Fix                      |
|------------------------|-----------------------------------------|--------------------------------|
| Pick 6/7, replace last | percent = 85.7% (wrong)                 | percent = 100% (correct)       |
| Pick 3/7, replace one  | percent = 42.8% (wrong, doesn't update) | percent = 50% (correct, 3/6)   |
| Pick 1/7, replace one  | percent unchanged                       | percent = 16.6% (correct, 1/6) |

### Edge Cases Handled

1. **pickedQuantity > quantity**: If somehow pickedQuantity exceeds the new quantity, it's capped to prevent percent > 100%
2. **quantity = 0**: Percent is set to 0 to avoid division by zero
3. **Product fully picked after reduction**: Triggers `orderPickedPercent()` to update the overall order progress 85.7% while `remainQnt = 0`.

---

## Linked Dependencies

- `OrdersHelper` - Local storage operations
- `HomeRepositories` - API calls
- `LoadingHelper` - Loading dialogs
- `GlobalContext` - Context access
- `BarcodeService` - Barcode scanning
- `HiveHelper` - Hive database operations

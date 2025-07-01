# 🎨 Figma Implementation Guide

## **Pre-Implementation Analysis**

### **1. Design Audit Checklist**
Before starting implementation, complete this checklist:

- [ ] **Extract exact measurements** from Figma
  - [ ] All padding/margin values
  - [ ] Font sizes and weights
  - [ ] Icon sizes
  - [ ] Border radius values
  - [ ] Shadow properties

- [ ] **Document colors** precisely
  - [ ] Background colors (hex codes)
  - [ ] Text colors
  - [ ] Border colors
  - [ ] Shadow colors with opacity

- [ ] **Identify spacing patterns**
  - [ ] Grid system (8px, 16px, etc.)
  - [ ] Section spacing
  - [ ] Component spacing

- [ ] **Component analysis**
  - [ ] Reusable elements
  - [ ] State variations
  - [ ] Responsive behavior

## **2. Implementation Strategy**

### **Step 1: Set Up Design Tokens**
```dart
// Use enhanced Dimens class for consistent spacing
static const double cardPadding = 24.0;
static const double iconContainerSmall = 24.0;
static const double buttonHeight = 50.0;
```

### **Step 2: Use Design System Components**
```dart
// Instead of custom containers, use DSComponents
DSComponents.card(
  child: content,
  padding: Dimens.paddingCardAll,
  hasShadow: true,
)

// Instead of custom icons, use standardized ones
DSComponents.iconWithBackground(
  icon: Icons.person,
  context: context,
  containerSize: Dimens.iconContainerSmall,
)
```

### **Step 3: Follow Component Hierarchy**
```dart
// 1. Layout structure
Column(
  children: [
    // 2. Header/App bar
    DSComponents.sectionHeader(...),
    
    // 3. Main content card
    DSComponents.card(
      child: Column(
        children: [
          // 4. Content sections
          DSComponents.infoRow(...),
          DSComponents.statusBadge(...),
        ],
      ),
    ),
    
    // 5. Action buttons
    DSComponents.primaryButton(...),
  ],
)
```

## **3. Common Figma Patterns & Solutions**

### **Cards with Shadows**
```dart
// ❌ Manual implementation
Container(
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(16),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.05),
        blurRadius: 10,
        offset: Offset(0, 2),
      ),
    ],
  ),
  child: content,
)

// ✅ Using design system
DSComponents.card(
  child: content,
  borderRadius: Dimens.cardBorderRadius16,
)
```

### **Icons with Circular Backgrounds**
```dart
// ❌ Manual implementation
Container(
  width: 24,
  height: 24,
  decoration: BoxDecoration(
    color: context.colors.primary,
    shape: BoxShape.circle,
  ),
  child: Icon(Icons.person, color: Colors.white, size: 14),
)

// ✅ Using design system
DSComponents.iconWithBackground(
  icon: Icons.person,
  context: context,
  containerSize: Dimens.iconContainerSmall,
  iconSize: Dimens.iconSizeSmall,
)
```

### **Consistent Buttons**
```dart
// ❌ Manual implementation
ElevatedButton(
  onPressed: onPressed,
  style: ElevatedButton.styleFrom(
    backgroundColor: context.colors.primary,
    // ... many style properties
  ),
  child: Text(text),
)

// ✅ Using design system
DSComponents.primaryButton(
  text: text,
  onPressed: onPressed,
  context: context,
)
```

## **4. Measurement Extraction from Figma**

### **How to Get Exact Values**
1. **Select element** in Figma
2. **Check right panel** for:
   - Width/Height
   - Padding (all sides)
   - Corner radius
   - Drop shadow properties

3. **Use Inspect mode** for:
   - CSS properties
   - Exact color codes
   - Font specifications

### **Common Figma → Flutter Mappings**
| Figma Property | Flutter Implementation |
|----------------|----------------------|
| Drop Shadow | `BoxShadow(color: Colors.black.withValues(alpha: 0.05), blurRadius: 10, offset: Offset(0, 2))` |
| Corner Radius | `BorderRadius.circular(value)` |
| Auto Layout Gap | `SizedBox(height: value)` or `Gaps.vGap{value}` |
| Fill Color | `color: Color(0xFF{hexCode})` |
| Text Style | `AppTextStyle.s{size}_w{weight}(color: color)` |

## **5. Quality Assurance Checklist**

### **Visual Accuracy**
- [ ] Spacing matches Figma exactly (±2px tolerance)
- [ ] Colors match (use color picker to verify)
- [ ] Typography matches (size, weight, line height)
- [ ] Shadows and borders are accurate
- [ ] Corner radius matches design

### **Responsive Behavior**
- [ ] Layout works on different screen sizes
- [ ] Text doesn't overflow
- [ ] Buttons maintain minimum touch targets (44px)
- [ ] Cards maintain proper proportions

### **Interactive States**
- [ ] Button pressed states
- [ ] Loading states
- [ ] Error states
- [ ] Empty states

## **6. Tools & Utilities**

### **Figma Plugins to Use**
- **Figma to Flutter**: Generates Flutter code
- **Design Tokens**: Exports design tokens
- **Measure**: Gets exact measurements

### **Development Tools**
- **Flutter Inspector**: Debug layout issues
- **Widget Inspector**: Check widget hierarchy
- **Performance Overlay**: Monitor rendering

### **VS Code Extensions**
- **Flutter Widget Snippets**: Quick widget creation
- **Awesome Flutter Snippets**: Common patterns
- **Flutter Color**: Color picker integration

## **7. Troubleshooting Common Issues**

### **Spacing Doesn't Match**
```dart
// ❌ Problem: Using hardcoded values
padding: EdgeInsets.all(20),

// ✅ Solution: Use design tokens
padding: Dimens.paddingCardAll,
```

### **Colors Look Different**
```dart
// ❌ Problem: Using approximate colors
color: Colors.red,

// ✅ Solution: Use exact hex codes
color: Color(0xFFFF0000), // Exact from Figma
```

### **Icons Don't Match Size**
```dart
// ❌ Problem: Inconsistent icon sizing
Icon(Icons.person, size: 20),

// ✅ Solution: Use design system
DSComponents.iconWithBackground(
  icon: Icons.person,
  context: context,
  containerSize: Dimens.iconContainerSmall,
  iconSize: Dimens.iconSizeSmall,
)
```

## **8. Best Practices Summary**

1. **Always measure twice, code once** - Double-check Figma values
2. **Use design system components** - Don't reinvent the wheel
3. **Test on multiple devices** - Ensure responsive behavior
4. **Document deviations** - Note any intentional changes
5. **Review with design team** - Get feedback early and often

## **9. Implementation Template**

```dart
// 1. Import design system
import 'package:flutter_tdd/core/widgets/design_system_components.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';

// 2. Structure your widget
class FigmaImplementationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: SafeArea(
        child: Padding(
          padding: Dimens.paddingScreenAll,
          child: Column(
            children: [
              // 3. Use design system components
              DSComponents.card(
                child: Column(
                  children: [
                    DSComponents.sectionHeader(
                      title: "Section Title",
                      context: context,
                    ),
                    // Add content here
                  ],
                ),
              ),
              
              // 4. Add spacing
              SizedBox(height: Dimens.sectionSpacingMedium),
              
              // 5. Add actions
              DSComponents.primaryButton(
                text: "Action",
                onPressed: () {},
                context: context,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

Remember: **Consistency is key**. When in doubt, refer to existing implementations and follow the established patterns. 
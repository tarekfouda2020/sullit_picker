# OrderDetailsController

Manages order picking workflow. Handles product replacement, quantity adjustment, picking, deletion, price modification, and order submission.

## State

Observable values:
- `isAllPickedObs` — all products picked
- `refreshDeletedSheetObs` — deleted items sheet refresh trigger
- `refreshInvoiceCubit` — invoice recalculation state
- `enteredBagsPriceObs` — calculated bags total
- `bagsCountObs` — number of bags used
- `detailsCubit` — order data state

TextEditingControllers:
- `newWeightController`, `newPriceController`, `pickerNoteController`, `newCountController`

FormState keys for validation:
- `formKey`, `replaceReasonKey`, `bagsCountFormKey`, `newQntFormKey`

Data:
- `_backGroundModel` — original order data for invoice recalculation
- `_detailsData` — current order with modifications

## Core Operations

### Replace Product
```
onPressReplace() → check replacement allowed → showReplaceDialog() → showReturnReasonDialog() → scanProduct()
→ getProductWithBarcode() → validate price → addNewProduct() / updateReplacedProduct()
```
Stores original in `changedProducts`. Validates new price ≤ old price.

### Add Quantity
```
increaseQnt() → increment quantity → set status to qntModified → update invoice
```
Resets status to `noEdit` when quantity returns to fixed quantity.

### Reduce Quantity
```
_reduceProductQnt() → decrement quantity → store fixed quantity if first edit → set status to qntModified
→ update invoice
```
Moves item to `deletedOrders` when quantity reaches 0.

### Pick Item
```
pickItem() → getProductPickedPercent() → calculate (pickedQty / totalQty) * 100
→ update order-level percent → check if all picked
```
Recalculates when quantity changes mid-pick via `_recalculateProductPercent()`.

### Delete Item
```
deleteProduct() → move to deletedOrders → update totals → if order empty: cancelOrder()
```
Tracks deleted items for API sync.

### Undo Operations
```
returnAddedProduct() → find added item by oldReplacedModel + addedVariantId
→ increment original quantity → restore status → remove added item

returnChangedProduct() → find original in changedProducts → restore all fields → remove from list
```
Handles index shifting when removing from middle of list.

### Price Modification
```
confirmNewPrice() → validate price → update unitPrice + total price → mark as priceModified
→ add to changedProducts → pickItem()
```

### Weight Modification
```
confirmNewWeight() → validate weight (minWeight ≤ newWeight ≤ oldWeight) → update price
→ update variation string → mark as priceModified
```

## Data Tracking

**changedProducts:** Items that had price/variant modified. Used for undoing via original ID.

**deletedOrders:** Items removed. Sent to API as deleted in `prepareOrder`.

**addedVariantId:** ID of scanned product when replacing. Tracks added vs original products.

**oldReplacedModel:** Stores original item info when adding replacement. Links back via ID.

**fixedQnt:** Quantity before any reduction. Used to detect return-to-normal state.

**productStatus enum:**
- `noEdit` — unchanged
- `qntModified` — quantity changed
- `priceModified` — price changed
- `added` — scanned/added product
- `replaced` — swapped via replacement flow

## Invoice & Bags

**updateInvoice():** Calls API with current + deleted items + bag count. Updates tax/subtotal/total. Uses `_backGroundModel` for clean data.

**changeUsedBagsCount():** Recalculates total:
```
baseTotal = currentTotal - oldBagFees
newTotal = baseTotal + newBagFees
```

**prepareOrder():** Sends order to API. Requires bagCount > 0. Removes from assigned orders on success.

## Persistence

Fetch order: Hive cache first → falls back to API → saves locally.

Save after each operation via `getIt<OrdersHelper>().saveOrderDetails()`.

Updates assigned orders list in `updateSameOrderInList()`.

## Validation

Product replacement: new price must be ≤ old price.

Weight modification: minWeight ≤ newWeight ≤ oldWeight (10% tolerance).

Prepare order: requires bagCount > 0.

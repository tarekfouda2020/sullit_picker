class ProductReturnHandlerMethod {

  //
  // /// Returns a replaced or modified product to its original state
  // void _returnChangedProduct(
  //     OrderDetailsModel updatedOrder, {
  //       OrderDetailsModel? originalModel,
  //     }) {
  //   final handler = ProductReturnHandler(
  //     orderData: _detailsData,
  //     returnType: ProductReturnType.replaced,
  //   );
  //
  //   final originalItem = originalModel ?? handler.findOriginalItem(updatedOrder);
  //   if (originalItem == null) return;
  //
  //   final index = _detailsData.ordersDetails!.indexOf(updatedOrder);
  //   final restoredItem = handler.createRestoredItem(updatedOrder, originalItem);
  //
  //   _detailsData.ordersDetails![index] = restoredItem;
  //   handler.removeFromTrackingList(originalItem);
  //   _saveAndUpdateOrder();
  // }
  //
  // /// Returns an added product (reduces quantity and restores original)
  // void returnAddedProduct(
  //     BuildContext context,
  //     OrderDetailsModel updatedOrder,
  //     ) {
  //   final handler = ProductReturnHandler(
  //     orderData: _detailsData,
  //     returnType: ProductReturnType.added,
  //   );
  //
  //   final originalItem = handler.findOriginalItem(updatedOrder);
  //   if (originalItem == null) return;
  //
  //   final index = _detailsData.ordersDetails!.indexOf(updatedOrder);
  //
  //   // Check if confirmation is needed before creating restored item
  //   if (handler.shouldShowConfirmation(updatedOrder)) {
  //     showConFirmReturnDialog(
  //       context,
  //       updatedOrder,
  //       originalModel: originalItem,
  //       returnType: ProductReturnType.added,
  //     );
  //     return;
  //   }
  //
  //   final restoredItem = handler.createRestoredItem(updatedOrder, originalItem);
  //   _detailsData.ordersDetails![index] = restoredItem;
  //   _saveAndUpdateOrder();
  // }
  //
  // /// Shows confirmation dialog before returning a product to its original state
  // void showConFirmReturnDialog(
  //     BuildContext context,
  //     OrderDetailsModel replacedItem, {
  //       OrderDetailsModel? originalModel,
  //       ProductReturnType returnType = ProductReturnType.replaced,
  //     }) {
  //   showDialog(
  //     context: context,
  //     builder: (context) {
  //       return DialogActionWidget(
  //         description: Translate.s.confirm_return_original_product,
  //         redOnTap: () => _onReturnDialogCancel(context),
  //         greenOnTap: () => _onReturnDialogConfirm(
  //           context,
  //           replacedItem,
  //           originalModel: originalModel,
  //           returnType: returnType,
  //         ),
  //       );
  //     },
  //   );
  // }
  //
  // /// Handles cancel action in return confirmation dialog
  // void _onReturnDialogCancel(BuildContext context) {
  //   Navigator.pop(context);
  //   _saveAndUpdateOrder();
  //   updateSameOrderInList(_detailsData);
  // }
  //
  // /// Handles confirm action in return confirmation dialog
  // void _onReturnDialogConfirm(
  //     BuildContext context,
  //     OrderDetailsModel replacedItem, {
  //       OrderDetailsModel? originalModel,
  //       required ProductReturnType returnType,
  //     }) {
  //   Navigator.pop(context);
  //
  //   if (isAllPickedObs.getValue()) {
  //     isAllPickedObs.setValue(false);
  //   }
  //
  //   switch (returnType) {
  //     case ProductReturnType.replaced:
  //       _returnChangedProduct(replacedItem, originalModel: originalModel);
  //       break;
  //     case ProductReturnType.added:
  //       _handleAddedProductReturn(replacedItem, originalModel);
  //       break;
  //   }
  // }
  //
  // /// Handles the return of an added product after confirmation
  // void _handleAddedProductReturn(
  //     OrderDetailsModel updatedOrder,
  //     OrderDetailsModel? originalModel,
  //     ) {
  //   final handler = ProductReturnHandler(
  //     orderData: _detailsData,
  //     returnType: ProductReturnType.added,
  //   );
  //
  //   final originalItem = originalModel ?? handler.findOriginalItem(updatedOrder);
  //   if (originalItem == null) return;
  //
  //   final index = _detailsData.ordersDetails!.indexOf(updatedOrder);
  //   final restoredItem = handler.createRestoredItem(updatedOrder, originalItem);
  //
  //   if (restoredItem.quantity == 0) {
  //     _detailsData.ordersDetails!.removeAt(index);
  //     _detailsData.deletedOrders?.add(updatedOrder);
  //   }
  //   _detailsData.ordersDetails![index] = restoredItem;
  //
  //   handler.removeFromTrackingList(originalItem);
  //   _saveAndUpdateOrder();
  // }
  //
  // /// Saves and updates the order state
  // void _saveAndUpdateOrder() {
  //   updateDetailsCubit();
  //   getIt<OrdersHelper>().saveOrderDetails(_detailsData);
  // }
  // void returnPickedItem(BuildContext context,OrderDetailsModel orderProduct){
  //   int pickedQty = orderProduct.product!.pickedQuantity!;
  //   if(pickedQty>0){
  //     pickedQty = pickedQty - 1;
  //   }
  //   orderProduct.product!.pickedQuantity = pickedQty;
  //   double percent = (pickedQty / orderProduct.quantity) * 100;
  //   orderProduct.product!.productPickedPercent = percent;
  //   if(pickedQty == 0){
  //     orderPickedPercent(_detailsData,isReturn: true);
  //     if(orderProduct.product!.replaced || orderProduct.product!.isAdded){
  //       final returnType = orderProduct.product!.isAdded
  //           ? ProductReturnType.added
  //           : ProductReturnType.replaced;
  //       showConFirmReturnDialog(context, orderProduct, returnType: returnType);
  //       return ;
  //     }
  //   }
  //   if(isAllPickedObs.getValue()){
  //     isAllPickedObs.setValue(false);
  //   }
  //   updateDetailsCubit();
  //   getIt<OrdersHelper>().saveOrderDetails(_detailsData);
  //   updateSameOrderInList(_detailsData);
  // }

}
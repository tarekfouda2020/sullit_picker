part of 'prescription_order_imports.dart';

class PrescriptionOrderController {
  final List<OrderDetailsModel> ordersDetails = [];
  final BaseBloc<List<OrderDetailsModel>> ordersDetailsCubit =
      BaseBloc<List<OrderDetailsModel>>([]);
  late ObsValue<List<VariantModel>> variantsObs;

  InvoiceModel get invoice => InvoiceModel(
        subTotal: "99",
        shipping: "3",
        tax: "9",
        couponDiscount: "9",
        serviceFees: "9",
        techFees: "9",
        vatFeeAmount: "9",
        totalFeeAmount: "9",
        loyaltyPointsValue: "9",
        grandTotal: "9",
        envFees: "9",
        bagsCount: 9,
        productsTotalPrice: "9",
        discounts: [],
        taxPercentage: "9",
      );

  Future<void> scanAndAddProduct(BuildContext context) async {
    // final String? barcode = await getIt<BarcodeService>().scanBarcode(context);
    // if (barcode == null || barcode.isEmpty) return;

    await _searchAndAddByBarcode(context, "11135");
  }

  Future<void> _searchAndAddByBarcode(
      BuildContext context, String barcode) async {
    getIt<LoadingHelper>().showLoadingDialog();
    final params = ReplacedProductParams(barcode: barcode);
    final result = await getIt<HomeRepositories>().searchByBarcode(params);
    getIt<LoadingHelper>().dismissDialog();
    result.when(
      isSuccess: (data) {
        AppSnackBar.showSuccessSnackBar(
          "${Translate.s.product_scanned}, ${Translate.s.with_barcode} $barcode",
        );
        _handleScannedProduct(context, data!);
      },
      isError: (error) {
        AppSnackBar.showSimpleToast(
          msg: Translate.s.product_not_found,
          type: ToastType.error,
        );
      },
    );
  }

  /// same product can come back with several variants (pack sizes, etc) --
  /// when there's more than one, let the picker choose which ones to add
  /// instead of silently assuming the first.
  void _handleScannedProduct(BuildContext context, SearchBarcodeModel data) {
    final variants = data.variants;
    if (variants != null && variants.length > 1) {
      showVariantsBottomSheet(context, data);
    } else {
      _addVariant(data, data.variant);
    }
  }

  void initializeVariants(List<VariantModel>? variants) {
    variantsObs = ObsValue.withInit(List.of(variants ?? []));
  }

  void toggleVariant(int index) {
    final current = List.of(variantsObs.getValue());
    current[index] =
        current[index].copyWith(isSelected: !(current[index].isSelected ?? false));
    variantsObs.setValue(current);
  }

  Future<void> showVariantsBottomSheet(
      BuildContext context, SearchBarcodeModel data) {
    initializeVariants(data.variants);
    return AppBottomSheets.showScrollableBodyFixedHeaderSheet(
      context: context,
      builder: (sheetContext) => VariantsBottomSheetWidget(
        data: data,
        variantsObs: variantsObs,
        onToggle: (index) => toggleVariant(index),
        onConfirm: (selected) {
          Navigator.pop(sheetContext);
          for (final variant in selected) {
            _addVariant(data, variant);
          }
        },
      ),
    );
  }

  void _addVariant(SearchBarcodeModel data, VariantModel variant) {
    final existingIndex =
        ordersDetails.indexWhere((e) => e.addedVariantId == variant.id);
    if (existingIndex != -1) {
      final existing = ordersDetails[existingIndex];
      ordersDetails[existingIndex] =
          existing.copyWith(quantity: existing.quantity + 1);
    } else {
      ordersDetails.add(_buildOrderDetails(data, variant));
    }
    _refresh();
  }

  OrderDetailsModel _buildOrderDetails(
      SearchBarcodeModel data, VariantModel variant) {
    return OrderDetailsModel(
      id: data.id,
      variation: variant.name,
      quantity: 1,
      price: variant.mainPrice,
      unitPrice: variant.mainPrice,
      newVariantId: variant.id,
      addedVariantId: variant.id,
      pickerNotes: "",
      product: ProductModel(
        id: data.id,
        name: data.name,
        barcode: data.barcode,
        unit: variant.options,
        thumbnailImage: data.thumbnailImage,
        isFresh: false,
        productStatus: ProductStatusEnum.added,
        pickedQuantity: 0,
        productPickedPercent: 0.0,
        showEditPrice: false,
      ),
    );
  }

  void updateQuantity(OrderDetailsModel item, int newQuantity) {
    if (newQuantity < 1) return;
    final index =
        ordersDetails.indexWhere((e) => e.addedVariantId == item.addedVariantId);
    if (index == -1) return;
    ordersDetails[index] = ordersDetails[index].copyWith(quantity: newQuantity);
    _refresh();
  }

  void removeItem(OrderDetailsModel item) {
    ordersDetails.removeWhere((e) => e.addedVariantId == item.addedVariantId);
    _refresh();
  }

  void _refresh() => ordersDetailsCubit.successState(List.of(ordersDetails));
}

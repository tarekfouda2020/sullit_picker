part of '../in_store_scanner_imports.dart';

class ScannerSearchFieldWidget extends StatelessWidget {
  final TextEditingController textController;
  final String hint;
  final VoidCallback onSubmit;
  final Color? fillColor;
  final Color? borderColor;

  const ScannerSearchFieldWidget({
    super.key,
    required this.textController,
    required this.hint,
    required this.onSubmit,
    this.fillColor,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    final Color fieldFill = fillColor ?? context.colors.white;
    final Color fieldBorder = borderColor ?? context.colors.white;
    return GenericTextField(
      controller: textController,
      hint: hint,
      fillColor: fieldFill,
      hintColor: context.colors.hintText,
      enableBorderColor: fieldBorder,
      focusBorderColor: fieldBorder,
      radius: Dimens.borderRadius30PX,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: Dimens.dp16,
        vertical: Dimens.dp10,
      ),
      suffixIcon: IconButton(
        icon: Icon(
          Icons.search_rounded,
          color: context.colors.hintText,
        ),
        onPressed: onSubmit,
      ),
      fieldTypes: FieldTypes.normal,
      type: TextInputType.number,
      action: TextInputAction.search,
      onSubmit: onSubmit,
      validate: (value) => null,
    );
  }
}

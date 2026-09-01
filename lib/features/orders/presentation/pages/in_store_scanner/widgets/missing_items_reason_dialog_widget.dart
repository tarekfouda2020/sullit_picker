part of '../in_store_scanner_imports.dart';

class MissingItemsReasonDialogWidget extends StatelessWidget {
  final TextEditingController notesController;
  final GlobalKey<FormState> formKey;
  final VoidCallback onSubmit;

  const MissingItemsReasonDialogWidget({
    super.key,
    required this.notesController,
    required this.formKey,
    required this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: context.colors.white,
      surfaceTintColor: context.colors.white,
      insetPadding: const EdgeInsets.symmetric(horizontal: Dimens.dp20),
      contentPadding: Dimens.paddingAll20Px,
      shape: const RoundedRectangleBorder(
        borderRadius: Dimens.borderRadius30PX,
      ),
      content: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Gaps.empty,
                  Expanded(
                    child: Text(
                      Translate.s.modify_reason,
                      textAlign: TextAlign.center,
                      style: AppTextStyle.s18_w700(color: context.colors.black),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(Icons.close, color: context.colors.black),
                  ),
                ],
              ),
              Gaps.vGap16,
              GenericTextField(
                controller: notesController,
                fieldTypes: FieldTypes.rich,
                type: TextInputType.multiline,
                max: 5,
                action: TextInputAction.done,
                radius: Dimens.borderRadius16PX,
                validate: (value) => value?.validateEmpty(),
                fillColor: context.colors.background,
                hint: Translate.s.write_reason_here,
                hintColor: context.colors.textColor,
              ),
              Gaps.vGap16,
              AppTextButton.maxCustom(
                text: Translate.s.submit,
                onPressed: () {
                  if (formKey.currentState?.validate() != true) return;
                  onSubmit();
                },
                bgColor: context.colors.green,
                txtColor: context.colors.white,
                textSize: Dimens.font_sp18,
                maxHeight: Dimens.buttonHeight,
                borderRadius: Dimens.borderRadius30PX,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

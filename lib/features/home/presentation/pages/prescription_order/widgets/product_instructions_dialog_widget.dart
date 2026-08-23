import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/helpers/export.dart';

class ProductInstructionsDialogWidget extends StatelessWidget {
  final String text;

  const ProductInstructionsDialogWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: context.colors.background,
      insetPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      contentPadding: const EdgeInsets.fromLTRB(24, 12, 24, 24),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            Translate.s.instructions,
            style: AppTextStyle.s16_w600(color: context.colors.black),
          ),
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(CupertinoIcons.xmark, color: context.colors.black, size: 20),
          ),
        ],
      ),
      content: SizedBox(
        height: 100,
        child: SingleChildScrollView(
          child: Text(
            text,
            style: AppTextStyle.s14_w400(color: context.colors.black),
          ),
        ),
      ),
    );
  }
}

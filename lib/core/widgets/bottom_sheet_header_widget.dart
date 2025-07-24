import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class BottomSheetHeaderWidget extends StatelessWidget {
  final String title;
  final void Function()? onClose;
  const BottomSheetHeaderWidget({super.key, required this.title, this.onClose});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Gaps.empty,
        Text(title,
          style: AppTextStyle.s18_w700(color: context.colors.black),),
        GestureDetector(
          onTap: onClose ?? () => Navigator.pop(context),
          child: Container(
            width: 25, height: 25,
            decoration: BoxDecoration(
                color: context.colors.disableGray,
                shape: BoxShape.circle
            ),
            child: const Icon(CupertinoIcons.xmark,color: CupertinoColors.systemGrey,size: 17,),
          ),
        )
      ],
    );
  }
}


import 'dart:math';

import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import '../order_details_imports.dart';

class OrderDetailsHeaderWidget extends StatelessWidget {
  final OrderModel data;
  const OrderDetailsHeaderWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        GestureDetector(
          onTap: () => AutoRouter.of(context).maybePop(),
          child: _buildTransform(context),
        ),
        Gaps.hGap15,
        Text(
          Translate.of(context).order_no_colon,
          style: AppTextStyle.s18_w300(color: context.colors.simiGray),
        ),
        Gaps.hGap4,
        Text(
          data.code,
          style: AppTextStyle.s18_w600(color: context.colors.primary),
        ),
      ],
    );
  }


  Transform _buildTransform(BuildContext context) {
    String lang = context.select<DeviceCubit, String>((value) => value.state.model.locale.languageCode);
    return Transform.rotate(
      angle: (lang == ApplicationConstants.langAR || lang == ApplicationConstants.langUR) ? pi : 0,
      child: SvgPicture.asset(
        Res.arrowBack,
        colorFilter: ColorFilter.mode(context.colors.simiGray, BlendMode.srcIn),
        width: 24,
        height: 24,
      ),
    );
  }


}


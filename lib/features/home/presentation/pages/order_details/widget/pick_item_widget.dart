import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/base_bloc/base_bloc_builder.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/helpers/export.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/card_picked_ratio_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/card_item_pick_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/status_view_widget.dart';


class PickItemWidget extends StatefulWidget {
  final OrderDetailsController controller;
  final OrderDetailsModel orderDetails;
  const PickItemWidget({
    super.key,
    required this.controller,
    required this.orderDetails,
  });

  @override
  State<PickItemWidget> createState() => _PickItemWidgetState();
}

class _PickItemWidgetState extends State<PickItemWidget> {
  final BaseBloc<bool> loadingCubit = BaseBloc<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildColumn(context),
        BaseBlocBuilder(
          bloc: loadingCubit,
          onSuccessWidget: (data) => Gaps.empty,
          onLoadingWidget: (context) => ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                child: Container(
                  height: getHeight(),
                ),
              )
          ),
        ),
      ],
    );
  }

  Column _buildColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                widget.orderDetails.product!.category?.name ?? "",
                style: AppTextStyle.s18_w500(color: context.colors.simiGray),
              ),
            ),
            Visibility(
              visible: widget.orderDetails.product!.productStatus!.shouldShowDeleteIcon,
              child: GestureDetector(
                onTap: () => widget.controller
                    .showDeleteItemDialog(context, widget.orderDetails,loadingCubit),
                child: const Icon(
                  CupertinoIcons.trash,
                  color: CupertinoColors.systemRed,
                  size: 20,
                ),
              ),
            )
          ],
        ),
        Gaps.vGap12,
        CardPickedRatioWidget(
          pickedPercentage: widget.orderDetails.product!.productPickedPercent!,
          child: Stack(
            children: [
              CardItemPickWidget(
                controller: widget.controller,
                data: widget.orderDetails,
                loadingCubit: loadingCubit,
              ),
              Visibility(
                visible: widget
                    .orderDetails.product!.productStatus!.shouldShowStatus,
                replacement: _buildPositioned(context),
                child: PositionedDirectional(
                  end: 0,
                  child: GestureDetector(
                      child: StatusViewWidget(
                    status:
                        widget.orderDetails.product!.productStatus?.getName() ??
                            "",
                  )),
                ),
              ),
            ],
          ),
        ),
        Gaps.vGap20,
      ],
    );
  }

  // bool get _showStatus =>
  //    widget.orderDetails.product!.productStatus!.shouldShowStatus
  //   || (
  //      widget.controller.showStatusLabelInQntChangeCase(widget.orderDetails)
  //      && widget.controller.isProductFullPicked(widget.orderDetails)
  //    );


  Positioned _buildPositioned(BuildContext context) {
    final lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    return Positioned.directional(
      textDirection: lang == ApplicationConstants.langAR
          ? TextDirection.rtl
          : TextDirection.ltr,
      top: 18,
      end: 20,
      child: Visibility(
        visible: !widget.controller.isProductFullPicked(widget.orderDetails),
        child: GestureDetector(
          onTap: () =>
              widget.controller.onPressReplace(context, widget.orderDetails,loadingCubit),
          child: SvgPicture.asset(
            Res.repeatIcon,
            height: 22,
            width: 22,
          ),
        ),
      ),
    );
  }


  double getHeight(){
    if(widget.orderDetails.product!.isAdded){
      return 450.r;
    }
    if(widget.orderDetails.product!.productStatus?.shouldShowStatus == true){
      return 350.r;
    }else{
      return 300.r;
    }
  }

}

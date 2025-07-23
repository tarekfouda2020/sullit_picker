import 'package:flutter_tdd/core/requester/consumer/requester_consumer.dart';
import 'package:flutter_tdd/core/widgets/bottom_sheet_header_widget.dart';
import 'package:flutter_tdd/core/widgets/bottom_sheet_item_widget.dart';

import '../pages/subscription/widgets/subscription_widgets_imports.dart';


class SubscriptionPaySheetWidget extends StatelessWidget {
  final PayMethodsRequester requester;
  final void Function() onPressProcess;
  const SubscriptionPaySheetWidget({super.key, required this.requester, required this.onPressProcess,});

  @override
  Widget build(BuildContext context) {
    return RequesterConsumer(
      requester: requester,
      successBuilder: (context, data, isLoading) {
        return Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: context.colors.white,
              borderRadius: const BorderRadius.vertical(top: Radius.circular(30))
          ),
          child:Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BottomSheetHeaderWidget(title: Translate.of(context).select_pay_method,),
              Gaps.vGap20,
              SingleChildScrollView(
                child: Column(
                  spacing: 15,
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(data.length, (index) {
                    var item = data[index];
                    return BottomSheetItemWidget(
                        onSelect: ()=>selectPayMethod(data, item, context),
                        isSelected: item.isSelected!,
                        title: item.title,
                        image: item.image
                    );
                  },),
                ),
              ),
              Gaps.vGap15,
              if(isItemSelected(data))
              AppTextButton.maxPrimary(
                onPressed: onPressProcess,
                text: Translate.of(context).process_to_pay,
              )
            ],
          ) ,
        );
      },
      failureBuilder: (context, error, callback) => Gaps.empty,
      loadingBuilder: (context) => const Center(child: CircularProgressIndicator(),),
    );
  }


  bool isItemSelected(List<PaymentMethodModel> data){
    return data.any((element) => element.isSelected!);
  }

  void selectPayMethod(List<PaymentMethodModel> data,PaymentMethodModel model,BuildContext context){
    for(var item in data){
      item.isSelected = false;
    }
    model.isSelected = true;
    requester.refresh();
  }


}

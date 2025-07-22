import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/requester/consumer/requester_consumer.dart';
import 'package:flutter_tdd/core/widgets/CachedImage.dart';
import 'package:flutter_tdd/core/widgets/custom_radio_widget.dart';

import 'subscription_widgets_imports.dart';


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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Gaps.empty,
                  Text("Select Pay Method",
                  style: AppTextStyle.s18_w700(color: context.colors.black),),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      width: 25, height: 25,
                      decoration: BoxDecoration(
                          color: context.colors.disableGray,
                          shape: BoxShape.circle
                      ),
                      child: const Icon(CupertinoIcons.xmark,color: CupertinoColors.quaternaryLabel,size: 15,),
                    ),
                  )
                ],
              ),
              Gaps.vGap20,
              SingleChildScrollView(
                child: Column(
                  spacing: 15,
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(data.length, (index) {
                    var item = data[index];
                    return GestureDetector(
                      onTap: ()=> selectPayMethod(data,item, context),
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: item.isSelected!
                              ?context.colors.primary.withValues(alpha: 0.2)
                              :context.colors.white,
                          borderRadius: Dimens.borderRadius20PX,
                          border: Border.all(
                              color: item.isSelected!
                                  ?context.colors.primary
                                  :context.colors.gray58.withValues(alpha: 0.8)
                          )
                        ),
                        child: Row(
                          children: [
                            CachedImage(url: item.image,
                            width: 40, height: 40,
                              haveRadius: false,
                              boxShape: BoxShape.circle,
                              fit: BoxFit.contain,
                            ),
                            Gaps.hGap15,
                            Expanded(
                              child: Text(item.title,
                              style: AppTextStyle.s15_w500(color: context.colors.black),
                              ),
                            ),
                            CustomRadioWidget(selected: item.isSelected!,)
                          ],
                        ),
                      ),
                    );
                  },),
                ),
              ),
              Gaps.vGap15,
              if(isItemSelected(data))
              AppTextButton.maxPrimary(
                onPressed: onPressProcess,
                text: "Process to pay",
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

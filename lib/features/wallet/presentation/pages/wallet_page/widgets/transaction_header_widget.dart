import 'wallet_widgets_imports.dart';

class TransactionHeaderWidget extends StatelessWidget {
  final WalletController controller;
  const TransactionHeaderWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer(
        observable: controller.differenceInDaysObs,
        builder: (context,value) {
          return Row(
            children: [
              Expanded(
                child: Text(
                  Translate.of(context).transactions,
                  style: AppTextStyle.s20_w700(color: context.colors.textPrimary),
                ),
              ),
              GestureDetector(
                // onTap: ()=> controller.showTransactionsPeriodSheet(context),
                onTap: ()=> controller.showDateRangeBottomSheet(context),
                child: Row(
                  children: [
                    Text(
                      value==0
                          ?"Select Date"
                          :"$value ${_daysText(value)}",
                      style: AppTextStyle.s14_w400(color: context.colors.gray3),
                    ),
                    Gaps.hGap6,
                    SvgPicture.asset(Res.invertedTriangle),
                  ],
                ),
              ),

            ],
          );
        }
    );
  }


  String _daysText(int days){
    if(days<=10 && days>1){
      return "days";
    }else{
      return "day";
    }
  }


}

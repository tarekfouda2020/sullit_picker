import '../wallet_imports.dart';

class WalletFilterWidget extends StatelessWidget {
  final WalletController controller;
  const WalletFilterWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius30PX,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        children: [
          SvgPicture.asset(Res.filterIcon, height: 20),
          Gaps.hGap16,
          Expanded(
            child: Text(
              Translate.of(context).filter_by_working_store,
              style: AppTextStyle.s14_w400(color: context.colors.primary),
            ),
          ),
          SvgPicture.asset(Res.invertedTriangle, height: 9,width: 11,),
        ],
      ),
    );
  }
} 
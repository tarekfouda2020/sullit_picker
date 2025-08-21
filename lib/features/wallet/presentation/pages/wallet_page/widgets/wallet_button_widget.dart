
import '../wallet_imports.dart';

class WalletButtonWidget extends StatelessWidget {
  final WalletController controller;
  const WalletButtonWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    bool isFreelancer = context.read<UserCubit>().state.model!.isFreelancer;
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Visibility(
        visible: isFreelancer,
        child: AppTextButton.maxPrimary(
          text: '+ Charge Wallet Balance',

          onPressed: ()=> controller.rechargeWalletSheet(context),
        ),
      ),
    );
  }
}

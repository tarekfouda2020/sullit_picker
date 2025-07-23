import 'subscription_widgets_imports.dart';

class SubscriptionHeaderWidget extends StatelessWidget {
  const SubscriptionHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            context.colors.primary,
            context.colors.primary.withValues(alpha: 0.8),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      child: Column(
        children: [
          // Subscription icon
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: context.colors.white.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(20),
            ),
            child:  Icon(
              Icons.card_membership,
              size: 40,
              color: context.colors.white,
            ),
          ),
          
          Gaps.vGap16,
          
          // Title
          Text(
            Translate.of(context).my_subscription,
            style: AppTextStyle.s24_w700(color: context.colors.white),
            textAlign: TextAlign.center,
          ),
          
          Gaps.vGap8,
          
          // Subtitle
          Text(
            Translate.of(context).manage_subscription_plan,
            style: AppTextStyle.s14_w400(color: context.colors.white.withValues(alpha: 0.9)),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
} 
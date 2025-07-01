import 'package:flutter_tdd/core/helpers/app_snack_bar_service.dart';

import 'subscription_imports.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'widgets/subscription_widgets_imports.dart';

@RoutePage()
class SubscriptionPage extends StatefulWidget {
  const SubscriptionPage({super.key});

  @override
  State<SubscriptionPage> createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends State<SubscriptionPage> {
  final controller = SubscriptionController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Custom App Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => AutoRouter.of(context).pop(),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        color: context.colors.black,
                        size: 24,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      Translate.of(context).my_subscription,
                      style: AppTextStyle.s18_w700(color: context.colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(width: 40), // Balance the back button
                ],
              ),
            ),
            
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gaps.vGap24,
                    
                    // Header Section
                    const SubscriptionHeaderWidget(),
                    
                    Gaps.vGap32,
                    
                                         // Subscription Plans
                     ObsValueConsumer(
                       observable: controller.selectedPlan,
                       builder: (context, selectedPlan) => Column(
                         children: [
                           SubscriptionPlanWidget(
                             title: 'Monthly Plan',
                             price: '50.00',
                             period: 'AED/Month',
                             isPopular: false,
                             isSelected: selectedPlan == 'monthly',
                             onTap: () => controller.selectPlan('monthly'),
                           ),
                           
                           Gaps.vGap16,
                           
                           SubscriptionPlanWidget(
                             title: 'Yearly Plan',
                             price: '500.00',
                             period: 'AED/Year',
                             isPopular: true,
                             isSelected: selectedPlan == 'yearly',
                             discount: 'Save 17%',
                             onTap: () => controller.selectPlan('yearly'),
                           ),
                         ],
                       ),
                     ),
                    
                    Gaps.vGap32,
                    
                    // Features Section
                    Text(
                      'What you get:',
                      style: AppTextStyle.s18_w700(color: context.colors.black),
                    ),
                    
                    Gaps.vGap16,
                    
                                         const SubscriptionFeatureItemWidget(
                       icon: Icons.delivery_dining,
                       title: 'Unlimited Deliveries',
                       description: 'Accept unlimited delivery orders',
                     ),
                     
                     Gaps.vGap12,
                     
                     const SubscriptionFeatureItemWidget(
                       icon: Icons.priority_high,
                       title: 'Priority Support',
                       description: '24/7 customer support',
                     ),
                     
                     Gaps.vGap12,
                     
                     const SubscriptionFeatureItemWidget(
                       icon: Icons.analytics,
                       title: 'Detailed Analytics',
                       description: 'Track your earnings and performance',
                     ),
                     
                     Gaps.vGap12,
                     
                     const SubscriptionFeatureItemWidget(
                       icon: Icons.star,
                       title: 'Premium Features',
                       description: 'Access to exclusive driver features',
                     ),
                    
                    Gaps.vGap32,
                    
                                         // Terms and Conditions
                     ObsValueConsumer(
                       observable: controller.acceptTerms,
                       builder: (context, accepted) => SubscriptionTermsWidget(
                         isAccepted: accepted,
                         onToggle: controller.toggleTermsAcceptance,
                       ),
                     ),
                    
                    Gaps.vGap32,
                    
                    // Payment Button
                    ObsValueConsumer(
                      observable: controller.isLoading,
                      builder: (context, loading) => SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: loading || !controller.acceptTerms.getValue() 
                              ? null 
                              : () => controller.paySubscription(context),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: context.colors.primary,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 0,
                          ),
                          child: loading
                              ? const SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                                  ),
                                )
                              : Text(
                                  'Subscribe Now',
                                  style: AppTextStyle.s16_w700(color: Colors.white),
                                ),
                        ),
                      ),
                    ),
                    Gaps.vGap16,
                    
                    // Cancel anytime text
                    Center(
                      child: Text(
                        'Cancel anytime • No hidden fees',
                        style: AppTextStyle.s12_w400(color: Colors.grey[500]!),
                      ),
                    ),
                    
                    Gaps.vGap24,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
} 
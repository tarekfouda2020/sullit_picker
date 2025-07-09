import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';

class WalletTransactionsWidget extends StatelessWidget {
  const WalletTransactionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final transactions = [
      {
        'title': 'Order #ORD-12345',
        'subtitle': 'Delivery completed',
        'amount': '+85.50',
        'date': 'Today, 2:30 PM',
        'type': 'income',
        'icon': Icons.delivery_dining,
      },
      {
        'title': 'Order #ORD-12344',
        'subtitle': 'Delivery completed',
        'amount': '+120.25',
        'date': 'Today, 11:15 AM',
        'type': 'income',
        'icon': Icons.delivery_dining,
      },
      {
        'title': 'Weekly Bonus',
        'subtitle': 'Performance bonus',
        'amount': '+50.00',
        'date': 'Yesterday',
        'type': 'bonus',
        'icon': Icons.star,
      },
      {
        'title': 'Fuel Allowance',
        'subtitle': 'Monthly fuel support',
        'amount': '+200.00',
        'date': '2 days ago',
        'type': 'allowance',
        'icon': Icons.local_gas_station,
      },
      {
        'title': 'Withdrawal',
        'subtitle': 'Bank transfer',
        'amount': '-500.00',
        'date': '3 days ago',
        'type': 'withdrawal',
        'icon': Icons.account_balance,
      },
    ];

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Quick Actions
          Row(
            children: [
              Expanded(
                child: _buildQuickAction(
                  context,
                  icon: Icons.add,
                  title: 'Add Money',
                  color: Colors.green,
                  onTap: () {},
                ),
              ),
              
              Gaps.hGap12,
              
              Expanded(
                child: _buildQuickAction(
                  context,
                  icon: Icons.remove,
                  title: 'Withdraw',
                  color: Colors.orange,
                  onTap: () {},
                ),
              ),
              
              Gaps.hGap12,
              
              Expanded(
                child: _buildQuickAction(
                  context,
                  icon: Icons.history,
                  title: 'History',
                  color: Colors.blue,
                  onTap: () {},
                ),
              ),
            ],
          ),
          
          Gaps.vGap24,
          
          // Transactions Header
          Text(
            'Recent Transactions',
            style: AppTextStyle.s18_w600(color: context.colors.textPrimary),
          ),
          
          Gaps.vGap16,
          
          // Transactions List
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: transactions.length,
            separatorBuilder: (context, index) => Gaps.vGap12,
            itemBuilder: (context, index) {
              final transaction = transactions[index];
              return _buildTransactionItem(context, transaction);
            },
          ),
        ],
      ),
    );
  }
  
  Widget _buildQuickAction(
    BuildContext context, {
    required IconData icon,
    required String title,
    required Color color,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: color.withValues(alpha: 0.3)),
        ),
        child: Column(
          children: [
            Icon(icon, color: color, size: 24),
            Gaps.vGap8,
            Text(
              title,
              style: AppTextStyle.s12_w600(color: color),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
  
  Widget _buildTransactionItem(BuildContext context, Map<String, dynamic> transaction) {
    final isIncome = transaction['type'] == 'income' || 
                    transaction['type'] == 'bonus' || 
                    transaction['type'] == 'allowance';
    
    Color amountColor = isIncome ? Colors.green : Colors.red;
    
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          // Icon
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: amountColor.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              transaction['icon'] as IconData,
              color: amountColor,
              size: 24,
            ),
          ),
          
          Gaps.hGap12,
          
          // Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transaction['title'],
                  style: AppTextStyle.s16_w600(color: context.colors.textPrimary),
                ),
                
                Gaps.vGap4,
                
                Text(
                  transaction['subtitle'],
                  style: AppTextStyle.s14_w400(color: context.colors.textSecondary),
                ),
                
                Gaps.vGap4,
                
                Text(
                  transaction['date'],
                  style: AppTextStyle.s12_w400(color: context.colors.textTertiary),
                ),
              ],
            ),
          ),
          
          // Amount
          Text(
            '${transaction['amount']} SAR',
            style: AppTextStyle.s16_w700(color: amountColor),
          ),
        ],
      ),
    );
  }
} 
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';

class OrdersListWidget extends StatelessWidget {
  const OrdersListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final orders = [
      {
        'id': '#ORD-12345',
        'restaurant': 'Al Baik Restaurant',
        'customer': 'Ahmed Mohammed',
        'amount': '85.50',
        'date': 'Today, 2:30 PM',
        'status': 'completed',
        'distance': '2.5 km',
      },
      {
        'id': '#ORD-12344',
        'restaurant': 'McDonald\'s',
        'customer': 'Sara Ali',
        'amount': '120.25',
        'date': 'Today, 11:15 AM',
        'status': 'completed',
        'distance': '3.2 km',
      },
      {
        'id': '#ORD-12343',
        'restaurant': 'KFC',
        'customer': 'Omar Hassan',
        'amount': '95.75',
        'date': 'Yesterday, 8:45 PM',
        'status': 'completed',
        'distance': '1.8 km',
      },
      {
        'id': '#ORD-12342',
        'restaurant': 'Subway',
        'customer': 'Fatima Ahmed',
        'amount': '65.00',
        'date': 'Yesterday, 6:20 PM',
        'status': 'completed',
        'distance': '4.1 km',
      },
    ];

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Filter Row
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    color: context.colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey.withValues(alpha: 0.3)),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.filter_list, color: context.colors.textSecondary, size: 20),
                      Gaps.hGap8,
                      Text(
                        'All Orders',
                        style: AppTextStyle.s14_w500(color: context.colors.textSecondary),
                      ),
                      const Spacer(),
                      Icon(Icons.keyboard_arrow_down, color: context.colors.textSecondary, size: 20),
                    ],
                  ),
                ),
              ),
              
              Gaps.hGap12,
              
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: context.colors.primary,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(Icons.search, color: Colors.white, size: 20),
              ),
            ],
          ),
          
          Gaps.vGap20,
          
          // Orders List
          Text(
            'Recent Orders',
            style: AppTextStyle.s18_w600(color: context.colors.textPrimary),
          ),
          
          Gaps.vGap16,
          
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: orders.length,
            separatorBuilder: (context, index) => Gaps.vGap12,
            itemBuilder: (context, index) {
              final order = orders[index];
              return _buildOrderItem(context, order);
            },
          ),
        ],
      ),
    );
  }
  
  Widget _buildOrderItem(BuildContext context, Map<String, dynamic> order) {
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                order['id'],
                style: AppTextStyle.s16_w700(color: context.colors.textPrimary),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.green.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'Completed',
                  style: AppTextStyle.s12_w600(color: Colors.green),
                ),
              ),
            ],
          ),
          
          Gaps.vGap8,
          
          // Restaurant & Customer
          Row(
            children: [
              Icon(Icons.store, color: context.colors.textSecondary, size: 16),
              Gaps.hGap6,
              Text(
                order['restaurant'],
                style: AppTextStyle.s14_w500(color: context.colors.textSecondary),
              ),
            ],
          ),
          
          Gaps.vGap4,
          
          Row(
            children: [
              Icon(Icons.person, color: context.colors.textSecondary, size: 16),
              Gaps.hGap6,
              Text(
                order['customer'],
                style: AppTextStyle.s14_w400(color: context.colors.textSecondary),
              ),
            ],
          ),
          
          Gaps.vGap12,
          
          // Bottom Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${order['amount']} SAR',
                    style: AppTextStyle.s16_w700(color: context.colors.primary),
                  ),
                  Gaps.vGap2,
                  Text(
                    order['distance'],
                    style: AppTextStyle.s12_w400(color: context.colors.textTertiary),
                  ),
                ],
              ),
              Text(
                order['date'],
                style: AppTextStyle.s12_w400(color: context.colors.textTertiary),
              ),
            ],
          ),
        ],
      ),
    );
  }
} 
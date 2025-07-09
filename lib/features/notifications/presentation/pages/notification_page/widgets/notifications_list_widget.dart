import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';

class NotificationsListWidget extends StatelessWidget {
  const NotificationsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final notifications = [
      {
        'title': 'New Order Available',
        'message': 'You have a new delivery order from Al Baik Restaurant',
        'time': '2 minutes ago',
        'isRead': false,
        'icon': Icons.delivery_dining,
        'color': Colors.blue,
      },
      {
        'title': 'Order Completed',
        'message': 'You successfully completed order #ORD-12345',
        'time': '1 hour ago',
        'isRead': true,
        'icon': Icons.check_circle,
        'color': Colors.green,
      },
      {
        'title': 'Payment Received',
        'message': 'Payment of 85.50 SAR has been credited to your account',
        'time': '2 hours ago',
        'isRead': true,
        'icon': Icons.payment,
        'color': Colors.orange,
      },
      {
        'title': 'Weekly Summary',
        'message': 'Your weekly earnings report is ready to view',
        'time': '1 day ago',
        'isRead': true,
        'icon': Icons.analytics,
        'color': Colors.purple,
      },
      {
        'title': 'System Update',
        'message': 'App has been updated to version 2.1.0 with new features',
        'time': '2 days ago',
        'isRead': true,
        'icon': Icons.system_update,
        'color': Colors.teal,
      },
    ];

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header with mark all as read
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recent Notifications',
                style: AppTextStyle.s18_w600(color: context.colors.textPrimary),
              ),
              TextButton(
                onPressed: () {
                  // Mark all as read
                },
                child: Text(
                  'Mark all as read',
                  style: AppTextStyle.s14_w500(color: context.colors.primary),
                ),
              ),
            ],
          ),
          
          Gaps.vGap16,
          
          // Notifications list
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: notifications.length,
            separatorBuilder: (context, index) => Gaps.vGap12,
            itemBuilder: (context, index) {
              final notification = notifications[index];
              return _buildNotificationItem(context, notification);
            },
          ),
        ],
      ),
    );
  }
  
  Widget _buildNotificationItem(BuildContext context, Map<String, dynamic> notification) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: notification['isRead'] 
            ? context.colors.white 
            : context.colors.primary.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: notification['isRead'] 
              ? Colors.grey.withValues(alpha: 0.2)
              : context.colors.primary.withValues(alpha: 0.3),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Icon
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: (notification['color'] as Color).withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              notification['icon'] as IconData,
              color: notification['color'] as Color,
              size: 24,
            ),
          ),
          
          Gaps.hGap12,
          
          // Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        notification['title'],
                        style: AppTextStyle.s16_w600(color: context.colors.textPrimary),
                      ),
                    ),
                    if (!notification['isRead'])
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: context.colors.primary,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                  ],
                ),
                
                Gaps.vGap4,
                
                Text(
                  notification['message'],
                  style: AppTextStyle.s14_w400(color: context.colors.textSecondary),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                
                Gaps.vGap8,
                
                Text(
                  notification['time'],
                  style: AppTextStyle.s12_w400(color: context.colors.textTertiary),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
} 
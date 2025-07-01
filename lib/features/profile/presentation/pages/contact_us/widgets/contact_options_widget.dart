import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/core/constants/input_field_style/custom_input_decoration.dart';

class ContactOptionsWidget extends StatefulWidget {
  const ContactOptionsWidget({super.key});

  @override
  State<ContactOptionsWidget> createState() => _ContactOptionsWidgetState();
}

class _ContactOptionsWidgetState extends State<ContactOptionsWidget> {
  final TextEditingController messageController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  void dispose() {
    messageController.dispose();
    nameController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Quick Contact Options
          Text(
            'Quick Contact',
            style: AppTextStyle.s18_w600(color: context.colors.textPrimary),
          ),
          
          Gaps.vGap16,
          
          Row(
            children: [
              Expanded(
                child: _buildContactOption(
                  context,
                  icon: Icons.phone,
                  title: 'Call Us',
                  subtitle: '+966 50 123 4567',
                  color: Colors.green,
                  onTap: () {},
                ),
              ),
              
              Gaps.hGap12,
              
              Expanded(
                child: _buildContactOption(
                  context,
                  icon: Icons.chat,
                  title: 'WhatsApp',
                  subtitle: 'Chat with us',
                  color: Colors.green.shade600,
                  onTap: () {},
                ),
              ),
            ],
          ),
          
          Gaps.vGap12,
          
          Row(
            children: [
              Expanded(
                child: _buildContactOption(
                  context,
                  icon: Icons.email,
                  title: 'Email',
                  subtitle: 'support@suliit.com',
                  color: Colors.blue,
                  onTap: () {},
                ),
              ),
              
              Gaps.hGap12,
              
              Expanded(
                child: _buildContactOption(
                  context,
                  icon: Icons.location_on,
                  title: 'Visit Us',
                  subtitle: 'Our Office',
                  color: Colors.red,
                  onTap: () {},
                ),
              ),
            ],
          ),
          
          Gaps.vGap32,
          
          // Contact Form
          Text(
            'Send us a Message',
            style: AppTextStyle.s18_w600(color: context.colors.textPrimary),
          ),
          
          Gaps.vGap16,
          
          GenericTextField(
            controller: nameController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.name,
            action: TextInputAction.next,
            fillColor: context.colors.white,
            hint: 'Your Name',
            margin: EdgeInsets.zero,
            contentPadding: const EdgeInsets.all(16),
            validate: (value) => value?.isEmpty == true ? 'Name is required' : null,
          ),
          
          Gaps.vGap16,
          
          GenericTextField(
            controller: emailController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.emailAddress,
            action: TextInputAction.next,
            fillColor: context.colors.white,
            hint: 'Your Email',
            margin: EdgeInsets.zero,
            contentPadding: const EdgeInsets.all(16),
            validate: (value) => value?.isEmpty == true ? 'Email is required' : null,
          ),
          
          Gaps.vGap16,
          
          GenericTextField(
            controller: messageController,
            fieldTypes: FieldTypes.rich,
            type: TextInputType.multiline,
            action: TextInputAction.done,
            fillColor: context.colors.white,
            hint: 'Your Message',
            margin: EdgeInsets.zero,
            contentPadding: const EdgeInsets.all(16),
            max: 5,
            validate: (value) => value?.isEmpty == true ? 'Message is required' : null,
          ),
          
          Gaps.vGap24,
          
          // Send Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // Send message logic
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: context.colors.primary,
                padding: const EdgeInsets.all(16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                'Send Message',
                style: AppTextStyle.s16_w600(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
  
  Widget _buildContactOption(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: color.withValues(alpha: 0.3)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, color: color, size: 24),
            ),
            
            Gaps.vGap8,
            
            Text(
              title,
              style: AppTextStyle.s14_w600(color: context.colors.textPrimary),
              textAlign: TextAlign.center,
            ),
            
            Gaps.vGap4,
            
            Text(
              subtitle,
              style: AppTextStyle.s12_w400(color: context.colors.textSecondary),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
} 
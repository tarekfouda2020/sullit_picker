import 'notification_page_imports.dart';

@RoutePage(name: "NotificationsPageRoute")
class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  final NotificationPageController controller = NotificationPageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: DefaultAppBar(
        title: "Notifications",
        bgColor: context.colors.background,
      ),
      body: ListView.builder(
        padding: Dimens.paddingH20Px,
        itemCount: 4,
        itemBuilder: (context, index) => const NotificationCardWidget(),
      ),
    );
  }
}
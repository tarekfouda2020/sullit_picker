import 'package:flutter_tdd/core/widgets/shimmers/base_shimmer_widget.dart';
import 'package:flutter_tdd/features/notifications/data/models/notification_model/notification_model.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

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
        title: Translate.of(context).notifications,
        bgColor: context.colors.background,
      ),
      body: RefreshIndicator(
        onRefresh: () async{},
        backgroundColor: context.colors.white,
        child: PagedListView<int, NotificationModel>(
          padding: Dimens.paddingH20V12PX,
          pagingController: controller.notifyPagingController,
          builderDelegate: PagedChildBuilderDelegate<NotificationModel>(
            itemBuilder: (context, notify, index) =>  NotificationCardWidget(model:notify),
            firstPageProgressIndicatorBuilder: (context) {
              return SingleChildScrollView(
                child: Column(
                  spacing: 15,
                  children: List.generate(4, (index) {
                    return BaseShimmerWidget(
                        child: Container(
                          height: 80,
                          decoration:  BoxDecoration(
                              borderRadius: Dimens.borderRadius30PX,
                              color:  context.colors.white
                          ),
                        )
                    );
                  },),
                ),
              );
            },
            newPageProgressIndicatorBuilder: (context) => Center(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: SizedBox(
                  width: 25, height: 25,
                  child: CircularProgressIndicator.adaptive(
                    backgroundColor: context.colors.primary,
                    strokeWidth: 3,
                    valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                ),
              ),
            ),
            firstPageErrorIndicatorBuilder: (context) => Gaps.empty,
            newPageErrorIndicatorBuilder: (context) => Gaps.empty,
            noItemsFoundIndicatorBuilder: (context) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(Translate.of(context).no_notifications_yet,
                  style: AppTextStyle.s20_w500(color: context.colors.black),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
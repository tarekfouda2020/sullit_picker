import 'home_widgets_imports.dart';

class NoOrdersWidget extends StatelessWidget {
  final HomeController controller;
  const NoOrdersWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.paddingH20Px,
      child: RefreshIndicator(
        backgroundColor: context.colors.white,
        onRefresh: () async => controller.getCurrentOrder(fromRemote: true,setLoading: false),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height - kToolbarHeight,
            ),
            child: IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  HomeHeaderWidget(controller: controller),
                  Gaps.vGap14,
                  CustomSearchBar(controller: controller),
                  Expanded(
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            Res.noOrdersAvailable,
                            width: 123,
                            height: 152,
                          ),
                          Text(
                            Translate.of(context).you_have_no_orders_now,
                            style: AppTextStyle.s16_w400(color: context.colors.primary),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

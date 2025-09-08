
import 'profile_page_widgets_imports.dart';

class DriverStoresListWidget extends StatelessWidget {
  final List<StoreModel> stores;
  final ProfilePageController controller;
   const DriverStoresListWidget({super.key, required this.stores, required this.controller});

  @override
  Widget build(BuildContext context) {
    return stores.isNotEmpty
        ?Row(
      children: [
        Text(
          Translate.of(context).work_for,
          style: const AppTextStyle.s12_w400(color: Color(0xff2E353A)),
        ),
        Gaps.hGap7,
        if (stores.length > 3)
          ...List.generate(
            stores.take(3).length,
                (index) {
              return Expanded(
                child: Text(
                  stores[index].name,
                  style: AppTextStyle.s14_w700(color: context.colors.primary),
                  overflow: TextOverflow.ellipsis,
                ),
              );
            },
          )else
          ...List.generate(
            stores.length,
                (index) {
              return Expanded(
                child: Text(
                  stores[index].name,
                  style: AppTextStyle.s14_w700(color: context.colors.primary),
                  overflow: TextOverflow.ellipsis,
                ),
              );
            },
          ),
        GestureDetector(
          onTap: ()=> AutoRouter.of(context).push(const StoresPageRoute()),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("See All stores",
                style: AppTextStyle.s15_w500(color: context.colors.primary),
              ),
              Icon(
                Icons.arrow_forward_ios_outlined,
                size: 10, color: context.colors.primary,
              ),
              Gaps.hGap16
            ],
          ),
        )


      ],
    )
        :Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("No Stores you work for ",
          style: AppTextStyle.s14_w700(color: context.colors.primary),
        ),
      ],
    );
  }
}

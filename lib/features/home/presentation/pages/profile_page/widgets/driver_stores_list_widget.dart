import 'package:flutter_tdd/features/orders/data/models/store_model/store_model.dart';

import 'profile_page_widgets_imports.dart';

class DriverStoresListWidget extends StatelessWidget {
  final List<StoreModel> stores;
  final ProfilePageController controller;
   DriverStoresListWidget({super.key, required this.stores, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer(
      observable: controller.showAllStores,
      builder: (context,value) {
        return Row(
              children: [
        Text(
          Translate.of(context).work_for,
          style: const AppTextStyle.s12_w400(color: Color(0xff2E353A)),
        ),
        Gaps.hGap7,
        if (fakeStores.length > 3)
          ...List.generate(
            fakeStores.take(3).length,
            (index) {
              return Expanded(
                child: Text(
                  "Ali’s Store",
                  style: AppTextStyle.s14_w700(color: context.colors.primary),
                ),
              );
            },
          )

              ],
            );
      }
    );
  }

  final fakeStores = [
    "Suliit store",
    "Suliit store",
    "Suliit store",
    "Suliit store",
    "Suliit store",
  ];
}

import 'package:flutter_tdd/features/home/presentation/pages/profile_page/widgets/driver_stores_list_widget.dart';

import 'profile_page_widgets_imports.dart';

class DriverStoresWidget extends StatelessWidget {
  final ProfilePageController controller;
  const DriverStoresWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    var stores = context.read<UserCubit>().state.model!.stores;
    if(stores!=null){
      return DriverStoresListWidget(stores: stores, controller: controller);
    }else{
   return  Row(
     mainAxisAlignment: MainAxisAlignment.center,
     children: [
       Text("No Stores you work for ",
         style: AppTextStyle.s14_w700(color: context.colors.primary),
       ),
     ],
   );
    }

  }
}

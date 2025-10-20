

import 'package:flutter_tdd/core/bloc/base_bloc/base_bloc_builder.dart';
import 'package:flutter_tdd/core/helpers/hive_helper.dart';
import 'package:flutter_tdd/features/home/domain/models/local_product/local_product.dart';
import 'package:flutter_tdd/features/home/presentation/pages/local_data/local_data_controller.dart';

import '../../../../../core/helpers/export.dart';


class LocalData extends StatefulWidget {
  const LocalData({super.key});

  @override
  State<LocalData> createState() => _LocalDataState();
}

class _LocalDataState extends State<LocalData> {

  final LocalDataController controller = LocalDataController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: const DefaultAppBar(title: "Local Data"),
      body: BaseBlocBuilder(
        bloc: controller.localDataCubit,
        onSuccessWidget: (data) {
        return ListView(
          children: [
            ...List.generate(data.assigned.length, (index) {
              var item = data.assigned[index];
              return _buildContainer(context, item);
            },),
            Gaps.vGap20,
            Text("New",
              style: AppTextStyle.s18_w500(color: context.colors.green),
            ),
            Gaps.vGap20,
            ...List.generate(data.newOrders.length, (index) {
              var item = data.newOrders[index];
              return _buildContainer(context, item);
            },),
          ],
        );
      },),
    );
  }

  Container _buildContainer(BuildContext context, LocalProduct data) {
    return Container(
           padding: const EdgeInsets.all(10),
           decoration: BoxDecoration(
             color: context.colors.white,
           ),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text(data.progress.toStringAsFixed(2),
                 style: AppTextStyle.s15_w500(color: context.colors.black),
               ),
               Row(
                 children: [
                   Expanded(
                       child: AppTextButton.maxCustom(
                     text: "Pick",
                     onPressed: () => controller.editQty(data),
                   )),
                   Gaps.hGap15,
                   Container(
                     padding: const EdgeInsets.all(10),
                     decoration: BoxDecoration(
                         color: context.colors.primary,
                         borderRadius: BorderRadius.circular(10)
                     ),
                     child: Text(data.qty.toString(),
                       style: AppTextStyle.s18_w500(color: context.colors.white),
                     ),
                   )
                 ],
               )
             ],
           ),
         );
  }
}

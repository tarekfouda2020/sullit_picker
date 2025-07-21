import 'package:flutter_tdd/core/requester/consumer/requester_consumer.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/login_register/widgets/views/regeister/widgets/work_type_widget.dart';
import '../register_imports.dart';
import 'work_type_shimmer_widget.dart';

class SelectWorkTypeWidget extends StatelessWidget {
  final RegisterController controller;
  const SelectWorkTypeWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return RequesterConsumer(
        requester: controller.loginRegisterCtr.workTypesRequester,
        successBuilder: (context, data, isLoading) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(
                data.length, (index) {
              return  WorkTypeWidget(
                  model:data[index],
                  controller: controller
              );
            }),
          );
        },
        failureBuilder: (context, error, callback) => const SizedBox.shrink(),
        loadingBuilder: (context) => const WorkTypeShimmerWidget(),
    );
  }
}

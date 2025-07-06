
import 'package:flutter_tdd/features/auth/presentation/pages/login_register/widgets/work_type_widget.dart';

import '../login_register_imports.dart';

class SelectWorkTypeWidget extends StatelessWidget {
  final LoginRegisterController controller;
  const SelectWorkTypeWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer(
        observable: controller.workTypeListObs,
        builder: (context, value) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(
                value.length, (index) {
              return  WorkTypeWidget(
                  model:value[index],
                  controller: controller
              );
            }),
          );
        },
    );
  }
}


import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/dialog_new_weight_widget.dart';

import 'dialog_action_widget.dart';
import 'widgets_imports.dart';

class WeightConfirmDialogWidget extends StatelessWidget {
  const WeightConfirmDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  DialogActionWidget(
      description: 'Is the weight equals 900 gm ?',
      buttonGreenTitle: 'Equals',
      buttonRedTitle: 'Less Than',
      greenOnTap: () {
        print('Equals');
      },
      redOnTap: () =>
          showDialog(
            context: context,
            builder: (context) =>
                const DialogNewWeightWidget(titleItem: 'Fresh Whole Chicken',imageItem: Res.chickenImage,cheekWeight: 'The new weight must not less than 750 gm',)
          ),
    );
  }
}


import 'dialog_action_widget.dart';
import 'dialog_pick_action_items_widget.dart';
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
                const DialogPickActionItemsWidget(dialogTitle: 'What is the New Weight ?', titleItem: 'Fresh Whole Chicken',haveImage: Res.chickenImage,haveTwoFields: true,)
          ),
    );
  }
}

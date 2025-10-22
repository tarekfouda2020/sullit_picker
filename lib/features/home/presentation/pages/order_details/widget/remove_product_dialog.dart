
import '../../../../../../core/helpers/export.dart';
import 'dialog_action_widget.dart';

class RemoveProductDialog extends StatelessWidget {
  const RemoveProductDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return DialogActionWidget(
      description:
      'User didn’t give access to replace the product , you can just remove it from order',
      buttonGreenTitle: 'Yes Remove',
      buttonRedTitle: 'Cancel',
      greenOnTap: () {
        Navigator.pop(context);
        Navigator.pop(context);
      },
      redOnTap: () {
        Navigator.pop(context);
        Navigator.pop(context);
      },
    );
  }
}

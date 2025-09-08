
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/auth/presentation/manager/user_cubit/user_cubit.dart';

import 'stores_page_imports.dart';


@RoutePage(name: "StoresPageRoute")
class StoresPage extends StatefulWidget {

  const StoresPage({super.key});

  @override
  State<StoresPage> createState() => _StoresPageState();
}

class _StoresPageState extends State<StoresPage> {
  final StoresPageController controller = StoresPageController();

  @override
  void initState() {
    super.initState();
    controller.initStorePaginate(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: "Work for stores"),
      body: WorkWithStoresWidget(
        controller: controller,
        stores: context.read<UserCubit>().state.model?.stores,
      ),
    );
  }
}

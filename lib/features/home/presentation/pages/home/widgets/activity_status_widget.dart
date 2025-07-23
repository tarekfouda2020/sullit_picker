import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/features/auth/presentation/manager/user_cubit/user_cubit.dart';

import 'home_widgets_imports.dart';

class ActivityStatusWidget extends StatelessWidget {
  const ActivityStatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var isActive = context.select<UserCubit,bool>((cubit) => cubit.state.model!.isAvailable);
    return   DriverStatusWidget(isActive: isActive);
  }
}

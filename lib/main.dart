import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/helpers/hive_helper.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/domain/models/local_orders/local_orders.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:timezone/data/latest.dart' as tz;

import 'core/helpers/di.dart';
import 'core/routes/router_imports.dart';
import 'my_app.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  tz.initializeTimeZones();
  await HiveHelper.instance.init();
  // await HiveHelper.instance.registerData<OrderModel>(OrderModelAdapter());
  // await HiveHelper.instance.registerData<OrdersList>(OrdersListAdapter());

  await HiveHelper.instance.openBox<String>(HiveBoxesNames.orderDetails);
  await HiveHelper.instance.openBox<String>(HiveBoxesNames.orders);
  await Firebase.initializeApp();
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  getIt.registerSingleton(SharedPreferences.getInstance());
  getIt.registerSingleton(AppRouter());
  await configureDependencies();
  // getIt<GlobalNotification>().setupNotification();

  runApp(
    BlocProvider(
      create: (BuildContext context) => DeviceCubit(),
      child:  Phoenix(child: const MyApp()),
    ),
  );
}


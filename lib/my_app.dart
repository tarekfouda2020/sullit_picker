import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/helpers/app_state_helper.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/orders_helper.dart';
import 'package:flutter_tdd/core/routes/router_imports.dart';
import 'package:flutter_tdd/core/theme/themes/app_dark_theme.dart';
import 'package:flutter_tdd/core/theme/themes/app_light_theme.dart';
import 'package:flutter_tdd/core/widgets/network_layer/network_layer_widget.dart';

import 'core/helpers/firebase_analytics_helper.dart';
import 'core/helpers/general_providers.dart';
import 'generated/l10n.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver{


  @override
  void initState() {
    getIt<FirebaseAnalyticsHelper>()
        .analytics
        .setConsent(adStorageConsentGranted: false, analyticsStorageConsentGranted: true);
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }


  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async{
    super.didChangeAppLifecycleState(state);
    AppStateHelper.instance.isAppOpened = state == AppLifecycleState.resumed;
    AppStateHelper.instance.appInBackGround =
        state == AppLifecycleState.hidden
        || state == AppLifecycleState.paused;
    print("state is $state ");
    if(AppStateHelper.instance.appInBackGround){
      // print("======>>>>>>>>>> inside check ");
      // getIt<OrdersHelper>().startSound();
      // print("======>>>>>>>>>> inside check 2 ");
    }else{
      await getIt<OrdersHelper>().stopSound();
      await Future.delayed(const Duration(milliseconds: 500),
      () => getIt<OrdersHelper>().initSound()
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: GeneralProviders.instance.providers(context),
      child: BlocBuilder<DeviceCubit, DeviceState>(
        builder: (context, state) {
          return AdaptiveTheme(
              light: AppLightTheme().theme,
              dark: AppDarkTheme().theme,
              initial: state.model.themeMode,
              builder: (theme, darkTheme) {
                return MaterialApp.router(
                  debugShowCheckedModeBanner: false,
                  title: "AMCOOP Picker",
                  darkTheme: darkTheme,
                  theme: theme,
                  supportedLocales: S.delegate.supportedLocales,
                  locale: state.model.locale,
                  // These delegates make sure that the localization data for the proper language is loaded
                  localizationsDelegates: const [
                    // 1
                    S.delegate,
                    // 2
                    DefaultCupertinoLocalizations.delegate,
                    // Built-in localization of basic text for Material widgets
                    GlobalMaterialLocalizations.delegate,
                    // Built-in localization for text direction LTR/RTL
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                  routerDelegate: getIt.get<AppRouter>().delegate(navigatorObservers: () {
                    return [
                      FirebaseAnalyticsObserver(
                          analytics: getIt<FirebaseAnalyticsHelper>().analytics)
                    ];
                  }),
                  routeInformationParser: getIt.get<AppRouter>().defaultRouteParser(),
                  builder: EasyLoading.init(builder: (ctx, child) {
                    ScreenUtil.init(ctx);
                    return MediaQuery(
                      data: _getMediaQueryData(ctx),
                      child: NetworkLayerWidget(
                        isNetworkConnected: state.model.isNetworkConnected,
                        child: child!,
                      ),
                    );
                  }),
                );
              });
        },
      ),
    );
  }


  MediaQueryData _getMediaQueryData(BuildContext context) {
    final mq = MediaQuery.of(context);
    return mq.copyWith(
      textScaler: const TextScaler.linear(1.0),
      boldText: false,
    );
  }
}

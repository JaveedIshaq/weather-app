import 'package:easy_localization/easy_localization.dart';
// import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:weatherapp/app/core/env/app_env.dart';
import 'package:weatherapp/app/core/extensions/log_extension.dart';
import 'package:weatherapp/app/core/injection/injection.dart';
import 'package:weatherapp/app/core/router/router.dart';
import 'package:weatherapp/app/core/util/observer_utils.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weatherapp/features/theme/cubit/theme_cubit.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  void initState() {
    ('FLAVOR: ${AppEnv.flavor}').log();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, Color>(
      bloc: getIt<ThemeCubit>(),
      builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          navigatorKey: StackedService.navigatorKey,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          title: 'Weather App',
          theme: ThemeData(
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            colorScheme: ColorScheme.fromSeed(seedColor: state),
            textTheme: GoogleFonts.rajdhaniTextTheme(),
          ),
          onGenerateRoute: generateRoute,
          initialRoute: Routes.splashScreen,
          navigatorObservers: [
            ObserverUtils.routeObserver,
          ],
          builder: EasyLoading.init(
            builder: FToastBuilder(),
          ),
        );
      },
    );
  }
}

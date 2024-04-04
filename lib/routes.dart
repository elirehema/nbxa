import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:nba/data/post_api_service.dart';
import 'package:flutter/material.dart';
import 'package:nba/screen/scr_ga.dart';
import 'package:nba/screen/scr_home.dart';
import 'package:nba/screen/screen_splash.dart';
import 'package:nba/utils/navigation_service.dart';
import 'package:nba/utils/theme_class.dart';
import 'package:provider/provider.dart';
import 'package:logging/logging.dart';
import 'package:easy_localization/easy_localization.dart';

class Routes {
  Routes() {
    _setupLogging();
    FlutterError.onError = (FlutterErrorDetails details) {
      FlutterError.dumpErrorToConsole(details);
      if (kReleaseMode) exit(1);
    };
    runApp(
      EasyLocalization(
          supportedLocales: const [Locale('en'), Locale('sw')],
          path:
              'assets/translations', // <-- change the path of the translation files
          fallbackLocale: const Locale('en'),
          useOnlyLangCode: true,
          child: Phoenix(
            child: const MyApp(),
          )),
    );
  }
}

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    if (kDebugMode) {
      print('${rec.level.name}: ${rec.time} : ${rec.message}');
    }
  });
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  static void setLanguage(BuildContext context, Locale locale) {
    context.setLocale(locale);
    Phoenix.rebirth(context);
  }

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.system;
  final routes = <String, WidgetBuilder>{
    '/home': (context) =>  HomeScreen(0),
  };

  void changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Provider(
        create: (_) => PostApiService.create(),
        dispose: (_, PostApiService service) => service.client.dispose(),
        child: MaterialApp(
          navigatorKey: NavigationService.instance.navigationKey,
          theme: ThemeClass.lightTheme,
          darkTheme: ThemeClass.darkTheme,
          themeMode: _themeMode,
          debugShowCheckedModeBanner: false,
          routes: routes,
          title: 'Airtel',
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          home: const SplashScreen(),
        ));
  }
}

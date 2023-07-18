import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labor_application/bloc_observer.dart';
import 'package:labor_application/presentation/screens/splash/splash_screen.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

import 'firebase_options.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  // setUpLocator();
  await EasyLocalization.ensureInitialized();
  // CacheHelper.init();
  Bloc.observer = AppBlocObserver();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,);
  runApp(EasyLocalization(
      startLocale: Locale('en', "US"),
      supportedLocales: [
        Locale('ar', "EG"),
        Locale('en', "US"),
      ],
      saveLocale: true,
      path: 'assets/translations',
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            locale: context.locale,
            builder: FlutterSmartDialog.init(),




            supportedLocales: context.supportedLocales,
            localizationsDelegates: context.localizationDelegates,
            debugShowCheckedModeBanner: false,
            title: 'labor',
            theme: ThemeData(
                fontFamily: 'Quicksand',
                textTheme:  const TextTheme(),
                appBarTheme: const AppBarTheme(
                  backgroundColor: Colors.white,
                  iconTheme: IconThemeData(color: Colors.black),
                  elevation: 0,
                  centerTitle: true,
                ),
                primarySwatch: Colors.green,
                bottomNavigationBarTheme: BottomNavigationBarThemeData(
                  selectedLabelStyle: TextStyle(
                      fontFamily: "Quicksand",
                      fontSize: 14.sp
                  ),
                  unselectedLabelStyle: TextStyle(
                      fontFamily: "Quicksand",
                      fontSize: 14.sp
                  ),
                )
            ),
            home: const SplashScreen(),
          );
        });

  }
}


import 'package:be_spoke/features/auth/controller/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/utils/packages.dart';

class BeSpoke extends StatelessWidget {
  const BeSpoke({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return  ScreenUtilInit(
        designSize: const Size(428, 926),
        minTextAdapt: true,
        splitScreenMode: false,
        rebuildFactor: (old, data) {
          return true;
        },
        builder: (context, child) {
          return  MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            initialRoute: '/',
            routes: {
              '/': (context) => const SplashScreen(),
              // '/details': (context) => DetailsScreen(),
            },

          );
        });
  }
}

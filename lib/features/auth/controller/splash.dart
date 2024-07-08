import 'dart:async';
import 'package:be_spoke/features/home/controller/home.dart';

import '../../../core/utils/packages.dart';
import '../view/splash.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenController createState() => SplashScreenController();
}

class SplashScreenController extends State<SplashScreen> {
  //... //Initialization code, state vars etc, all go here

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const Home()));
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => SplashScreenView(this);

  //Control logic grouped together, at top of file
}

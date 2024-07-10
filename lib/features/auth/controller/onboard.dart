import 'dart:async';
import 'package:flutter/cupertino.dart';
import '../../../core/data/model/model.dart';
import '../view/onboard.dart';
import 'login.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({Key? key}) : super(key: key);

  @override
  OnBoardController createState() => OnBoardController();
}

class OnBoardController extends State<OnBoard> {
  //... //Initialization code, state vars etc, all go here
  late PageController pageController;
  late Timer timer;
  int value = 0;

  @override
  void initState() {
    pageController = PageController();
    timer = Timer.periodic(const Duration(seconds: 4), (_) {
      // Check if the pageController has been initialized
      if (pageController.hasClients) {
        // Get the current page index
        int currentPage = pageController.page!.round();
        // Calculate the index of the next page
        int nextPage = (currentPage + 1) % details.length;
        // Animate to the next page
        pageController.animateToPage(
          nextPage,
          duration: const Duration(milliseconds: 300),
          curve: Curves.ease,
        );
      }
    });
    super.initState();
  }

  List<Onboard> details = [
    Onboard(
        description: 'With just a click, you can create how your meal plan.',
        title: 'Create your own bespoke menu whenever you want.',
        url: 'kit'),
    Onboard(
        description:
            'Select what ingredient goes into your meal while you cook.',
        title: 'Personalize your meal plan.',
        url: 'kit4'),
    Onboard(
        description: 'Your favorite chef is just a click away.',
        title: 'Choose your preferred chef to join you in making your meal.',
        url: 'kit2')
  ];

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => OnBoardView(this);

  onPageChange(int currentIndex) {
    setState(() {
      value = currentIndex;
    });
  }

  void goToRegister() {
    Navigator.pushReplacement(
      context,
      CupertinoPageRoute(builder: (context) => const Login()),
    );
  }

  void goToLogin() {
    Navigator.pushReplacement(
      context,
      CupertinoPageRoute(builder: (context) => const Login()),
    );
  }
}

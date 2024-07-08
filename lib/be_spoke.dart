import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BeSpoke extends StatelessWidget {
  const BeSpoke({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return const Placeholder();
  }
}

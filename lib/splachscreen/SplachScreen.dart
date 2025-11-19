import 'package:flutter/material.dart';
import 'package:project/splachscreen/widgets/custom_splach_screen.dart';

class SplachScreen extends StatelessWidget {
  const SplachScreen({super.key});
  static const String routeName = '/splach';

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SplashViewBody());
  }
}

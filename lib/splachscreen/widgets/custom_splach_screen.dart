import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project/OnBordingScreen/OnBordingScreen.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});
  static const String routeName = '/splash';

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {

  @override
  void initState() {
    super.initState();
    excutNavigation();
  }

  void excutNavigation() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, OnBordingScreen.routeName );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset('assets/image/plant.svg')
              ],
            ),

            SvgPicture.asset('assets/image/logo.svg'),

            SvgPicture.asset(
              'assets/image/shaps.svg',
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }
}

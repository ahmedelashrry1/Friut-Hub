import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});
  static const String routeName = '/splash';

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
              children: [SvgPicture.asset('assets/image/plant.svg')],
            ),
            SvgPicture.asset('assets/image/logo.svg'),
            SvgPicture.asset('assets/image/shaps.svg', fit: BoxFit.fill),
          ],
        ),
      ),
    );
  }
}

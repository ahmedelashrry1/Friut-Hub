import 'package:flutter/material.dart';
import 'package:project/OnBordingScreen/widgets/onbording_view_body.dart';

class OnBordingScreen extends StatelessWidget {
  const OnBordingScreen({super.key});
    static const String routeName = '/onboarding';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: OnboardingViewBody(
      )
           
      ),
    );
  }
}
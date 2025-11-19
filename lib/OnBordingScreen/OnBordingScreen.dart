import 'package:flutter/material.dart';

class OnBordingScreen extends StatelessWidget {
  const OnBordingScreen({super.key});
    static const String routeName = '/onboarding';


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('OnBording Screen'),
      ),
    );
  }
}
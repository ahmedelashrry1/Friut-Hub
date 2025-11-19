import 'package:flutter/material.dart';
import 'package:project/OnBordingScreen/OnBordingScreen.dart';
import 'package:project/SplachScreen/SplachScreen.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplachScreen.routeName:
      return MaterialPageRoute(builder: (_) => const SplachScreen());
    case OnBordingScreen.routeName:
      return MaterialPageRoute(builder: (_) => const OnBordingScreen());

    default:
      // اختياري: صفحة "غير موجود" أو رسالة خطأ
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          body: Center(child: Text('الصفحة غير موجودة: ${settings.name}')),
        ),
      );
    // أو ببساطة: return null;  (هيرجع شاشة بيضاء مع شريط أسود فوق)
  }
}

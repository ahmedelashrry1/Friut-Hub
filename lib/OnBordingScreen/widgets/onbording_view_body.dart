import 'package:flutter/material.dart';
import 'package:project/OnBordingScreen/widgets/custom_view_page_onbording.dart';

class OnBordingViewBody extends StatelessWidget {
  const OnBordingViewBody({super.key});
  static const String routeName = '/onboarding';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const ViewPageOnBording(
        image: 'assets/image/logo background1.svg',
        backgroundImage: 'assets/image/backgorund1.svg',
        title: Text('مرحبًا بك في FruitHUB'),
        subTitle:
            'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
      ),
    );
  }
}

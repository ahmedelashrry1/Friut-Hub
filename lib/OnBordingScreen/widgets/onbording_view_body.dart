import 'package:flutter/material.dart';
import 'package:project/OnBordingScreen/widgets/custom_view_page_onbording.dart';

class OnBordingViewBody extends StatelessWidget {
  const OnBordingViewBody({super.key});
  static const String routeName = '/onboarding';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          ViewPageOnBording(
            image: 'assets/image/logo background1.svg',
            backgroundImage: 'assets/image/backgorund1.svg',
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'مرحبًا بك في',
                        style: TextStyle(
                          color: Color(0xFF0C0D0D),
                          fontSize: 23,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: ' Fruit',
                        style: TextStyle(
                          color: Color(0xFF1B5E37),
                          fontSize: 23,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: 'HUB',
                        style: TextStyle(
                          color: Color(0xFFF4A91F),
                          fontSize: 23,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            subTitle:
                'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
            subTitleStyle: const TextStyle(
              color: Color(0xFF4E5556),
              fontSize: 14,
              fontWeight: FontWeight.w600,
              height: 1.7,
              fontFamily: 'Cairo',
            ),
          ),
          ViewPageOnBording(
            image: 'assets/image/logo background2.svg',
            backgroundImage: 'assets/image/backgorund2.svg',
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'ابحث وتسوق',
                        style: TextStyle(
                          color: Color(0xFF0C0D0D),
                          fontSize: 23,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            subTitle:
                'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
            subTitleStyle: const TextStyle(
              color: Color(0xFF4E5556),
              fontSize: 14,
              fontWeight: FontWeight.w600,
              height: 1.7,
              fontFamily: 'Cairo',
            ),
          ),
        ],
      ),
      
    );
  }
}

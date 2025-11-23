import 'package:flutter/material.dart';
import 'package:project/OnBordingScreen/widgets/custom_view_page_onbording.dart';
import 'package:project/widgets/custombuttom.dart';

class OnBordingViewBody extends StatefulWidget {
  const OnBordingViewBody({super.key});
  static const String routeName = '/onboarding';

  @override
  State<OnBordingViewBody> createState() => _OnBordingViewBodyState();
}

class _OnBordingViewBodyState extends State<OnBordingViewBody> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // الـ PageView
          PageView(
            controller: _pageController,
            children: const [
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
                subTitleStyle: TextStyle(
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
                subTitleStyle: TextStyle(
                  color: Color(0xFF4E5556),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  height: 1.7,
                  fontFamily: 'Cairo',
                ),
              ),
            ],
          ),
          // الزر يظهر فقط في الصفحة الثانية (index == 1)
          if (_currentPage == 1)
            Positioned(
              bottom: 40,
              left: 20,
              right: 20,
              child: CustomButom(
                onPressed: () {
                  // هنا الاكشن بتاع الزر (مثلاً انتقل للـ Login أو Home)
                  Navigator.pushReplacementNamed(
                    context,
                    '/login',
                  ); // أو أي route
                },
                text: 'ابدأ الآن', // أو النص اللي عايزه
              ),
            ),
        ],
      ),
    );
  }
}

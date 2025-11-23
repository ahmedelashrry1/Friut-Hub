// lib/features/onboarding/presentation/views/onboarding_view_body.dart

import 'package:flutter/material.dart';
import 'package:project/OnBordingScreen/widgets/custom_view_page_onbording.dart';

import 'package:project/widgets/custombuttom.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});
  static const String routeName = '/onboarding';

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  late final PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(() => _currentPage = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: [
          // صفحة 1
          ViewPageOnboarding(
            currentPageIndex: _currentPage,
            showSkip: true,
            image: 'assets/image/logo background1.svg',
            backgroundImage: 'assets/image/backgorund1.svg',
            title: _buildWelcomeTitle(),
            subtitle:
                'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          ),

          // صفحة 2
          ViewPageOnboarding(
            currentPageIndex: _currentPage,
            showSkip: false,
            image: 'assets/image/logo background2.svg',
            backgroundImage: 'assets/image/backgorund2.svg',
            title: const Text(
              'ابحث وتسوق',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w700,
                fontFamily: 'Cairo',
              ),
            ),
            subtitle:
                'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
          ),
        ],
      ),

      // زر ابدأ الآن في الأسفل (فقط في الصفحة الثانية)
      bottomSheet: _currentPage == 1
          ? SafeArea(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: CustomButton(
                  onPressed: () => Navigator.pushReplacementNamed(context, '/login'),
                  text: 'ابدأ الآن',
                ),
              ),
            )
          : null,
    );
  }

  // عنوان الصفحة الأولى منفصل عشان ما يتكررش
  Widget _buildWelcomeTitle() {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
        style: const TextStyle(fontSize: 23, fontWeight: FontWeight.w700, fontFamily: 'Cairo'),
        children: const [
          TextSpan(text: 'مرحبًا بك في '),
          TextSpan(text: 'Fruit', style: TextStyle(color: Color(0xFF1B5E37))),
          TextSpan(text: 'HUB', style: TextStyle(color: Color(0xFFF4A91F))),
        ],
      ),
    );
  }
}
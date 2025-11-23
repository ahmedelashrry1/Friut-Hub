// lib/features/onboarding/presentation/widgets/view_page_onboarding.dart

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project/utils/app%20color.dart';

class ViewPageOnboarding extends StatelessWidget {
  const ViewPageOnboarding({
    super.key,
    required this.currentPageIndex,
    required this.image,
    required this.backgroundImage,
    required this.title,
    required this.subtitle,
    this.showSkip = true,
  });

  final int currentPageIndex; // 0 أو 1
  final String image;
  final String backgroundImage;
  final Widget title;
  final String subtitle;
  final bool showSkip;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // الصور
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(child: SvgPicture.asset(backgroundImage, fit: BoxFit.cover)),
              Align(
                alignment: Alignment.bottomCenter,
                child: SvgPicture.asset(image, width: MediaQuery.of(context).size.width * 0.8),
              ),
              if (showSkip)
                const Padding(
                  padding: EdgeInsets.all(24),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text('تخطي', style: TextStyle(fontSize: 16, color: Colors.black54)),
                  ),
                ),
            ],
          ),
        ),

        const SizedBox(height: 50),

        Padding(padding: const EdgeInsets.symmetric(horizontal: 32), child: title),

        const SizedBox(height: 24),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color(0xFF4E5556),
              height: 1.7,
              fontFamily: 'Cairo',
            ),
          ),
        ),

        const Spacer(),

        // النقاط السحرية: 1 في الصفحة الأولى، 2 في الثانية
        DotsIndicator(
  dotsCount: 2,
  position: currentPageIndex.toDouble(),
  decorator: DotsDecorator(
    activeColor: const Color(0xFF1B5E37),        // لونك الأخضر
    color: const Color(0xFF1B5E37).withOpacity(0.3),
    size: const Size(10, 10),
    activeSize: const Size(32, 10),
    activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    spacing: const EdgeInsets.symmetric(horizontal: 8),
  ),
),
        const SizedBox(height: 80),
      ],
    );
  }
}
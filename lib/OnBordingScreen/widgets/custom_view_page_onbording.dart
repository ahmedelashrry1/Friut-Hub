import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project/utils/app%20color.dart';

class ViewPageOnBording extends StatelessWidget {
  const ViewPageOnBording({
    super.key,
    required this.image,
    required this.backgroundImage,
    required this.title,
    required this.subTitle,
    this.subTitleStyle,
    
    
     // ← جديد: عشان تقدر تتحكم في الـ style من بره
  });

  final String image;
  final String backgroundImage;
  final Widget title;
  final String subTitle;
  final TextStyle? subTitleStyle; // اختياري

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // الجزء العلوي: الصور
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              // الخلفية
              Positioned.fill(
                child: SvgPicture.asset(backgroundImage, fit: BoxFit.cover),
              ),
              // اللوجو أو الصورة الأمامية
              Align(
                alignment: Alignment.bottomCenter,
                child: SvgPicture.asset(
                  image,
                  width:
                      MediaQuery.of(context).size.width *
                      0.8, // اختياري: تحكم في الحجم
                ),
              ),

              // زر تخطي في اليمين العلوي (مناسب للغة العربية)
              const Padding(
                padding: EdgeInsets.all(24.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'تخطي',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54,

                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 46),

        // العنوان (مثل FruitHUB الملون)
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: title,
        ),

        const SizedBox(height: 24),

        // النص الفرعي
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
            style:
                subTitleStyle ??
                const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF4E5556),
                  height: 1.7,
                  fontFamily: 'Cairo',
                ),
          ),
        ),

        // عشان يدفع الـ content للأعلى ويسيب مساحة تحت للـ dots والزر في الصفحات الجاية
        const Spacer(),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColor.primaryColor,
            color: AppColor.primaryColor.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}

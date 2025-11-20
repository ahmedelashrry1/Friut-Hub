import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ViewPageOnBording extends StatelessWidget {
  const ViewPageOnBording({
    super.key,
    required this.image,
    required this.backgroundImage,
    required this.title,
    required this.subTitle,
  });

  final String image, backgroundImage;
  final Widget title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(backgroundImage, fit: BoxFit.cover),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: SvgPicture.asset(image),
              ),

              Padding(padding: const EdgeInsets.all(16.0), child: Text('تخط')),
            ],
          ),
        ),
        SizedBox(height: 46),
        title,
        SizedBox(height: 24),
        Text(subTitle, textAlign: TextAlign.center),
      ],
    );
  }
}

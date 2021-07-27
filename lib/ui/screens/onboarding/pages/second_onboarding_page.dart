import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_screens_test/resources/icon_res.dart';
import 'package:ui_screens_test/style/custom_colors.dart';
import 'package:ui_screens_test/style/text_styles.dart';
import 'package:ui_screens_test/ui/components/box.dart';

class SecondOnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            IconRes.backgroundImageSecond,
            fit: BoxFit.cover,
          ),
        ),
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.0),
                    Colors.black.withOpacity(0.75),
                  ],
                  stops: [
                    0.5,
                    1.0
                  ]),
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 64,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(IconRes.mainLogoBlack),
              const HBox(54),
              Text(
                'Create a virtual wardrobe',
                style: CustomTextStyles.headline1,
              ),
              const HBox(16),
              Text(
                'Create a virtual wardrobe in your\nsmartphone',
                style: CustomTextStyles.headline3.copyWith(
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                  color: CustomColors.greyBorder,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

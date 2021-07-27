import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_screens_test/style/custom_colors.dart';
import 'package:ui_screens_test/style/text_styles.dart';
import 'package:ui_screens_test/ui/components/box.dart';

class BorderedButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final String icon;

  const BorderedButton({
    required this.onPressed,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RawMaterialButton(
        onPressed: () => onPressed(),
        padding: EdgeInsets.only(
            top: 12,
            bottom: 12,
            left: MediaQuery.of(context).size.width * 0.28),
        elevation: 0,
        highlightElevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            5,
          ),
          side: BorderSide(
            color: CustomColors.greyBorder,
            width: 1,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(icon),
            const WBox(12),
            Text(
              text,
              style: CustomTextStyles.headline4,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ui_screens_test/style/custom_colors.dart';
import 'package:ui_screens_test/style/text_styles.dart';

class FilledButton extends StatelessWidget {
  final Function onPressed;
  final String text;

  const FilledButton({
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return _buildBody(context);
  }

  Widget _buildBody(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 12),
          primary: CustomColors.green,
          elevation: 0,
        ),
        onPressed: () => onPressed(),
        child: Text(
          'Process',
          style: CustomTextStyles.headline3,
        ),
      ),
    );
  }
}

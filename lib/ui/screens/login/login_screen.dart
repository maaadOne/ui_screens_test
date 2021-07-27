import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_screens_test/resources/icon_res.dart';
import 'package:ui_screens_test/style/custom_colors.dart';
import 'package:ui_screens_test/style/text_styles.dart';
import 'package:ui_screens_test/ui/components/box.dart';
import 'package:ui_screens_test/ui/components/buttons/bordered_button.dart';
import 'package:ui_screens_test/ui/screens/choice/choice_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  void navigatePush(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => ChoiceScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 64, horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(IconRes.mainLogoBlack),
            const HBox(80),
            BorderedButton(
              onPressed: () => navigatePush(context),
              text: 'Login with Apple',
              icon: IconRes.appleLogo,
            ),
            const HBox(8),
            BorderedButton(
              onPressed: () => navigatePush(context),
              text: 'Login with Facebook',
              icon: IconRes.facebookLogo,
            ),
            const HBox(8),
            BorderedButton(
              onPressed: () => navigatePush(context),
              text: 'Login with Google+',
              icon: IconRes.googleLogo,
            ),
            Spacer(),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'By logging into your account you agree \nwith ',
                    style: CustomTextStyles.headline4.copyWith(
                      color: CustomColors.greyBorder,
                      height: 1.5,
                    ),
                  ),
                  TextSpan(
                    text: 'application rules.',
                    style: CustomTextStyles.headline4.copyWith(
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

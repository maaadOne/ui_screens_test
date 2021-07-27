import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_screens_test/resources/icon_res.dart';
import 'package:ui_screens_test/style/custom_colors.dart';
import 'package:ui_screens_test/style/text_styles.dart';
import 'package:ui_screens_test/ui/components/box.dart';
import 'package:ui_screens_test/ui/components/buttons/filled_button.dart';
import 'package:ui_screens_test/ui/screens/onboarding/onboarding_screen.dart';

class ChoiceScreen extends StatefulWidget {
  const ChoiceScreen({Key? key}) : super(key: key);

  @override
  _ChoiceScreenState createState() => _ChoiceScreenState();
}

class _ChoiceScreenState extends State<ChoiceScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              IconRes.backgroundImage,
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.srcOver,
              color: CustomColors.black.withOpacity(0.75),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 12),
            child: Column(
              children: [
                SvgPicture.asset(IconRes.mainLogoWhite),
                const HBox(74),
                Text(
                  'Choose preferences',
                  style: CustomTextStyles.headline2,
                ),
                const HBox(12),
                ListView.separated(
                  itemCount: 3,
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: currentIndex == index
                              ? CustomColors.white
                              : Colors.transparent,
                          border: Border.all(
                            color: CustomColors.whiteBorder,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Text(
                          'Woomens clothing',
                          style: CustomTextStyles.headline3.copyWith(
                            color: currentIndex == index
                                ? CustomColors.blackText
                                : CustomColors.whiteBorder,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const HBox(8);
                  },
                ),
                Spacer(),
                FilledButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OnBoardingScreen(),
                        )),
                    text: 'Process'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

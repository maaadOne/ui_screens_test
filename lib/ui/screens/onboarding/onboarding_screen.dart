import 'package:flutter/material.dart';
import 'package:ui_screens_test/style/custom_colors.dart';
import 'package:ui_screens_test/ui/components/box.dart';
import 'package:ui_screens_test/ui/components/buttons/filled_button.dart';
import 'package:ui_screens_test/ui/screens/onboarding/pages/first_onboarding_page.dart';
import 'package:ui_screens_test/ui/screens/onboarding/pages/second_onboarding_page.dart';
import 'package:ui_screens_test/ui/screens/onboarding/pages/third_onboarding_page.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _currentPage = 0;
  PageController _controller = PageController();

  List<Widget> _pages = [
    FirstOnBoardingPage(),
    SecondOnBoardingPage(),
    ThirdOnBoardingPage(),
  ];

  _onChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            left: 0,
            right: 0,
            child: PageView.builder(
                itemCount: _pages.length,
                physics: ClampingScrollPhysics(),
                controller: _controller,
                onPageChanged: _onChanged,
                itemBuilder: (context, index) {
                  return _pages[index];
                }),
          ),
          Positioned(
            bottom: 32,
            left: 12,
            right: 12,
            child: Column(
              children: [
                FilledButton(
                    onPressed: () {
                      _controller.nextPage(
                        duration: Duration(milliseconds: 800),
                        curve: Curves.easeInOutQuint,
                      );
                    },
                    text: 'Process'),
                const HBox(16),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List<Widget>.generate(
                      _pages.length,
                      (int index) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 6),
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _currentPage == index
                                ? CustomColors.white
                                : CustomColors.white.withOpacity(0.5),
                          ),
                        );
                      },
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

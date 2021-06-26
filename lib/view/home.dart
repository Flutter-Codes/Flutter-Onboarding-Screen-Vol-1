import 'package:flutter/material.dart';
import 'package:onboarding_vol_1/components/onboarding.dart';
import 'package:onboarding_vol_1/controller/controller.dart';

class Home extends StatelessWidget {
  final page = Controller();

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: page.pageList.length,
      itemBuilder: (context, index) {
        // final lastIndex = page.pageList.length - 1;
        return Onboarding(
          topText: 'Skip',
          imagePath: page.pageList[index].imagePath,
          title: page.pageList[index].title,
          subTitle: page.pageList[index].subTitle,
          buttonTitle: 'Next',
          buttonIcon: Icons.arrow_forward_rounded,
          iconColor: Colors.white,
          buttonColor: Color(0xff4756DF),
          buttonTextColor: Colors.white,
        );
      },
    );
  }
}

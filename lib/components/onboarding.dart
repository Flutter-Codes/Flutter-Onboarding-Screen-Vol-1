import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({
    Key? key,
    required this.topText,
    required this.imagePath,
    required this.title,
    required this.subTitle,
    required this.buttonTitle,
    required this.buttonIcon,
    required this.buttonColor,
    this.iconColor,
    this.buttonTextColor,
  }) : super(key: key);

  final String? topText;
  final String? imagePath;
  final String? title;
  final String? subTitle;
  final String? buttonTitle;
  final IconData? buttonIcon;
  final Color? buttonColor;
  final Color? buttonTextColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    topText!,
                    style: TextStyle(
                        fontSize: 13,
                        color: Color(0xffA29292),
                        fontFamily: 'Montserrat Regular',
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: SvgPicture.asset(
                imagePath!,
                height: 300,
                width: MediaQuery.of(context).size.width,
                // fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 24),
            Container(
              width: 254,
              child: Text(
                title!,
                style: TextStyle(
                    fontSize: 27,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Georgia Regular'),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 24),
            Container(
              alignment: Alignment.center,
              width: 276,
              child: Text(
                subTitle!,
                style: TextStyle(
                    fontSize: 12,
                    color: Color(0xffA29292),
                    fontFamily: 'Montserrat Regular',
                    fontWeight: FontWeight.w500,
                    height: 1.5),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 24),
            MaterialButton(
              onPressed: () {},
              height: 56,
              minWidth: 203,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(23))),
              color: buttonColor,
              child: Container(
                alignment: Alignment.center,
                width: 203,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      buttonTitle!,
                      style: TextStyle(
                        fontSize: 16,
                        color: buttonTextColor,
                        fontFamily: 'Montserrat Regular',
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(width: 24),
                    Icon(
                      buttonIcon,
                      color: iconColor,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
          ],
        )),
      ),
    );
  }
}

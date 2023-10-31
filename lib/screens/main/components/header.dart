import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news/constants.dart';
import 'package:news/screens/main/components/social.dart';
import 'package:news/screens/main/components/web_menu.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: kDarkBlackColor,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(kDefaultPadding),
              constraints: const BoxConstraints(
                maxWidth: kMaxWidth,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/logo.svg'),
                      const Spacer(),
                      WebMenu(),
                      const Spacer(),
                      const Social(),
                    ],
                  ),
                  const SizedBox(
                    height: kDefaultPadding / 2,
                  ),
                  const Text(
                    'Welcome to Our Blog',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    "Stay updated with the newest design and development stories, case studies, \nand insights shared by DesignDK Team.",
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

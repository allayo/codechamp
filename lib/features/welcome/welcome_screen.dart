import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:secondapp/features/Navigation/route_strings.dart';
import 'package:secondapp/shared/app_colors.dart';
import 'package:secondapp/shared/assets.dart';
import 'package:secondapp/shared/constant.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "CodeChamp.in",
                      style: textStyle.copyWith(fontSize: 30),
                    ),
                    SvgPicture.asset(AppAssets.menuIcon),
                  ],
                ),
                const SizedBox(height: 50),
                Image.asset(AppAssets.helloPng),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Hello , Welcome !",
                      style: textStyle.copyWith(fontSize: 35),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Text(
                          "Welcome to codeChamp.in Top platform to coders",
                          style: bodyStyle.copyWith(fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 6, horizontal: 130),
                    decoration: BoxDecoration(
                      color: AppColors.brown,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          AppRouteStrings.loginScreen,
                        );
                      },
                      child: Text(
                        "Login",
                        style: bodyStyle.copyWith(
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                          color: AppColors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 6, horizontal: 120),
                    decoration: BoxDecoration(
                      color: AppColors.brown,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          AppRouteStrings.createAccountScreen,
                        );
                      },
                      child: Text(
                        "Sign Up",
                        style: bodyStyle.copyWith(
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                          color: AppColors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Or  via social media",
                      style: bodyStyle,
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(AppAssets.facebookSvg),
                    const SizedBox(width: 15),
                    SvgPicture.asset(AppAssets.googleSvg),
                    const SizedBox(width: 15),
                    SvgPicture.asset(AppAssets.linkedinSvg),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

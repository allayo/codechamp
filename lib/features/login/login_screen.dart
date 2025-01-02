import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:secondapp/shared/app_colors.dart';
import 'package:secondapp/shared/assets.dart';

import '../../shared/constant.dart';
import '../Navigation/route_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Text(
                      "Welcome Back!",
                      style: textStyle.copyWith(fontSize: 36),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Login to continue",
                      style: bodyStyle.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Username",
                      style: bodyStyle.copyWith(
                          fontWeight: FontWeight.w900, fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.cream,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Password",
                      style: bodyStyle.copyWith(
                          fontWeight: FontWeight.w900, fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.cream,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(AppAssets.boxSvg),
                    ),
                    Text(
                      "Remember me",
                      style: bodyStyle.copyWith(fontSize: 12),
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    Text(
                      "Forget password?",
                      style: bodyStyle.copyWith(fontSize: 12),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 4, horizontal: 125),
                    decoration: BoxDecoration(
                      color: AppColors.brown,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: TextButton(
                      onPressed: () {},
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
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "Don’t have an account? ",
                            style: bodyStyle.copyWith(
                                fontSize: 13, fontWeight: FontWeight.w400)),
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(
                                context,
                                AppRouteStrings.createAccountScreen,
                              );
                            },
                          text: "Sign Up",
                          style: bodyStyle.copyWith(
                              color: AppColors.brown,
                              fontSize: 13,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

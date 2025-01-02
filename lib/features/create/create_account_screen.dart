import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:secondapp/shared/app_colors.dart';

import '../../shared/assets.dart';
import '../../shared/constant.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

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
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Text(
                      "Create Account Now!",
                      style: textStyle.copyWith(fontSize: 36),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Full Name",
                      style: bodyStyle.copyWith(
                          fontWeight: FontWeight.w900, fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(
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
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Email",
                      style: bodyStyle.copyWith(
                          fontWeight: FontWeight.w900, fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(
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
                SizedBox(
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
                SizedBox(
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
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Phone No",
                      style: bodyStyle.copyWith(
                          fontWeight: FontWeight.w900, fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(
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
                SizedBox(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:blog_app/Config/Colors/app_color.dart';
import 'package:blog_app/Config/Components/RoundButton/round_btn.dart';
import 'package:flutter/material.dart';

class SplashViewRoundbtnRegisterWidget extends StatelessWidget {
  const SplashViewRoundbtnRegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RoundBtn(
      title: "Register",
      onPress: () {},
      color: AppColors.blackColor,
      textcolor: AppColors.whiteColor,
    );
  }
}

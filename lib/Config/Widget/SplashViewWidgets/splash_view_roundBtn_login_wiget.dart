import 'package:blog_app/Config/Colors/app_color.dart';
import 'package:blog_app/Config/Components/RoundButton/round_btn.dart';
import 'package:blog_app/Config/Routes/routes_names.dart';
import 'package:flutter/material.dart';

class SplashViewRoundbtnLoginWidget extends StatelessWidget {
  const SplashViewRoundbtnLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RoundBtn(
      title: "Login",
      onPress: () {
        Navigator.pushNamed(context, RoutesNames.loginScreen);
      },
      border: Border.all(
        width: 2,
        color: AppColors.blackColor,
      ),
      color: AppColors.whiteColor,
      textcolor: AppColors.blackColor,
    );
  }
}

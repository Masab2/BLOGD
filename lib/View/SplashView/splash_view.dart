import 'package:blog_app/Config/Extenshion/extenshion.dart';
import 'package:blog_app/Config/Widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            0.01.ph(context),
            const SplashViewHeadingWidget(),
            const SplashViewCenterWidget(),
            0.05.ph(context),
            const SplashViewRoundbtnLoginWidget(),
            0.02.ph(context),
            Text(
              "New here?",
              style: GoogleFonts.montserrat(),
            ),
            0.02.ph(context),
            const SplashViewRoundbtnRegisterWidget()
          ],
        ),
      ),
    );
  }
}

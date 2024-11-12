import 'package:blog_app/Config/Extenshion/extenshion.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashViewHeadingWidget extends StatelessWidget {
  const SplashViewHeadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "BLOGD",
              style: GoogleFonts.lora(
                fontSize: context.mh * 0.038,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Personal Blogging Partner",
              style: GoogleFonts.montserrat(
                fontSize: context.mh * 0.014,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

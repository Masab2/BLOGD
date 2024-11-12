import 'package:blog_app/Config/Extenshion/extenshion.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginHeadingWidget extends StatelessWidget {
  const LoginHeadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.mw * 0.03),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Login Here",
                style: GoogleFonts.montserrat(
                  fontSize: context.mh * 0.028,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          Row(
            children: [
              Text(
                "Unlock Your Story - Authenticate and Explore",
                style: GoogleFonts.montserrat(
                  fontSize: context.mh * 0.016,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

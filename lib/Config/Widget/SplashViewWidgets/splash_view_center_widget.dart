import 'package:blog_app/Config/Assets/image_asset.dart';
import 'package:blog_app/Config/Colors/app_color.dart';
import 'package:blog_app/Config/Extenshion/extenshion.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashViewCenterWidget extends StatelessWidget {
  const SplashViewCenterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image(
          image: AssetImage(ImageAsset.eclipse),
          fit: BoxFit.cover,
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: 'Tell your ',
            style: GoogleFonts.lora(
              fontSize: context.mh * 0.038,
              fontWeight: FontWeight.w500,
              color: AppColors.blackColor,
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'story',
                style: GoogleFonts.lora(
                  fontSize: context.mh * 0.040,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: ' with us.',
                style: GoogleFonts.lora(
                  fontSize: context.mh * 0.038,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

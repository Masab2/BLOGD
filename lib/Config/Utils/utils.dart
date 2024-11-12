import 'package:another_flushbar/flushbar.dart';
import 'package:blog_app/Config/Colors/app_color.dart';
import 'package:blog_app/Config/Extenshion/extenshion.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Utils {
  static void displayFlushBar(
      BuildContext context, String title, String message) {
    Flushbar(
      margin: EdgeInsets.symmetric(horizontal: context.mw * 0.03),
      borderRadius: BorderRadius.circular(20),
      flushbarPosition: FlushbarPosition.TOP,
      flushbarStyle: FlushbarStyle.FLOATING,
      reverseAnimationCurve: Curves.decelerate,
      forwardAnimationCurve: Curves.elasticOut,
      backgroundColor: AppColors.blackColor,
      isDismissible: true,
      duration: const Duration(seconds: 4),
      titleText: Text(
        title,
        style: GoogleFonts.montserrat(
            color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
      ),
      messageText: Text(message,
          style: GoogleFonts.montserrat(
              color: Colors.white,
              fontSize: 14.0,
              fontWeight: FontWeight.w400)),
      mainButton: IconButton(
        icon: const Icon(Icons.close, color: Colors.white),
        onPressed: () {
          Navigator.of(context).pop(); // Closes the Flushbar
        },
      ),
    ).show(context);
  }
}

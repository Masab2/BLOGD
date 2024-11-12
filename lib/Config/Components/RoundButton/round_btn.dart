import 'package:blog_app/Config/Colors/app_color.dart';
import 'package:blog_app/Config/Extenshion/extenshion.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundBtn extends StatelessWidget {
  final String title;
  final bool loading;
  final VoidCallback onPress;
  final BoxBorder? border;
  final Color? color;
  final Color? textcolor;
   final double? height; 
  final double? width;
  const RoundBtn({
    super.key,
    this.border,
    this.color,
    this.textcolor,
    required this.title,
    this.loading = false,
    required this.onPress,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: height ??  context.mh * 0.07,
        width: width ?? context.mw * 0.80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
          border: border,
        ),
        child: Center(
          child: loading
              ? CircularProgressIndicator(
                  color: AppColors.whiteColor,
                )
              : Text(
                  title,
                  style: GoogleFonts.montserrat(
                    color: textcolor,
                    fontSize: context.mh * 0.02,
                    fontWeight: FontWeight.w400,
                  ),
                ),
        ),
      ),
    );
  }
}

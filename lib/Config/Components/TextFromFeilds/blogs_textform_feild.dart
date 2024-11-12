import 'package:blog_app/Config/Colors/app_color.dart';
import 'package:blog_app/Config/Extenshion/extenshion.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BlogsTextFormFeild extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final TextInputType? keyBoardtype;
  final String label;
  final int? maxLines;
  const BlogsTextFormFeild({
    super.key,
    required this.hintText,
    this.controller,
    this.keyBoardtype,
    required this.label, this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.mw * 0.03),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w700,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: context.mw * 0.02),
            decoration: BoxDecoration(
              color: AppColors.textColor.withOpacity(0.33),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: TextFormField(
                maxLines: maxLines,
                controller: controller,
                keyboardType: keyBoardtype,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hintText,
                    hintStyle: TextStyle(
                      fontSize: context.mh * 0.015,
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

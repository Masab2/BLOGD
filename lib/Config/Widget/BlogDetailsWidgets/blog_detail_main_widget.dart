import 'package:blog_app/Config/Colors/app_color.dart';
import 'package:blog_app/Config/Extenshion/extenshion.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BlogDetailMainWidget extends StatelessWidget {
  final String title;
  final String author;
  final String date;
  final String timeToRead;
  final String description;

  const BlogDetailMainWidget({
    super.key,
    required this.title,
    required this.author,
    required this.date,
    required this.timeToRead,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        0.01.ph(context),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: context.mw * 0.03),
          child: Wrap(
            children: [
              Text(
                title,
                style: GoogleFonts.montserrat(
                  fontSize: context.mh * 0.023,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        0.02.ph(context),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: context.mw * 0.03),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                author,
                style: GoogleFonts.montserrat(
                  fontSize: context.mh * 0.018,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                date,
                style: GoogleFonts.montserrat(
                  fontSize: context.mh * 0.015,
                  color: AppColors.textColor,
                ),
              ),
              Text(
                timeToRead,
                style: GoogleFonts.montserrat(
                  fontSize: context.mh * 0.015,
                  color: AppColors.textColor,
                ),
              ),
            ],
          ),
        ),
        0.01.ph(context),
        Divider(
          thickness: 2,
          indent: context.mw * 0.03,
          endIndent: context.mw * 0.03,
          color: Colors.grey.shade300,
        ),
        0.02.ph(context),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: context.mw * 0.03),
          child: Container(
            height: context.mh * 0.70,
            child: SingleChildScrollView(
              child: Text(
                description,
                style: GoogleFonts.montserrat(
                  fontSize: context.mh * 0.017,
                  color: Colors.black87,
                  height: 1.5,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:blog_app/Config/Colors/app_color.dart';
import 'package:blog_app/Config/Components/RoundButton/round_btn.dart';
import 'package:blog_app/Config/Extenshion/extenshion.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BlogPostCard extends StatelessWidget {
  final String title;
  final String author;
  final String date;
  final String timeToRead;
  final String description;
  final VoidCallback onReadMore;

  const BlogPostCard({
    required this.title,
    required this.author,
    required this.date,
    required this.timeToRead,
    required this.description,
    required this.onReadMore,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: context.mw * 0.03, vertical: context.mh * 0.01),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: GoogleFonts.montserrat(
                      fontSize: context.mh * 0.023,
                      fontWeight: FontWeight.bold)),
              0.01.ph(context),
              Text(
                'by $author · $date · $timeToRead',
                style: GoogleFonts.montserrat(
                  fontSize: context.mh * 0.015,
                  color: Colors.grey[700],
                ),
              ),
              0.01.ph(context),
              Text(
                description,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.montserrat(
                  fontSize: context.mh * 0.017,
                  color: Colors.black87,
                ),
              ),
              0.01.ph(context),
              RoundBtn(
                height: context.mh * 0.05,
                width: context.mw,
                color: AppColors.blackColor,
                title: "Read More",
                onPress: onReadMore,
                textcolor: AppColors.whiteColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}

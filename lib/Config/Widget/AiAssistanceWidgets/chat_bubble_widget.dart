import 'package:blog_app/Config/Colors/app_color.dart';
import 'package:blog_app/Config/Extenshion/extenshion.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatBubble extends StatelessWidget {
  final String text;
  final String isSent;
  final String time;

  const ChatBubble({
    super.key,
    required this.text,
    required this.isSent,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment:
          isSent == 'user' ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(bottom: context.mh * 0.02, left: 10, right: 10),
        padding: EdgeInsets.symmetric(
          horizontal: context.mw * 0.05,
          vertical: context.mh * 0.01,
        ),
        decoration: BoxDecoration(
          gradient: isSent == 'user'
              ? LinearGradient(
                  colors: [AppColors.blackColor, Colors.grey.shade800],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )
              : LinearGradient(
                  colors: [AppColors.textFromFeildColor, Colors.grey.shade300],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(15),
            topRight: const Radius.circular(15),
            bottomLeft: isSent == 'user' ? const Radius.circular(15) : Radius.zero,
            bottomRight: isSent == 'user' ? Radius.zero : const Radius.circular(15),
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(2, 2),
              blurRadius: 6,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              text,
              style: GoogleFonts.montserrat(
                fontSize: context.mh * 0.018,
                color: isSent == 'user'
                    ? AppColors.whiteColor
                    : AppColors.blackColor,
              ),
            ),
            0.003.ph(context),
            Text(
              time,
              style: GoogleFonts.montserrat(
                fontSize: context.mh * 0.010,
                color: isSent == 'user' ? Colors.grey.shade300 : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

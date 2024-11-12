import 'package:blog_app/Config/Assets/image_asset.dart';
import 'package:blog_app/Config/Colors/app_color.dart';
import 'package:blog_app/Config/Extenshion/extenshion.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class MainBlogScreenDisplayWidgets extends StatelessWidget {
  final VoidCallback? onTap;
  final bool isCollapsed;

  const MainBlogScreenDisplayWidgets({
    super.key,
    this.onTap,
    required this.isCollapsed,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double mh = size.height;
    double mw = size.width;
    return AnimatedPositioned(
      top: isCollapsed == true ? mh * 0.1 : null,
      left: isCollapsed == true ? mw * 0.6 : null,
      right: isCollapsed == true ? -mw * 0.4 : null,
      bottom: isCollapsed == true ? mw * 0.1 : null,
      duration: const Duration(milliseconds: 300),
      child: Material(
        borderRadius: isCollapsed == true ? BorderRadius.circular(30) : null,
        color: AppColors.backgroundColor,
        child: SafeArea(
          child: Column(
            children: [
              0.01.ph(context),
              Row(
                children: [
                  0.04.pw(context),
                  InkWell(
                    onTap: onTap,
                    child: Image(
                      image: AssetImage(ImageAsset.sideMenu),
                      height: 20,
                      width: 20,
                    ),
                  ),
                  // const Spacer(),
                  Expanded(
                    child: Text(
                      "BLOGD",
                      style: GoogleFonts.lora(
                        fontSize: context.mh * 0.027,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    IconlyBold.notification,
                  ),
                  0.02.pw(context),
                ],
              ),
              const Expanded(
                child: Center(
                  child: Text(
                    "Content goes here",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:developer';

import 'package:blog_app/Config/AppUrl/app_url.dart';
import 'package:blog_app/Config/Extenshion/extenshion.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryDisplayMainWidget extends StatelessWidget {
  final state;
  const CategoryDisplayMainWidget({super.key, this.state});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.mh * 0.77,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: context.mw * 0.04,
          mainAxisSpacing: context.mh * 0.02,
          childAspectRatio: 0.85,
        ),
        itemCount: state.categoryList.length,
        itemBuilder: (context, index) {
          final category = state.categoryList[index];
          log(AppUrl.buildUrlImage(category.image ?? "").toString());
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 5,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CachedNetworkImage(
                    imageUrl: AppUrl.buildUrlImage(category.image ?? ""),
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(context.mw * 0.02),
                    color: Colors.black.withOpacity(0.6),
                    child: Text(
                      category.name ?? "Category Name",
                      style: GoogleFonts.lora(
                        fontSize: context.mh * 0.02,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

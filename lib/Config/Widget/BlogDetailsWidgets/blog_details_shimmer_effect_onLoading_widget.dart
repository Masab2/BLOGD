import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerBlogDetailWidget extends StatelessWidget {
  const ShimmerBlogDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.03),
          child: Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            child: Container(
              height: 20,
              width: MediaQuery.of(context).size.width * 0.8,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.03),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Shimmer.fromColors(
                baseColor: Colors.grey.shade300,
                highlightColor: Colors.grey.shade100,
                child: Container(
                  height: 15,
                  width: MediaQuery.of(context).size.width * 0.25,
                  color: Colors.white,
                ),
              ),
              Shimmer.fromColors(
                baseColor: Colors.grey.shade300,
                highlightColor: Colors.grey.shade100,
                child: Container(
                  height: 15,
                  width: MediaQuery.of(context).size.width * 0.15,
                  color: Colors.white,
                ),
              ),
              Shimmer.fromColors(
                baseColor: Colors.grey.shade300,
                highlightColor: Colors.grey.shade100,
                child: Container(
                  height: 15,
                  width: MediaQuery.of(context).size.width * 0.15,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Divider(
          thickness: 2,
          indent: MediaQuery.of(context).size.width * 0.03,
          endIndent: MediaQuery.of(context).size.width * 0.03,
          color: Colors.grey.shade300,
        ),
        const SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.03),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.70,
            child: Shimmer.fromColors(
              baseColor: Colors.grey.shade300,
              highlightColor: Colors.grey.shade100,
              child: ListView.builder(
                itemCount: 8,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Container(
                    height: 15,
                    width: double.infinity,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

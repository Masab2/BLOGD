import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerBlogPostCard extends StatelessWidget {
  const ShimmerBlogPostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.03,
        vertical: MediaQuery.of(context).size.height * 0.01,
      ),
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
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
                // Title Placeholder
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: MediaQuery.of(context).size.height * 0.03,
                  color: Colors.grey[300],
                ),
                const SizedBox(height: 8),
                
                // Author & Date Placeholder
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.02,
                  color: Colors.grey[300],
                ),
                const SizedBox(height: 12),
                
                // Description Placeholder
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.06,
                  color: Colors.grey[300],
                ),
                const SizedBox(height: 12),
                
                // Read More Button Placeholder
                Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.height * 0.05,
                  color: Colors.grey[300],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

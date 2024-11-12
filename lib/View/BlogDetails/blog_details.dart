import 'package:blog_app/Bloc/BlogDetailsBloc/blog_details_bloc.dart';
import 'package:blog_app/Config/DateAndTimeUtil/date_and_time_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';

import '../../Config/Widget/widgets.dart';

class BlogDetails extends StatefulWidget {
  final String blogId;
  const BlogDetails({super.key, required this.blogId});

  @override
  State<BlogDetails> createState() => _BlogDetailsState();
}

class _BlogDetailsState extends State<BlogDetails> {
  @override
  void initState() {
    context.read<BlogDetailsBloc>().add(GetBlogDetailsEvent(
          id: widget.blogId,
        ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              IconlyBold.bookmark,
              color: Colors.red,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          BlocBuilder<BlogDetailsBloc, BlogDetailsBlocState>(
            builder: (context, state) {
              if (state is BlogDetailsBlocLoading) {
                return const ShimmerBlogDetailWidget();
              } else if (state is BlogDetailsBlocCompleted) {
                return BlogDetailMainWidget(
                  title: state.createBlogModel.data?.title ?? "",
                  author: state.createBlogModel.data?.author ?? "",
                  date: DateAndTimeUtils.dateFormated(
                      state.createBlogModel.data?.date ?? ""),
                  timeToRead:
                      "${state.createBlogModel.data?.estimatedTime ?? ""} min read",
                  description: state.createBlogModel.data?.description ?? "",
                );
              } else if (state is BlogDetailsBlocError) {
                return Center(child: Text(state.error));
              } else {
                return Container();
              }
            },
          )
        ],
      ),
    );
  }
}

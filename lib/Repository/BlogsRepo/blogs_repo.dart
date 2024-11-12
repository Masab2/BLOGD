import 'package:blog_app/Model/BlogsModel/blogs_model.dart';

abstract class BlogsRepo {
  Future<BlogsModel> getAllBlogs();
}
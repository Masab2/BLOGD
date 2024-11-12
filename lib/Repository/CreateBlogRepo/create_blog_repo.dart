import 'package:blog_app/Model/CreateBlogModel/create_blog_model.dart';

abstract class CreateBlogRepo {
  Future<CreateBlogModel> createBlogApi(data);
}

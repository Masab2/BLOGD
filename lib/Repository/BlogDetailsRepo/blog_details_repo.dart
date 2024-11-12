import 'package:blog_app/Model/CreateBlogModel/create_blog_model.dart';

abstract class BlogDetailsRepo {
  Future<CreateBlogModel> getBlogsDetailsApi(id);
}

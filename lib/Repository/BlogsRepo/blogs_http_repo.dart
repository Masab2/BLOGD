import 'package:blog_app/Config/AppUrl/app_url.dart';
import 'package:blog_app/Data/Network/network_api_service.dart';
import 'package:blog_app/Model/BlogsModel/blogs_model.dart';
import 'package:blog_app/Repository/BlogsRepo/blogs_repo.dart';

class BlogsHttpRepo extends BlogsRepo {
  final _api = NetworkApiService();
  @override
  Future<BlogsModel> getAllBlogs() async {
    final response = await _api.getGetApiResponse(AppUrl.getAllBlogs);
    return BlogsModel.fromJson(response);
  }
}

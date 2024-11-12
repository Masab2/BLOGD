
import 'package:blog_app/Config/AppUrl/app_url.dart';
import 'package:blog_app/Data/Network/network_api_service.dart';
import 'package:blog_app/Model/CreateBlogModel/create_blog_model.dart';
import 'package:blog_app/Repository/BlogDetailsRepo/blog_details_repo.dart';

class BlogDetailsHttpRepo extends BlogDetailsRepo {
  final _api = NetworkApiService();
  @override
  Future<CreateBlogModel> getBlogsDetailsApi(id) async {
    final response = await _api.getGetApiResponse(AppUrl.getBlogsById(id));
    return CreateBlogModel.fromJson(response);
  }
}

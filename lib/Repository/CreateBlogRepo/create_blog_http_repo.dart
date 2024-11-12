import 'package:blog_app/Config/AppUrl/app_url.dart';
import 'package:blog_app/Data/Network/network_api_service.dart';
import 'package:blog_app/Model/CreateBlogModel/create_blog_model.dart';
import 'package:blog_app/Repository/CreateBlogRepo/create_blog_repo.dart';

class CreateBlogHttpRepo extends CreateBlogRepo {
  final _api = NetworkApiService();
  @override
  Future<CreateBlogModel> createBlogApi(data) async {
    final response = await _api.getPostApiResponse(
      AppUrl.createBlogUrl,
      data,
    );

    return CreateBlogModel.fromJson(response);
  }
}

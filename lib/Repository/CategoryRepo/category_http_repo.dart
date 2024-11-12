import 'package:blog_app/Config/AppUrl/app_url.dart';
import 'package:blog_app/Data/Network/network_api_service.dart';
import 'package:blog_app/Model/CategoryModel/category_model.dart';
import 'package:blog_app/Repository/CategoryRepo/category_repo.dart';

class CategoryHttpRepo extends CategoryRepo {
  final _api = NetworkApiService();
  @override
  Future<CategoryModel> getCategory() async {
    final response = await _api.getGetApiResponse(AppUrl.getAllCategories);
    return CategoryModel.fromJson(response);
  }
}

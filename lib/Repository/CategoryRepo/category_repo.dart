import 'package:blog_app/Model/CategoryModel/category_model.dart';

abstract class CategoryRepo {
  Future<CategoryModel> getCategory();
}

import 'package:blog_app/Model/UserModel/user_model.dart';

abstract class LoginRepo {
  Future<UserModel> loginApi(dynamic data);
}

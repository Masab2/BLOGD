import 'dart:developer';

import 'package:blog_app/Config/AppUrl/app_url.dart';
import 'package:blog_app/Data/Network/network_api_service.dart';
import 'package:blog_app/Model/UserModel/user_model.dart';
import 'package:blog_app/Repository/AuthRepo/LoginRepo/login_repo.dart';

class LoginHttpRepo implements LoginRepo {
  final _api = NetworkApiService();
  @override
  Future<UserModel> loginApi(dynamic data) async {
    final response = await _api.getPostApiResponse(AppUrl.loginUrl, data);
    UserModel userModel = UserModel.fromJson(response);
    log(userModel.data!.email.toString());
    return userModel;
  }
}

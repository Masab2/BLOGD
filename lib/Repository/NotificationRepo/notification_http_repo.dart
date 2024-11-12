import 'dart:convert';
import 'dart:developer';

import 'package:blog_app/Config/AppUrl/app_url.dart';
import 'package:blog_app/Data/Network/network_api_service.dart';
import 'package:blog_app/Model/NotificationModel/notification_model.dart';
import 'package:blog_app/Model/UserModel/user_model.dart';
import 'package:blog_app/Repository/NotificationRepo/notification_repo.dart';
import 'package:blog_app/Service/LocalStorage/local_storage.dart';
import 'package:blog_app/Service/SessionManager/session_manager.dart';

class NotificationHttpRepo extends NotificationRepo {
  final _api = NetworkApiService();
  final LocalStorage storage = LocalStorage();
  @override
  Future<NotificationModel> getNotificationApi() async {
    var id = await storage.readValue("token");
    UserModel? data;
    if (id != null) {
      data = SessionController().userModel = UserModel.fromJson(jsonDecode(id));
      log(data.data?.id ?? "");
    }
    log(id);
    String userId = data?.data?.id ?? "";
    final response =
        await _api.getGetApiResponse(AppUrl.getNotificationUrl(userId));
    return NotificationModel.fromJson(response);
  }
}

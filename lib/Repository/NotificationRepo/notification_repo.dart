import 'package:blog_app/Model/NotificationModel/notification_model.dart';

abstract class NotificationRepo {
  Future<NotificationModel> getNotificationApi();
}

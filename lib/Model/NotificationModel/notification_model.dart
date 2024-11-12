// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'notification_model.freezed.dart';
part 'notification_model.g.dart';
@freezed
class NotificationModel with _$NotificationModel {
  factory NotificationModel({
    @JsonKey(name: "Status") bool? status,
    @JsonKey(name: "Success") List<NotificationList>? notificationList,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}

@freezed
class NotificationList with _$NotificationList {
  factory NotificationList({
    @JsonKey(name: "_id") @Default("") String id,
    @JsonKey(name: "notificationTitle") @Default("") String notifsTitle,
    @JsonKey(name: "title") @Default("") String title,
    @JsonKey(name: "userId") @Default("") String userId,
    @JsonKey(name: "blogId") @Default("") String blogId,
    @JsonKey(name: "date") @Default("") String date,
  }) = _NotificationList;

  factory NotificationList.fromJson(Map<String, dynamic> json) =>
      _$NotificationListFromJson(json);
}

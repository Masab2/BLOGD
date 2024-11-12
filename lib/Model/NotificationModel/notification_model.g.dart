// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationModelImpl _$$NotificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationModelImpl(
      status: json['Status'] as bool?,
      notificationList: (json['Success'] as List<dynamic>?)
          ?.map((e) => NotificationList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$NotificationModelImplToJson(
        _$NotificationModelImpl instance) =>
    <String, dynamic>{
      'Status': instance.status,
      'Success': instance.notificationList,
    };

_$NotificationListImpl _$$NotificationListImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationListImpl(
      id: json['_id'] as String? ?? "",
      notifsTitle: json['notificationTitle'] as String? ?? "",
      title: json['title'] as String? ?? "",
      userId: json['userId'] as String? ?? "",
      blogId: json['blogId'] as String? ?? "",
      date: json['date'] as String? ?? "",
    );

Map<String, dynamic> _$$NotificationListImplToJson(
        _$NotificationListImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'notificationTitle': instance.notifsTitle,
      'title': instance.title,
      'userId': instance.userId,
      'blogId': instance.blogId,
      'date': instance.date,
    };

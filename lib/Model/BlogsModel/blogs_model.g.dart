// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blogs_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlogsModelImpl _$$BlogsModelImplFromJson(Map<String, dynamic> json) =>
    _$BlogsModelImpl(
      status: json['Status'] as bool?,
      data: (json['Success'] as List<dynamic>?)
          ?.map((e) => BlogsData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BlogsModelImplToJson(_$BlogsModelImpl instance) =>
    <String, dynamic>{
      'Status': instance.status,
      'Success': instance.data,
    };

_$BlogsDataImpl _$$BlogsDataImplFromJson(Map<String, dynamic> json) =>
    _$BlogsDataImpl(
      blogsId: json['_id'] as String? ?? "",
      title: json['title'] as String? ?? "",
      description: json['description'] as String? ?? "",
      author: json['author'] as String? ?? "",
      userId: json['userId'] as String? ?? "",
      category: json['category'] as String? ?? "",
      estimatedTime: json['estimatedTime'] as String? ?? "",
      date: json['date'] as String? ?? "",
    );

Map<String, dynamic> _$$BlogsDataImplToJson(_$BlogsDataImpl instance) =>
    <String, dynamic>{
      '_id': instance.blogsId,
      'title': instance.title,
      'description': instance.description,
      'author': instance.author,
      'userId': instance.userId,
      'category': instance.category,
      'estimatedTime': instance.estimatedTime,
      'date': instance.date,
    };

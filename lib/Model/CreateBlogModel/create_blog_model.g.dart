// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_blog_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateBlogModelImpl _$$CreateBlogModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateBlogModelImpl(
      status: json['Status'] as bool?,
      data: json['Success'] == null
          ? null
          : CreateBlogData.fromJson(json['Success'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateBlogModelImplToJson(
        _$CreateBlogModelImpl instance) =>
    <String, dynamic>{
      'Status': instance.status,
      'Success': instance.data,
    };

_$CreateBlogDataImpl _$$CreateBlogDataImplFromJson(Map<String, dynamic> json) =>
    _$CreateBlogDataImpl(
      blogsId: json['_id'] as String? ?? "",
      title: json['title'] as String? ?? "",
      description: json['description'] as String? ?? "",
      author: json['author'] as String? ?? "",
      userId: json['userId'] as String? ?? "",
      category: json['category'] as String? ?? "",
      estimatedTime: json['estimatedTime'] as String? ?? "",
      date: json['date'] as String? ?? "",
    );

Map<String, dynamic> _$$CreateBlogDataImplToJson(
        _$CreateBlogDataImpl instance) =>
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

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'create_blog_model.freezed.dart';
part 'create_blog_model.g.dart';

@freezed
class CreateBlogModel with _$CreateBlogModel {
  factory CreateBlogModel({
    @JsonKey(name: "Status") bool? status,
    @JsonKey(name: "Success") CreateBlogData? data,
  }) = _CreateBlogModel;

  factory CreateBlogModel.fromJson(Map<String, dynamic> json) =>
      _$CreateBlogModelFromJson(json);
}

@freezed
class CreateBlogData with _$CreateBlogData {
  factory CreateBlogData({
    @JsonKey(name: '_id') @Default("") String blogsId,
    @JsonKey(name: 'title') @Default("") String title,
    @JsonKey(name: 'description') @Default("") String description,
    @JsonKey(name: 'author') @Default("") String author,
    @JsonKey(name: 'userId') @Default("") String userId,
    @JsonKey(name: 'category') @Default("") String category,
    @JsonKey(name: 'estimatedTime') @Default("") String estimatedTime,
    @JsonKey(name: 'date') @Default("") String date,
  }) = _CreateBlogData;

  factory CreateBlogData.fromJson(Map<String, dynamic> json) =>
      _$CreateBlogDataFromJson(json);
}

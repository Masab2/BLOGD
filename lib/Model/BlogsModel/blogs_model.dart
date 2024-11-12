// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'blogs_model.freezed.dart';
part 'blogs_model.g.dart';
@freezed
class BlogsModel with _$BlogsModel {
  factory BlogsModel({
    @JsonKey(name: 'Status') bool? status,
    @JsonKey(name: 'Success') List<BlogsData>? data,
  }) = _BlogsModel;

  factory BlogsModel.fromJson(Map<String, dynamic> json) =>
      _$BlogsModelFromJson(json);
}

@freezed
class BlogsData with _$BlogsData {
  factory BlogsData({
    @JsonKey(name: '_id') @Default("") String? blogsId,
    @JsonKey(name: 'title') @Default("") String? title,
    @JsonKey(name: 'description') @Default("") String? description,
    @JsonKey(name: 'author') @Default("") String? author,
    @JsonKey(name: 'userId') @Default("") String? userId,
    @JsonKey(name: 'category') @Default("") String? category,
    @JsonKey(name: 'estimatedTime') @Default("") String? estimatedTime,
    @JsonKey(name: 'date') @Default("") String? date,
  }) = _BlogsData;

  factory BlogsData.fromJson(Map<String, dynamic> json) =>
      _$BlogsDataFromJson(json);
}

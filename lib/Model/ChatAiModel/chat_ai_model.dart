// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_ai_model.freezed.dart';
part 'chat_ai_model.g.dart';

@freezed
class ChatAiModel with _$ChatAiModel {
  factory ChatAiModel({
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'parts') List<ChatPart>? parts,
  }) = _ChatAiModel;

  factory ChatAiModel.fromJson(Map<String, dynamic> json) =>
      _$ChatAiModelFromJson(json);
}

@freezed
class ChatPart with _$ChatPart {
  factory ChatPart({
    @JsonKey(name: 'text') @Default('') String text,
  }) = _ChatPart;

  factory ChatPart.fromJson(Map<String, dynamic> json) =>
      _$ChatPartFromJson(json);
}
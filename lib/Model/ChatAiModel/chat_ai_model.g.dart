// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_ai_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatAiModelImpl _$$ChatAiModelImplFromJson(Map<String, dynamic> json) =>
    _$ChatAiModelImpl(
      role: json['role'] as String?,
      parts: (json['parts'] as List<dynamic>?)
          ?.map((e) => ChatPart.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChatAiModelImplToJson(_$ChatAiModelImpl instance) =>
    <String, dynamic>{
      'role': instance.role,
      'parts': instance.parts,
    };

_$ChatPartImpl _$$ChatPartImplFromJson(Map<String, dynamic> json) =>
    _$ChatPartImpl(
      text: json['text'] as String? ?? '',
    );

Map<String, dynamic> _$$ChatPartImplToJson(_$ChatPartImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
    };

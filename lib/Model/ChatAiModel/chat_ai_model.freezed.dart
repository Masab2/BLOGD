// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_ai_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatAiModel _$ChatAiModelFromJson(Map<String, dynamic> json) {
  return _ChatAiModel.fromJson(json);
}

/// @nodoc
mixin _$ChatAiModel {
  @JsonKey(name: 'role')
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'parts')
  List<ChatPart>? get parts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatAiModelCopyWith<ChatAiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatAiModelCopyWith<$Res> {
  factory $ChatAiModelCopyWith(
          ChatAiModel value, $Res Function(ChatAiModel) then) =
      _$ChatAiModelCopyWithImpl<$Res, ChatAiModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'role') String? role,
      @JsonKey(name: 'parts') List<ChatPart>? parts});
}

/// @nodoc
class _$ChatAiModelCopyWithImpl<$Res, $Val extends ChatAiModel>
    implements $ChatAiModelCopyWith<$Res> {
  _$ChatAiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? parts = freezed,
  }) {
    return _then(_value.copyWith(
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      parts: freezed == parts
          ? _value.parts
          : parts // ignore: cast_nullable_to_non_nullable
              as List<ChatPart>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatAiModelImplCopyWith<$Res>
    implements $ChatAiModelCopyWith<$Res> {
  factory _$$ChatAiModelImplCopyWith(
          _$ChatAiModelImpl value, $Res Function(_$ChatAiModelImpl) then) =
      __$$ChatAiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'role') String? role,
      @JsonKey(name: 'parts') List<ChatPart>? parts});
}

/// @nodoc
class __$$ChatAiModelImplCopyWithImpl<$Res>
    extends _$ChatAiModelCopyWithImpl<$Res, _$ChatAiModelImpl>
    implements _$$ChatAiModelImplCopyWith<$Res> {
  __$$ChatAiModelImplCopyWithImpl(
      _$ChatAiModelImpl _value, $Res Function(_$ChatAiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? parts = freezed,
  }) {
    return _then(_$ChatAiModelImpl(
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      parts: freezed == parts
          ? _value._parts
          : parts // ignore: cast_nullable_to_non_nullable
              as List<ChatPart>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatAiModelImpl implements _ChatAiModel {
  _$ChatAiModelImpl(
      {@JsonKey(name: 'role') this.role,
      @JsonKey(name: 'parts') final List<ChatPart>? parts})
      : _parts = parts;

  factory _$ChatAiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatAiModelImplFromJson(json);

  @override
  @JsonKey(name: 'role')
  final String? role;
  final List<ChatPart>? _parts;
  @override
  @JsonKey(name: 'parts')
  List<ChatPart>? get parts {
    final value = _parts;
    if (value == null) return null;
    if (_parts is EqualUnmodifiableListView) return _parts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ChatAiModel(role: $role, parts: $parts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatAiModelImpl &&
            (identical(other.role, role) || other.role == role) &&
            const DeepCollectionEquality().equals(other._parts, _parts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, role, const DeepCollectionEquality().hash(_parts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatAiModelImplCopyWith<_$ChatAiModelImpl> get copyWith =>
      __$$ChatAiModelImplCopyWithImpl<_$ChatAiModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatAiModelImplToJson(
      this,
    );
  }
}

abstract class _ChatAiModel implements ChatAiModel {
  factory _ChatAiModel(
      {@JsonKey(name: 'role') final String? role,
      @JsonKey(name: 'parts') final List<ChatPart>? parts}) = _$ChatAiModelImpl;

  factory _ChatAiModel.fromJson(Map<String, dynamic> json) =
      _$ChatAiModelImpl.fromJson;

  @override
  @JsonKey(name: 'role')
  String? get role;
  @override
  @JsonKey(name: 'parts')
  List<ChatPart>? get parts;
  @override
  @JsonKey(ignore: true)
  _$$ChatAiModelImplCopyWith<_$ChatAiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatPart _$ChatPartFromJson(Map<String, dynamic> json) {
  return _ChatPart.fromJson(json);
}

/// @nodoc
mixin _$ChatPart {
  @JsonKey(name: 'text')
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatPartCopyWith<ChatPart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatPartCopyWith<$Res> {
  factory $ChatPartCopyWith(ChatPart value, $Res Function(ChatPart) then) =
      _$ChatPartCopyWithImpl<$Res, ChatPart>;
  @useResult
  $Res call({@JsonKey(name: 'text') String text});
}

/// @nodoc
class _$ChatPartCopyWithImpl<$Res, $Val extends ChatPart>
    implements $ChatPartCopyWith<$Res> {
  _$ChatPartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatPartImplCopyWith<$Res>
    implements $ChatPartCopyWith<$Res> {
  factory _$$ChatPartImplCopyWith(
          _$ChatPartImpl value, $Res Function(_$ChatPartImpl) then) =
      __$$ChatPartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'text') String text});
}

/// @nodoc
class __$$ChatPartImplCopyWithImpl<$Res>
    extends _$ChatPartCopyWithImpl<$Res, _$ChatPartImpl>
    implements _$$ChatPartImplCopyWith<$Res> {
  __$$ChatPartImplCopyWithImpl(
      _$ChatPartImpl _value, $Res Function(_$ChatPartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$ChatPartImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatPartImpl implements _ChatPart {
  _$ChatPartImpl({@JsonKey(name: 'text') this.text = ''});

  factory _$ChatPartImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatPartImplFromJson(json);

  @override
  @JsonKey(name: 'text')
  final String text;

  @override
  String toString() {
    return 'ChatPart(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatPartImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatPartImplCopyWith<_$ChatPartImpl> get copyWith =>
      __$$ChatPartImplCopyWithImpl<_$ChatPartImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatPartImplToJson(
      this,
    );
  }
}

abstract class _ChatPart implements ChatPart {
  factory _ChatPart({@JsonKey(name: 'text') final String text}) =
      _$ChatPartImpl;

  factory _ChatPart.fromJson(Map<String, dynamic> json) =
      _$ChatPartImpl.fromJson;

  @override
  @JsonKey(name: 'text')
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$ChatPartImplCopyWith<_$ChatPartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

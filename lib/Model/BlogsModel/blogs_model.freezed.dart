// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blogs_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlogsModel _$BlogsModelFromJson(Map<String, dynamic> json) {
  return _BlogsModel.fromJson(json);
}

/// @nodoc
mixin _$BlogsModel {
  @JsonKey(name: 'Status')
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'Success')
  List<BlogsData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlogsModelCopyWith<BlogsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogsModelCopyWith<$Res> {
  factory $BlogsModelCopyWith(
          BlogsModel value, $Res Function(BlogsModel) then) =
      _$BlogsModelCopyWithImpl<$Res, BlogsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Status') bool? status,
      @JsonKey(name: 'Success') List<BlogsData>? data});
}

/// @nodoc
class _$BlogsModelCopyWithImpl<$Res, $Val extends BlogsModel>
    implements $BlogsModelCopyWith<$Res> {
  _$BlogsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BlogsData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlogsModelImplCopyWith<$Res>
    implements $BlogsModelCopyWith<$Res> {
  factory _$$BlogsModelImplCopyWith(
          _$BlogsModelImpl value, $Res Function(_$BlogsModelImpl) then) =
      __$$BlogsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Status') bool? status,
      @JsonKey(name: 'Success') List<BlogsData>? data});
}

/// @nodoc
class __$$BlogsModelImplCopyWithImpl<$Res>
    extends _$BlogsModelCopyWithImpl<$Res, _$BlogsModelImpl>
    implements _$$BlogsModelImplCopyWith<$Res> {
  __$$BlogsModelImplCopyWithImpl(
      _$BlogsModelImpl _value, $Res Function(_$BlogsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BlogsModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BlogsData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlogsModelImpl implements _BlogsModel {
  _$BlogsModelImpl(
      {@JsonKey(name: 'Status') this.status,
      @JsonKey(name: 'Success') final List<BlogsData>? data})
      : _data = data;

  factory _$BlogsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlogsModelImplFromJson(json);

  @override
  @JsonKey(name: 'Status')
  final bool? status;
  final List<BlogsData>? _data;
  @override
  @JsonKey(name: 'Success')
  List<BlogsData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BlogsModel(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogsModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogsModelImplCopyWith<_$BlogsModelImpl> get copyWith =>
      __$$BlogsModelImplCopyWithImpl<_$BlogsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlogsModelImplToJson(
      this,
    );
  }
}

abstract class _BlogsModel implements BlogsModel {
  factory _BlogsModel(
          {@JsonKey(name: 'Status') final bool? status,
          @JsonKey(name: 'Success') final List<BlogsData>? data}) =
      _$BlogsModelImpl;

  factory _BlogsModel.fromJson(Map<String, dynamic> json) =
      _$BlogsModelImpl.fromJson;

  @override
  @JsonKey(name: 'Status')
  bool? get status;
  @override
  @JsonKey(name: 'Success')
  List<BlogsData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$BlogsModelImplCopyWith<_$BlogsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BlogsData _$BlogsDataFromJson(Map<String, dynamic> json) {
  return _BlogsData.fromJson(json);
}

/// @nodoc
mixin _$BlogsData {
  @JsonKey(name: '_id')
  String? get blogsId => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'author')
  String? get author => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  String? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'estimatedTime')
  String? get estimatedTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlogsDataCopyWith<BlogsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogsDataCopyWith<$Res> {
  factory $BlogsDataCopyWith(BlogsData value, $Res Function(BlogsData) then) =
      _$BlogsDataCopyWithImpl<$Res, BlogsData>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? blogsId,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'author') String? author,
      @JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'category') String? category,
      @JsonKey(name: 'estimatedTime') String? estimatedTime,
      @JsonKey(name: 'date') String? date});
}

/// @nodoc
class _$BlogsDataCopyWithImpl<$Res, $Val extends BlogsData>
    implements $BlogsDataCopyWith<$Res> {
  _$BlogsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blogsId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? author = freezed,
    Object? userId = freezed,
    Object? category = freezed,
    Object? estimatedTime = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      blogsId: freezed == blogsId
          ? _value.blogsId
          : blogsId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      estimatedTime: freezed == estimatedTime
          ? _value.estimatedTime
          : estimatedTime // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlogsDataImplCopyWith<$Res>
    implements $BlogsDataCopyWith<$Res> {
  factory _$$BlogsDataImplCopyWith(
          _$BlogsDataImpl value, $Res Function(_$BlogsDataImpl) then) =
      __$$BlogsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? blogsId,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'author') String? author,
      @JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'category') String? category,
      @JsonKey(name: 'estimatedTime') String? estimatedTime,
      @JsonKey(name: 'date') String? date});
}

/// @nodoc
class __$$BlogsDataImplCopyWithImpl<$Res>
    extends _$BlogsDataCopyWithImpl<$Res, _$BlogsDataImpl>
    implements _$$BlogsDataImplCopyWith<$Res> {
  __$$BlogsDataImplCopyWithImpl(
      _$BlogsDataImpl _value, $Res Function(_$BlogsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blogsId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? author = freezed,
    Object? userId = freezed,
    Object? category = freezed,
    Object? estimatedTime = freezed,
    Object? date = freezed,
  }) {
    return _then(_$BlogsDataImpl(
      blogsId: freezed == blogsId
          ? _value.blogsId
          : blogsId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      estimatedTime: freezed == estimatedTime
          ? _value.estimatedTime
          : estimatedTime // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlogsDataImpl implements _BlogsData {
  _$BlogsDataImpl(
      {@JsonKey(name: '_id') this.blogsId = "",
      @JsonKey(name: 'title') this.title = "",
      @JsonKey(name: 'description') this.description = "",
      @JsonKey(name: 'author') this.author = "",
      @JsonKey(name: 'userId') this.userId = "",
      @JsonKey(name: 'category') this.category = "",
      @JsonKey(name: 'estimatedTime') this.estimatedTime = "",
      @JsonKey(name: 'date') this.date = ""});

  factory _$BlogsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlogsDataImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? blogsId;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'author')
  final String? author;
  @override
  @JsonKey(name: 'userId')
  final String? userId;
  @override
  @JsonKey(name: 'category')
  final String? category;
  @override
  @JsonKey(name: 'estimatedTime')
  final String? estimatedTime;
  @override
  @JsonKey(name: 'date')
  final String? date;

  @override
  String toString() {
    return 'BlogsData(blogsId: $blogsId, title: $title, description: $description, author: $author, userId: $userId, category: $category, estimatedTime: $estimatedTime, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogsDataImpl &&
            (identical(other.blogsId, blogsId) || other.blogsId == blogsId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.estimatedTime, estimatedTime) ||
                other.estimatedTime == estimatedTime) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, blogsId, title, description,
      author, userId, category, estimatedTime, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogsDataImplCopyWith<_$BlogsDataImpl> get copyWith =>
      __$$BlogsDataImplCopyWithImpl<_$BlogsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlogsDataImplToJson(
      this,
    );
  }
}

abstract class _BlogsData implements BlogsData {
  factory _BlogsData(
      {@JsonKey(name: '_id') final String? blogsId,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'author') final String? author,
      @JsonKey(name: 'userId') final String? userId,
      @JsonKey(name: 'category') final String? category,
      @JsonKey(name: 'estimatedTime') final String? estimatedTime,
      @JsonKey(name: 'date') final String? date}) = _$BlogsDataImpl;

  factory _BlogsData.fromJson(Map<String, dynamic> json) =
      _$BlogsDataImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get blogsId;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'author')
  String? get author;
  @override
  @JsonKey(name: 'userId')
  String? get userId;
  @override
  @JsonKey(name: 'category')
  String? get category;
  @override
  @JsonKey(name: 'estimatedTime')
  String? get estimatedTime;
  @override
  @JsonKey(name: 'date')
  String? get date;
  @override
  @JsonKey(ignore: true)
  _$$BlogsDataImplCopyWith<_$BlogsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

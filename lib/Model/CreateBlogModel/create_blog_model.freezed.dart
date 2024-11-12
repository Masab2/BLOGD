// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_blog_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateBlogModel _$CreateBlogModelFromJson(Map<String, dynamic> json) {
  return _CreateBlogModel.fromJson(json);
}

/// @nodoc
mixin _$CreateBlogModel {
  @JsonKey(name: "Status")
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "Success")
  CreateBlogData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateBlogModelCopyWith<CreateBlogModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateBlogModelCopyWith<$Res> {
  factory $CreateBlogModelCopyWith(
          CreateBlogModel value, $Res Function(CreateBlogModel) then) =
      _$CreateBlogModelCopyWithImpl<$Res, CreateBlogModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "Status") bool? status,
      @JsonKey(name: "Success") CreateBlogData? data});

  $CreateBlogDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CreateBlogModelCopyWithImpl<$Res, $Val extends CreateBlogModel>
    implements $CreateBlogModelCopyWith<$Res> {
  _$CreateBlogModelCopyWithImpl(this._value, this._then);

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
              as CreateBlogData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateBlogDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CreateBlogDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateBlogModelImplCopyWith<$Res>
    implements $CreateBlogModelCopyWith<$Res> {
  factory _$$CreateBlogModelImplCopyWith(_$CreateBlogModelImpl value,
          $Res Function(_$CreateBlogModelImpl) then) =
      __$$CreateBlogModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "Status") bool? status,
      @JsonKey(name: "Success") CreateBlogData? data});

  @override
  $CreateBlogDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CreateBlogModelImplCopyWithImpl<$Res>
    extends _$CreateBlogModelCopyWithImpl<$Res, _$CreateBlogModelImpl>
    implements _$$CreateBlogModelImplCopyWith<$Res> {
  __$$CreateBlogModelImplCopyWithImpl(
      _$CreateBlogModelImpl _value, $Res Function(_$CreateBlogModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CreateBlogModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreateBlogData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateBlogModelImpl implements _CreateBlogModel {
  _$CreateBlogModelImpl(
      {@JsonKey(name: "Status") this.status,
      @JsonKey(name: "Success") this.data});

  factory _$CreateBlogModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateBlogModelImplFromJson(json);

  @override
  @JsonKey(name: "Status")
  final bool? status;
  @override
  @JsonKey(name: "Success")
  final CreateBlogData? data;

  @override
  String toString() {
    return 'CreateBlogModel(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateBlogModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateBlogModelImplCopyWith<_$CreateBlogModelImpl> get copyWith =>
      __$$CreateBlogModelImplCopyWithImpl<_$CreateBlogModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateBlogModelImplToJson(
      this,
    );
  }
}

abstract class _CreateBlogModel implements CreateBlogModel {
  factory _CreateBlogModel(
          {@JsonKey(name: "Status") final bool? status,
          @JsonKey(name: "Success") final CreateBlogData? data}) =
      _$CreateBlogModelImpl;

  factory _CreateBlogModel.fromJson(Map<String, dynamic> json) =
      _$CreateBlogModelImpl.fromJson;

  @override
  @JsonKey(name: "Status")
  bool? get status;
  @override
  @JsonKey(name: "Success")
  CreateBlogData? get data;
  @override
  @JsonKey(ignore: true)
  _$$CreateBlogModelImplCopyWith<_$CreateBlogModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateBlogData _$CreateBlogDataFromJson(Map<String, dynamic> json) {
  return _CreateBlogData.fromJson(json);
}

/// @nodoc
mixin _$CreateBlogData {
  @JsonKey(name: '_id')
  String get blogsId => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'author')
  String get author => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  String get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'estimatedTime')
  String get estimatedTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateBlogDataCopyWith<CreateBlogData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateBlogDataCopyWith<$Res> {
  factory $CreateBlogDataCopyWith(
          CreateBlogData value, $Res Function(CreateBlogData) then) =
      _$CreateBlogDataCopyWithImpl<$Res, CreateBlogData>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String blogsId,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'author') String author,
      @JsonKey(name: 'userId') String userId,
      @JsonKey(name: 'category') String category,
      @JsonKey(name: 'estimatedTime') String estimatedTime,
      @JsonKey(name: 'date') String date});
}

/// @nodoc
class _$CreateBlogDataCopyWithImpl<$Res, $Val extends CreateBlogData>
    implements $CreateBlogDataCopyWith<$Res> {
  _$CreateBlogDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blogsId = null,
    Object? title = null,
    Object? description = null,
    Object? author = null,
    Object? userId = null,
    Object? category = null,
    Object? estimatedTime = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      blogsId: null == blogsId
          ? _value.blogsId
          : blogsId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      estimatedTime: null == estimatedTime
          ? _value.estimatedTime
          : estimatedTime // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateBlogDataImplCopyWith<$Res>
    implements $CreateBlogDataCopyWith<$Res> {
  factory _$$CreateBlogDataImplCopyWith(_$CreateBlogDataImpl value,
          $Res Function(_$CreateBlogDataImpl) then) =
      __$$CreateBlogDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String blogsId,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'author') String author,
      @JsonKey(name: 'userId') String userId,
      @JsonKey(name: 'category') String category,
      @JsonKey(name: 'estimatedTime') String estimatedTime,
      @JsonKey(name: 'date') String date});
}

/// @nodoc
class __$$CreateBlogDataImplCopyWithImpl<$Res>
    extends _$CreateBlogDataCopyWithImpl<$Res, _$CreateBlogDataImpl>
    implements _$$CreateBlogDataImplCopyWith<$Res> {
  __$$CreateBlogDataImplCopyWithImpl(
      _$CreateBlogDataImpl _value, $Res Function(_$CreateBlogDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blogsId = null,
    Object? title = null,
    Object? description = null,
    Object? author = null,
    Object? userId = null,
    Object? category = null,
    Object? estimatedTime = null,
    Object? date = null,
  }) {
    return _then(_$CreateBlogDataImpl(
      blogsId: null == blogsId
          ? _value.blogsId
          : blogsId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      estimatedTime: null == estimatedTime
          ? _value.estimatedTime
          : estimatedTime // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateBlogDataImpl implements _CreateBlogData {
  _$CreateBlogDataImpl(
      {@JsonKey(name: '_id') this.blogsId = "",
      @JsonKey(name: 'title') this.title = "",
      @JsonKey(name: 'description') this.description = "",
      @JsonKey(name: 'author') this.author = "",
      @JsonKey(name: 'userId') this.userId = "",
      @JsonKey(name: 'category') this.category = "",
      @JsonKey(name: 'estimatedTime') this.estimatedTime = "",
      @JsonKey(name: 'date') this.date = ""});

  factory _$CreateBlogDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateBlogDataImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String blogsId;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'author')
  final String author;
  @override
  @JsonKey(name: 'userId')
  final String userId;
  @override
  @JsonKey(name: 'category')
  final String category;
  @override
  @JsonKey(name: 'estimatedTime')
  final String estimatedTime;
  @override
  @JsonKey(name: 'date')
  final String date;

  @override
  String toString() {
    return 'CreateBlogData(blogsId: $blogsId, title: $title, description: $description, author: $author, userId: $userId, category: $category, estimatedTime: $estimatedTime, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateBlogDataImpl &&
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
  _$$CreateBlogDataImplCopyWith<_$CreateBlogDataImpl> get copyWith =>
      __$$CreateBlogDataImplCopyWithImpl<_$CreateBlogDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateBlogDataImplToJson(
      this,
    );
  }
}

abstract class _CreateBlogData implements CreateBlogData {
  factory _CreateBlogData(
      {@JsonKey(name: '_id') final String blogsId,
      @JsonKey(name: 'title') final String title,
      @JsonKey(name: 'description') final String description,
      @JsonKey(name: 'author') final String author,
      @JsonKey(name: 'userId') final String userId,
      @JsonKey(name: 'category') final String category,
      @JsonKey(name: 'estimatedTime') final String estimatedTime,
      @JsonKey(name: 'date') final String date}) = _$CreateBlogDataImpl;

  factory _CreateBlogData.fromJson(Map<String, dynamic> json) =
      _$CreateBlogDataImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get blogsId;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'author')
  String get author;
  @override
  @JsonKey(name: 'userId')
  String get userId;
  @override
  @JsonKey(name: 'category')
  String get category;
  @override
  @JsonKey(name: 'estimatedTime')
  String get estimatedTime;
  @override
  @JsonKey(name: 'date')
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$CreateBlogDataImplCopyWith<_$CreateBlogDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

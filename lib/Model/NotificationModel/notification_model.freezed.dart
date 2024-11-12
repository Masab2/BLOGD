// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) {
  return _NotificationModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationModel {
  @JsonKey(name: "Status")
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "Success")
  List<NotificationList>? get notificationList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationModelCopyWith<NotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationModelCopyWith<$Res> {
  factory $NotificationModelCopyWith(
          NotificationModel value, $Res Function(NotificationModel) then) =
      _$NotificationModelCopyWithImpl<$Res, NotificationModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "Status") bool? status,
      @JsonKey(name: "Success") List<NotificationList>? notificationList});
}

/// @nodoc
class _$NotificationModelCopyWithImpl<$Res, $Val extends NotificationModel>
    implements $NotificationModelCopyWith<$Res> {
  _$NotificationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? notificationList = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      notificationList: freezed == notificationList
          ? _value.notificationList
          : notificationList // ignore: cast_nullable_to_non_nullable
              as List<NotificationList>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationModelImplCopyWith<$Res>
    implements $NotificationModelCopyWith<$Res> {
  factory _$$NotificationModelImplCopyWith(_$NotificationModelImpl value,
          $Res Function(_$NotificationModelImpl) then) =
      __$$NotificationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "Status") bool? status,
      @JsonKey(name: "Success") List<NotificationList>? notificationList});
}

/// @nodoc
class __$$NotificationModelImplCopyWithImpl<$Res>
    extends _$NotificationModelCopyWithImpl<$Res, _$NotificationModelImpl>
    implements _$$NotificationModelImplCopyWith<$Res> {
  __$$NotificationModelImplCopyWithImpl(_$NotificationModelImpl _value,
      $Res Function(_$NotificationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? notificationList = freezed,
  }) {
    return _then(_$NotificationModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      notificationList: freezed == notificationList
          ? _value._notificationList
          : notificationList // ignore: cast_nullable_to_non_nullable
              as List<NotificationList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationModelImpl implements _NotificationModel {
  _$NotificationModelImpl(
      {@JsonKey(name: "Status") this.status,
      @JsonKey(name: "Success") final List<NotificationList>? notificationList})
      : _notificationList = notificationList;

  factory _$NotificationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationModelImplFromJson(json);

  @override
  @JsonKey(name: "Status")
  final bool? status;
  final List<NotificationList>? _notificationList;
  @override
  @JsonKey(name: "Success")
  List<NotificationList>? get notificationList {
    final value = _notificationList;
    if (value == null) return null;
    if (_notificationList is EqualUnmodifiableListView)
      return _notificationList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NotificationModel(status: $status, notificationList: $notificationList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._notificationList, _notificationList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_notificationList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationModelImplCopyWith<_$NotificationModelImpl> get copyWith =>
      __$$NotificationModelImplCopyWithImpl<_$NotificationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationModelImplToJson(
      this,
    );
  }
}

abstract class _NotificationModel implements NotificationModel {
  factory _NotificationModel(
          {@JsonKey(name: "Status") final bool? status,
          @JsonKey(name: "Success")
          final List<NotificationList>? notificationList}) =
      _$NotificationModelImpl;

  factory _NotificationModel.fromJson(Map<String, dynamic> json) =
      _$NotificationModelImpl.fromJson;

  @override
  @JsonKey(name: "Status")
  bool? get status;
  @override
  @JsonKey(name: "Success")
  List<NotificationList>? get notificationList;
  @override
  @JsonKey(ignore: true)
  _$$NotificationModelImplCopyWith<_$NotificationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NotificationList _$NotificationListFromJson(Map<String, dynamic> json) {
  return _NotificationList.fromJson(json);
}

/// @nodoc
mixin _$NotificationList {
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "notificationTitle")
  String get notifsTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "blogId")
  String get blogId => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationListCopyWith<NotificationList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationListCopyWith<$Res> {
  factory $NotificationListCopyWith(
          NotificationList value, $Res Function(NotificationList) then) =
      _$NotificationListCopyWithImpl<$Res, NotificationList>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      @JsonKey(name: "notificationTitle") String notifsTitle,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "userId") String userId,
      @JsonKey(name: "blogId") String blogId,
      @JsonKey(name: "date") String date});
}

/// @nodoc
class _$NotificationListCopyWithImpl<$Res, $Val extends NotificationList>
    implements $NotificationListCopyWith<$Res> {
  _$NotificationListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? notifsTitle = null,
    Object? title = null,
    Object? userId = null,
    Object? blogId = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      notifsTitle: null == notifsTitle
          ? _value.notifsTitle
          : notifsTitle // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      blogId: null == blogId
          ? _value.blogId
          : blogId // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationListImplCopyWith<$Res>
    implements $NotificationListCopyWith<$Res> {
  factory _$$NotificationListImplCopyWith(_$NotificationListImpl value,
          $Res Function(_$NotificationListImpl) then) =
      __$$NotificationListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      @JsonKey(name: "notificationTitle") String notifsTitle,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "userId") String userId,
      @JsonKey(name: "blogId") String blogId,
      @JsonKey(name: "date") String date});
}

/// @nodoc
class __$$NotificationListImplCopyWithImpl<$Res>
    extends _$NotificationListCopyWithImpl<$Res, _$NotificationListImpl>
    implements _$$NotificationListImplCopyWith<$Res> {
  __$$NotificationListImplCopyWithImpl(_$NotificationListImpl _value,
      $Res Function(_$NotificationListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? notifsTitle = null,
    Object? title = null,
    Object? userId = null,
    Object? blogId = null,
    Object? date = null,
  }) {
    return _then(_$NotificationListImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      notifsTitle: null == notifsTitle
          ? _value.notifsTitle
          : notifsTitle // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      blogId: null == blogId
          ? _value.blogId
          : blogId // ignore: cast_nullable_to_non_nullable
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
class _$NotificationListImpl implements _NotificationList {
  _$NotificationListImpl(
      {@JsonKey(name: "_id") this.id = "",
      @JsonKey(name: "notificationTitle") this.notifsTitle = "",
      @JsonKey(name: "title") this.title = "",
      @JsonKey(name: "userId") this.userId = "",
      @JsonKey(name: "blogId") this.blogId = "",
      @JsonKey(name: "date") this.date = ""});

  factory _$NotificationListImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationListImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  @JsonKey(name: "notificationTitle")
  final String notifsTitle;
  @override
  @JsonKey(name: "title")
  final String title;
  @override
  @JsonKey(name: "userId")
  final String userId;
  @override
  @JsonKey(name: "blogId")
  final String blogId;
  @override
  @JsonKey(name: "date")
  final String date;

  @override
  String toString() {
    return 'NotificationList(id: $id, notifsTitle: $notifsTitle, title: $title, userId: $userId, blogId: $blogId, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationListImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.notifsTitle, notifsTitle) ||
                other.notifsTitle == notifsTitle) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.blogId, blogId) || other.blogId == blogId) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, notifsTitle, title, userId, blogId, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationListImplCopyWith<_$NotificationListImpl> get copyWith =>
      __$$NotificationListImplCopyWithImpl<_$NotificationListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationListImplToJson(
      this,
    );
  }
}

abstract class _NotificationList implements NotificationList {
  factory _NotificationList(
      {@JsonKey(name: "_id") final String id,
      @JsonKey(name: "notificationTitle") final String notifsTitle,
      @JsonKey(name: "title") final String title,
      @JsonKey(name: "userId") final String userId,
      @JsonKey(name: "blogId") final String blogId,
      @JsonKey(name: "date") final String date}) = _$NotificationListImpl;

  factory _NotificationList.fromJson(Map<String, dynamic> json) =
      _$NotificationListImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  @JsonKey(name: "notificationTitle")
  String get notifsTitle;
  @override
  @JsonKey(name: "title")
  String get title;
  @override
  @JsonKey(name: "userId")
  String get userId;
  @override
  @JsonKey(name: "blogId")
  String get blogId;
  @override
  @JsonKey(name: "date")
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$NotificationListImplCopyWith<_$NotificationListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

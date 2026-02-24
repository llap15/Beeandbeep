// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ReviewModel _$ReviewModelFromJson(Map<String, dynamic> json) {
  return _ReviewModel.fromJson(json);
}

/// @nodoc
mixin _$ReviewModel {
  String get id => throw _privateConstructorUsedError;
  String get listingId => throw _privateConstructorUsedError;
  String get bookingId => throw _privateConstructorUsedError;
  String get authorId => throw _privateConstructorUsedError;
  String get targetId => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  ReviewType get type => throw _privateConstructorUsedError;
  RatingBreakdownModel get breakdown => throw _privateConstructorUsedError;
  UserModel? get author => throw _privateConstructorUsedError;
  String? get hostResponse => throw _privateConstructorUsedError;
  DateTime? get hostRespondedAt => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this ReviewModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewModelCopyWith<ReviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewModelCopyWith<$Res> {
  factory $ReviewModelCopyWith(
    ReviewModel value,
    $Res Function(ReviewModel) then,
  ) = _$ReviewModelCopyWithImpl<$Res, ReviewModel>;
  @useResult
  $Res call({
    String id,
    String listingId,
    String bookingId,
    String authorId,
    String targetId,
    double rating,
    String comment,
    ReviewType type,
    RatingBreakdownModel breakdown,
    UserModel? author,
    String? hostResponse,
    DateTime? hostRespondedAt,
    DateTime? createdAt,
  });

  $RatingBreakdownModelCopyWith<$Res> get breakdown;
  $UserModelCopyWith<$Res>? get author;
}

/// @nodoc
class _$ReviewModelCopyWithImpl<$Res, $Val extends ReviewModel>
    implements $ReviewModelCopyWith<$Res> {
  _$ReviewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? listingId = null,
    Object? bookingId = null,
    Object? authorId = null,
    Object? targetId = null,
    Object? rating = null,
    Object? comment = null,
    Object? type = null,
    Object? breakdown = null,
    Object? author = freezed,
    Object? hostResponse = freezed,
    Object? hostRespondedAt = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            listingId: null == listingId
                ? _value.listingId
                : listingId // ignore: cast_nullable_to_non_nullable
                      as String,
            bookingId: null == bookingId
                ? _value.bookingId
                : bookingId // ignore: cast_nullable_to_non_nullable
                      as String,
            authorId: null == authorId
                ? _value.authorId
                : authorId // ignore: cast_nullable_to_non_nullable
                      as String,
            targetId: null == targetId
                ? _value.targetId
                : targetId // ignore: cast_nullable_to_non_nullable
                      as String,
            rating: null == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                      as double,
            comment: null == comment
                ? _value.comment
                : comment // ignore: cast_nullable_to_non_nullable
                      as String,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as ReviewType,
            breakdown: null == breakdown
                ? _value.breakdown
                : breakdown // ignore: cast_nullable_to_non_nullable
                      as RatingBreakdownModel,
            author: freezed == author
                ? _value.author
                : author // ignore: cast_nullable_to_non_nullable
                      as UserModel?,
            hostResponse: freezed == hostResponse
                ? _value.hostResponse
                : hostResponse // ignore: cast_nullable_to_non_nullable
                      as String?,
            hostRespondedAt: freezed == hostRespondedAt
                ? _value.hostRespondedAt
                : hostRespondedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }

  /// Create a copy of ReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RatingBreakdownModelCopyWith<$Res> get breakdown {
    return $RatingBreakdownModelCopyWith<$Res>(_value.breakdown, (value) {
      return _then(_value.copyWith(breakdown: value) as $Val);
    });
  }

  /// Create a copy of ReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get author {
    if (_value.author == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.author!, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReviewModelImplCopyWith<$Res>
    implements $ReviewModelCopyWith<$Res> {
  factory _$$ReviewModelImplCopyWith(
    _$ReviewModelImpl value,
    $Res Function(_$ReviewModelImpl) then,
  ) = __$$ReviewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String listingId,
    String bookingId,
    String authorId,
    String targetId,
    double rating,
    String comment,
    ReviewType type,
    RatingBreakdownModel breakdown,
    UserModel? author,
    String? hostResponse,
    DateTime? hostRespondedAt,
    DateTime? createdAt,
  });

  @override
  $RatingBreakdownModelCopyWith<$Res> get breakdown;
  @override
  $UserModelCopyWith<$Res>? get author;
}

/// @nodoc
class __$$ReviewModelImplCopyWithImpl<$Res>
    extends _$ReviewModelCopyWithImpl<$Res, _$ReviewModelImpl>
    implements _$$ReviewModelImplCopyWith<$Res> {
  __$$ReviewModelImplCopyWithImpl(
    _$ReviewModelImpl _value,
    $Res Function(_$ReviewModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? listingId = null,
    Object? bookingId = null,
    Object? authorId = null,
    Object? targetId = null,
    Object? rating = null,
    Object? comment = null,
    Object? type = null,
    Object? breakdown = null,
    Object? author = freezed,
    Object? hostResponse = freezed,
    Object? hostRespondedAt = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _$ReviewModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        listingId: null == listingId
            ? _value.listingId
            : listingId // ignore: cast_nullable_to_non_nullable
                  as String,
        bookingId: null == bookingId
            ? _value.bookingId
            : bookingId // ignore: cast_nullable_to_non_nullable
                  as String,
        authorId: null == authorId
            ? _value.authorId
            : authorId // ignore: cast_nullable_to_non_nullable
                  as String,
        targetId: null == targetId
            ? _value.targetId
            : targetId // ignore: cast_nullable_to_non_nullable
                  as String,
        rating: null == rating
            ? _value.rating
            : rating // ignore: cast_nullable_to_non_nullable
                  as double,
        comment: null == comment
            ? _value.comment
            : comment // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as ReviewType,
        breakdown: null == breakdown
            ? _value.breakdown
            : breakdown // ignore: cast_nullable_to_non_nullable
                  as RatingBreakdownModel,
        author: freezed == author
            ? _value.author
            : author // ignore: cast_nullable_to_non_nullable
                  as UserModel?,
        hostResponse: freezed == hostResponse
            ? _value.hostResponse
            : hostResponse // ignore: cast_nullable_to_non_nullable
                  as String?,
        hostRespondedAt: freezed == hostRespondedAt
            ? _value.hostRespondedAt
            : hostRespondedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewModelImpl implements _ReviewModel {
  const _$ReviewModelImpl({
    required this.id,
    required this.listingId,
    required this.bookingId,
    required this.authorId,
    required this.targetId,
    required this.rating,
    required this.comment,
    required this.type,
    this.breakdown = const RatingBreakdownModel(),
    this.author,
    this.hostResponse,
    this.hostRespondedAt,
    this.createdAt,
  });

  factory _$ReviewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewModelImplFromJson(json);

  @override
  final String id;
  @override
  final String listingId;
  @override
  final String bookingId;
  @override
  final String authorId;
  @override
  final String targetId;
  @override
  final double rating;
  @override
  final String comment;
  @override
  final ReviewType type;
  @override
  @JsonKey()
  final RatingBreakdownModel breakdown;
  @override
  final UserModel? author;
  @override
  final String? hostResponse;
  @override
  final DateTime? hostRespondedAt;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'ReviewModel(id: $id, listingId: $listingId, bookingId: $bookingId, authorId: $authorId, targetId: $targetId, rating: $rating, comment: $comment, type: $type, breakdown: $breakdown, author: $author, hostResponse: $hostResponse, hostRespondedAt: $hostRespondedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.listingId, listingId) ||
                other.listingId == listingId) &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.breakdown, breakdown) ||
                other.breakdown == breakdown) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.hostResponse, hostResponse) ||
                other.hostResponse == hostResponse) &&
            (identical(other.hostRespondedAt, hostRespondedAt) ||
                other.hostRespondedAt == hostRespondedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    listingId,
    bookingId,
    authorId,
    targetId,
    rating,
    comment,
    type,
    breakdown,
    author,
    hostResponse,
    hostRespondedAt,
    createdAt,
  );

  /// Create a copy of ReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewModelImplCopyWith<_$ReviewModelImpl> get copyWith =>
      __$$ReviewModelImplCopyWithImpl<_$ReviewModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewModelImplToJson(this);
  }
}

abstract class _ReviewModel implements ReviewModel {
  const factory _ReviewModel({
    required final String id,
    required final String listingId,
    required final String bookingId,
    required final String authorId,
    required final String targetId,
    required final double rating,
    required final String comment,
    required final ReviewType type,
    final RatingBreakdownModel breakdown,
    final UserModel? author,
    final String? hostResponse,
    final DateTime? hostRespondedAt,
    final DateTime? createdAt,
  }) = _$ReviewModelImpl;

  factory _ReviewModel.fromJson(Map<String, dynamic> json) =
      _$ReviewModelImpl.fromJson;

  @override
  String get id;
  @override
  String get listingId;
  @override
  String get bookingId;
  @override
  String get authorId;
  @override
  String get targetId;
  @override
  double get rating;
  @override
  String get comment;
  @override
  ReviewType get type;
  @override
  RatingBreakdownModel get breakdown;
  @override
  UserModel? get author;
  @override
  String? get hostResponse;
  @override
  DateTime? get hostRespondedAt;
  @override
  DateTime? get createdAt;

  /// Create a copy of ReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewModelImplCopyWith<_$ReviewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RatingBreakdownModel _$RatingBreakdownModelFromJson(Map<String, dynamic> json) {
  return _RatingBreakdownModel.fromJson(json);
}

/// @nodoc
mixin _$RatingBreakdownModel {
  double get cleanliness => throw _privateConstructorUsedError;
  double get accuracy => throw _privateConstructorUsedError;
  double get checkIn => throw _privateConstructorUsedError;
  double get communication => throw _privateConstructorUsedError;
  double get location => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  /// Serializes this RatingBreakdownModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RatingBreakdownModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RatingBreakdownModelCopyWith<RatingBreakdownModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingBreakdownModelCopyWith<$Res> {
  factory $RatingBreakdownModelCopyWith(
    RatingBreakdownModel value,
    $Res Function(RatingBreakdownModel) then,
  ) = _$RatingBreakdownModelCopyWithImpl<$Res, RatingBreakdownModel>;
  @useResult
  $Res call({
    double cleanliness,
    double accuracy,
    double checkIn,
    double communication,
    double location,
    double value,
  });
}

/// @nodoc
class _$RatingBreakdownModelCopyWithImpl<
  $Res,
  $Val extends RatingBreakdownModel
>
    implements $RatingBreakdownModelCopyWith<$Res> {
  _$RatingBreakdownModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RatingBreakdownModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cleanliness = null,
    Object? accuracy = null,
    Object? checkIn = null,
    Object? communication = null,
    Object? location = null,
    Object? value = null,
  }) {
    return _then(
      _value.copyWith(
            cleanliness: null == cleanliness
                ? _value.cleanliness
                : cleanliness // ignore: cast_nullable_to_non_nullable
                      as double,
            accuracy: null == accuracy
                ? _value.accuracy
                : accuracy // ignore: cast_nullable_to_non_nullable
                      as double,
            checkIn: null == checkIn
                ? _value.checkIn
                : checkIn // ignore: cast_nullable_to_non_nullable
                      as double,
            communication: null == communication
                ? _value.communication
                : communication // ignore: cast_nullable_to_non_nullable
                      as double,
            location: null == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as double,
            value: null == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RatingBreakdownModelImplCopyWith<$Res>
    implements $RatingBreakdownModelCopyWith<$Res> {
  factory _$$RatingBreakdownModelImplCopyWith(
    _$RatingBreakdownModelImpl value,
    $Res Function(_$RatingBreakdownModelImpl) then,
  ) = __$$RatingBreakdownModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    double cleanliness,
    double accuracy,
    double checkIn,
    double communication,
    double location,
    double value,
  });
}

/// @nodoc
class __$$RatingBreakdownModelImplCopyWithImpl<$Res>
    extends _$RatingBreakdownModelCopyWithImpl<$Res, _$RatingBreakdownModelImpl>
    implements _$$RatingBreakdownModelImplCopyWith<$Res> {
  __$$RatingBreakdownModelImplCopyWithImpl(
    _$RatingBreakdownModelImpl _value,
    $Res Function(_$RatingBreakdownModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RatingBreakdownModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cleanliness = null,
    Object? accuracy = null,
    Object? checkIn = null,
    Object? communication = null,
    Object? location = null,
    Object? value = null,
  }) {
    return _then(
      _$RatingBreakdownModelImpl(
        cleanliness: null == cleanliness
            ? _value.cleanliness
            : cleanliness // ignore: cast_nullable_to_non_nullable
                  as double,
        accuracy: null == accuracy
            ? _value.accuracy
            : accuracy // ignore: cast_nullable_to_non_nullable
                  as double,
        checkIn: null == checkIn
            ? _value.checkIn
            : checkIn // ignore: cast_nullable_to_non_nullable
                  as double,
        communication: null == communication
            ? _value.communication
            : communication // ignore: cast_nullable_to_non_nullable
                  as double,
        location: null == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as double,
        value: null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RatingBreakdownModelImpl implements _RatingBreakdownModel {
  const _$RatingBreakdownModelImpl({
    this.cleanliness = 0.0,
    this.accuracy = 0.0,
    this.checkIn = 0.0,
    this.communication = 0.0,
    this.location = 0.0,
    this.value = 0.0,
  });

  factory _$RatingBreakdownModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingBreakdownModelImplFromJson(json);

  @override
  @JsonKey()
  final double cleanliness;
  @override
  @JsonKey()
  final double accuracy;
  @override
  @JsonKey()
  final double checkIn;
  @override
  @JsonKey()
  final double communication;
  @override
  @JsonKey()
  final double location;
  @override
  @JsonKey()
  final double value;

  @override
  String toString() {
    return 'RatingBreakdownModel(cleanliness: $cleanliness, accuracy: $accuracy, checkIn: $checkIn, communication: $communication, location: $location, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingBreakdownModelImpl &&
            (identical(other.cleanliness, cleanliness) ||
                other.cleanliness == cleanliness) &&
            (identical(other.accuracy, accuracy) ||
                other.accuracy == accuracy) &&
            (identical(other.checkIn, checkIn) || other.checkIn == checkIn) &&
            (identical(other.communication, communication) ||
                other.communication == communication) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    cleanliness,
    accuracy,
    checkIn,
    communication,
    location,
    value,
  );

  /// Create a copy of RatingBreakdownModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingBreakdownModelImplCopyWith<_$RatingBreakdownModelImpl>
  get copyWith =>
      __$$RatingBreakdownModelImplCopyWithImpl<_$RatingBreakdownModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingBreakdownModelImplToJson(this);
  }
}

abstract class _RatingBreakdownModel implements RatingBreakdownModel {
  const factory _RatingBreakdownModel({
    final double cleanliness,
    final double accuracy,
    final double checkIn,
    final double communication,
    final double location,
    final double value,
  }) = _$RatingBreakdownModelImpl;

  factory _RatingBreakdownModel.fromJson(Map<String, dynamic> json) =
      _$RatingBreakdownModelImpl.fromJson;

  @override
  double get cleanliness;
  @override
  double get accuracy;
  @override
  double get checkIn;
  @override
  double get communication;
  @override
  double get location;
  @override
  double get value;

  /// Create a copy of RatingBreakdownModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RatingBreakdownModelImplCopyWith<_$RatingBreakdownModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

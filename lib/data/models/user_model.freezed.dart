// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  DateTime? get dateOfBirth => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  bool get isHost => throw _privateConstructorUsedError;
  bool get isSuperhost => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;
  bool get isEmailVerified => throw _privateConstructorUsedError;
  bool get isPhoneVerified => throw _privateConstructorUsedError;
  bool get isIdVerified => throw _privateConstructorUsedError;
  double get hostRating => throw _privateConstructorUsedError;
  int get hostReviewCount => throw _privateConstructorUsedError;
  int get totalListings => throw _privateConstructorUsedError;
  List<String> get wishlistIds => throw _privateConstructorUsedError;
  List<String> get languages => throw _privateConstructorUsedError;
  String get preferredLanguage => throw _privateConstructorUsedError;
  String get preferredCurrency => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get lastLoginAt => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call({
    String id,
    String email,
    String firstName,
    String lastName,
    String bio,
    String? avatarUrl,
    String? phoneNumber,
    DateTime? dateOfBirth,
    String location,
    bool isHost,
    bool isSuperhost,
    bool isVerified,
    bool isEmailVerified,
    bool isPhoneVerified,
    bool isIdVerified,
    double hostRating,
    int hostReviewCount,
    int totalListings,
    List<String> wishlistIds,
    List<String> languages,
    String preferredLanguage,
    String preferredCurrency,
    DateTime? createdAt,
    DateTime? lastLoginAt,
  });
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? bio = null,
    Object? avatarUrl = freezed,
    Object? phoneNumber = freezed,
    Object? dateOfBirth = freezed,
    Object? location = null,
    Object? isHost = null,
    Object? isSuperhost = null,
    Object? isVerified = null,
    Object? isEmailVerified = null,
    Object? isPhoneVerified = null,
    Object? isIdVerified = null,
    Object? hostRating = null,
    Object? hostReviewCount = null,
    Object? totalListings = null,
    Object? wishlistIds = null,
    Object? languages = null,
    Object? preferredLanguage = null,
    Object? preferredCurrency = null,
    Object? createdAt = freezed,
    Object? lastLoginAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            firstName: null == firstName
                ? _value.firstName
                : firstName // ignore: cast_nullable_to_non_nullable
                      as String,
            lastName: null == lastName
                ? _value.lastName
                : lastName // ignore: cast_nullable_to_non_nullable
                      as String,
            bio: null == bio
                ? _value.bio
                : bio // ignore: cast_nullable_to_non_nullable
                      as String,
            avatarUrl: freezed == avatarUrl
                ? _value.avatarUrl
                : avatarUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            phoneNumber: freezed == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                      as String?,
            dateOfBirth: freezed == dateOfBirth
                ? _value.dateOfBirth
                : dateOfBirth // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            location: null == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as String,
            isHost: null == isHost
                ? _value.isHost
                : isHost // ignore: cast_nullable_to_non_nullable
                      as bool,
            isSuperhost: null == isSuperhost
                ? _value.isSuperhost
                : isSuperhost // ignore: cast_nullable_to_non_nullable
                      as bool,
            isVerified: null == isVerified
                ? _value.isVerified
                : isVerified // ignore: cast_nullable_to_non_nullable
                      as bool,
            isEmailVerified: null == isEmailVerified
                ? _value.isEmailVerified
                : isEmailVerified // ignore: cast_nullable_to_non_nullable
                      as bool,
            isPhoneVerified: null == isPhoneVerified
                ? _value.isPhoneVerified
                : isPhoneVerified // ignore: cast_nullable_to_non_nullable
                      as bool,
            isIdVerified: null == isIdVerified
                ? _value.isIdVerified
                : isIdVerified // ignore: cast_nullable_to_non_nullable
                      as bool,
            hostRating: null == hostRating
                ? _value.hostRating
                : hostRating // ignore: cast_nullable_to_non_nullable
                      as double,
            hostReviewCount: null == hostReviewCount
                ? _value.hostReviewCount
                : hostReviewCount // ignore: cast_nullable_to_non_nullable
                      as int,
            totalListings: null == totalListings
                ? _value.totalListings
                : totalListings // ignore: cast_nullable_to_non_nullable
                      as int,
            wishlistIds: null == wishlistIds
                ? _value.wishlistIds
                : wishlistIds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            languages: null == languages
                ? _value.languages
                : languages // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            preferredLanguage: null == preferredLanguage
                ? _value.preferredLanguage
                : preferredLanguage // ignore: cast_nullable_to_non_nullable
                      as String,
            preferredCurrency: null == preferredCurrency
                ? _value.preferredCurrency
                : preferredCurrency // ignore: cast_nullable_to_non_nullable
                      as String,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            lastLoginAt: freezed == lastLoginAt
                ? _value.lastLoginAt
                : lastLoginAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
    _$UserModelImpl value,
    $Res Function(_$UserModelImpl) then,
  ) = __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String email,
    String firstName,
    String lastName,
    String bio,
    String? avatarUrl,
    String? phoneNumber,
    DateTime? dateOfBirth,
    String location,
    bool isHost,
    bool isSuperhost,
    bool isVerified,
    bool isEmailVerified,
    bool isPhoneVerified,
    bool isIdVerified,
    double hostRating,
    int hostReviewCount,
    int totalListings,
    List<String> wishlistIds,
    List<String> languages,
    String preferredLanguage,
    String preferredCurrency,
    DateTime? createdAt,
    DateTime? lastLoginAt,
  });
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
    _$UserModelImpl _value,
    $Res Function(_$UserModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? bio = null,
    Object? avatarUrl = freezed,
    Object? phoneNumber = freezed,
    Object? dateOfBirth = freezed,
    Object? location = null,
    Object? isHost = null,
    Object? isSuperhost = null,
    Object? isVerified = null,
    Object? isEmailVerified = null,
    Object? isPhoneVerified = null,
    Object? isIdVerified = null,
    Object? hostRating = null,
    Object? hostReviewCount = null,
    Object? totalListings = null,
    Object? wishlistIds = null,
    Object? languages = null,
    Object? preferredLanguage = null,
    Object? preferredCurrency = null,
    Object? createdAt = freezed,
    Object? lastLoginAt = freezed,
  }) {
    return _then(
      _$UserModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        firstName: null == firstName
            ? _value.firstName
            : firstName // ignore: cast_nullable_to_non_nullable
                  as String,
        lastName: null == lastName
            ? _value.lastName
            : lastName // ignore: cast_nullable_to_non_nullable
                  as String,
        bio: null == bio
            ? _value.bio
            : bio // ignore: cast_nullable_to_non_nullable
                  as String,
        avatarUrl: freezed == avatarUrl
            ? _value.avatarUrl
            : avatarUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        phoneNumber: freezed == phoneNumber
            ? _value.phoneNumber
            : phoneNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
        dateOfBirth: freezed == dateOfBirth
            ? _value.dateOfBirth
            : dateOfBirth // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        location: null == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as String,
        isHost: null == isHost
            ? _value.isHost
            : isHost // ignore: cast_nullable_to_non_nullable
                  as bool,
        isSuperhost: null == isSuperhost
            ? _value.isSuperhost
            : isSuperhost // ignore: cast_nullable_to_non_nullable
                  as bool,
        isVerified: null == isVerified
            ? _value.isVerified
            : isVerified // ignore: cast_nullable_to_non_nullable
                  as bool,
        isEmailVerified: null == isEmailVerified
            ? _value.isEmailVerified
            : isEmailVerified // ignore: cast_nullable_to_non_nullable
                  as bool,
        isPhoneVerified: null == isPhoneVerified
            ? _value.isPhoneVerified
            : isPhoneVerified // ignore: cast_nullable_to_non_nullable
                  as bool,
        isIdVerified: null == isIdVerified
            ? _value.isIdVerified
            : isIdVerified // ignore: cast_nullable_to_non_nullable
                  as bool,
        hostRating: null == hostRating
            ? _value.hostRating
            : hostRating // ignore: cast_nullable_to_non_nullable
                  as double,
        hostReviewCount: null == hostReviewCount
            ? _value.hostReviewCount
            : hostReviewCount // ignore: cast_nullable_to_non_nullable
                  as int,
        totalListings: null == totalListings
            ? _value.totalListings
            : totalListings // ignore: cast_nullable_to_non_nullable
                  as int,
        wishlistIds: null == wishlistIds
            ? _value._wishlistIds
            : wishlistIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        languages: null == languages
            ? _value._languages
            : languages // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        preferredLanguage: null == preferredLanguage
            ? _value.preferredLanguage
            : preferredLanguage // ignore: cast_nullable_to_non_nullable
                  as String,
        preferredCurrency: null == preferredCurrency
            ? _value.preferredCurrency
            : preferredCurrency // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        lastLoginAt: freezed == lastLoginAt
            ? _value.lastLoginAt
            : lastLoginAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl extends _UserModel {
  const _$UserModelImpl({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    this.bio = '',
    this.avatarUrl,
    this.phoneNumber,
    this.dateOfBirth,
    this.location = '',
    this.isHost = false,
    this.isSuperhost = false,
    this.isVerified = false,
    this.isEmailVerified = false,
    this.isPhoneVerified = false,
    this.isIdVerified = false,
    this.hostRating = 0.0,
    this.hostReviewCount = 0,
    this.totalListings = 0,
    final List<String> wishlistIds = const [],
    final List<String> languages = const [],
    this.preferredLanguage = 'en',
    this.preferredCurrency = 'USD',
    this.createdAt,
    this.lastLoginAt,
  }) : _wishlistIds = wishlistIds,
       _languages = languages,
       super._();

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final String id;
  @override
  final String email;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  @JsonKey()
  final String bio;
  @override
  final String? avatarUrl;
  @override
  final String? phoneNumber;
  @override
  final DateTime? dateOfBirth;
  @override
  @JsonKey()
  final String location;
  @override
  @JsonKey()
  final bool isHost;
  @override
  @JsonKey()
  final bool isSuperhost;
  @override
  @JsonKey()
  final bool isVerified;
  @override
  @JsonKey()
  final bool isEmailVerified;
  @override
  @JsonKey()
  final bool isPhoneVerified;
  @override
  @JsonKey()
  final bool isIdVerified;
  @override
  @JsonKey()
  final double hostRating;
  @override
  @JsonKey()
  final int hostReviewCount;
  @override
  @JsonKey()
  final int totalListings;
  final List<String> _wishlistIds;
  @override
  @JsonKey()
  List<String> get wishlistIds {
    if (_wishlistIds is EqualUnmodifiableListView) return _wishlistIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wishlistIds);
  }

  final List<String> _languages;
  @override
  @JsonKey()
  List<String> get languages {
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_languages);
  }

  @override
  @JsonKey()
  final String preferredLanguage;
  @override
  @JsonKey()
  final String preferredCurrency;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? lastLoginAt;

  @override
  String toString() {
    return 'UserModel(id: $id, email: $email, firstName: $firstName, lastName: $lastName, bio: $bio, avatarUrl: $avatarUrl, phoneNumber: $phoneNumber, dateOfBirth: $dateOfBirth, location: $location, isHost: $isHost, isSuperhost: $isSuperhost, isVerified: $isVerified, isEmailVerified: $isEmailVerified, isPhoneVerified: $isPhoneVerified, isIdVerified: $isIdVerified, hostRating: $hostRating, hostReviewCount: $hostReviewCount, totalListings: $totalListings, wishlistIds: $wishlistIds, languages: $languages, preferredLanguage: $preferredLanguage, preferredCurrency: $preferredCurrency, createdAt: $createdAt, lastLoginAt: $lastLoginAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.isHost, isHost) || other.isHost == isHost) &&
            (identical(other.isSuperhost, isSuperhost) ||
                other.isSuperhost == isSuperhost) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified) &&
            (identical(other.isPhoneVerified, isPhoneVerified) ||
                other.isPhoneVerified == isPhoneVerified) &&
            (identical(other.isIdVerified, isIdVerified) ||
                other.isIdVerified == isIdVerified) &&
            (identical(other.hostRating, hostRating) ||
                other.hostRating == hostRating) &&
            (identical(other.hostReviewCount, hostReviewCount) ||
                other.hostReviewCount == hostReviewCount) &&
            (identical(other.totalListings, totalListings) ||
                other.totalListings == totalListings) &&
            const DeepCollectionEquality().equals(
              other._wishlistIds,
              _wishlistIds,
            ) &&
            const DeepCollectionEquality().equals(
              other._languages,
              _languages,
            ) &&
            (identical(other.preferredLanguage, preferredLanguage) ||
                other.preferredLanguage == preferredLanguage) &&
            (identical(other.preferredCurrency, preferredCurrency) ||
                other.preferredCurrency == preferredCurrency) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.lastLoginAt, lastLoginAt) ||
                other.lastLoginAt == lastLoginAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    email,
    firstName,
    lastName,
    bio,
    avatarUrl,
    phoneNumber,
    dateOfBirth,
    location,
    isHost,
    isSuperhost,
    isVerified,
    isEmailVerified,
    isPhoneVerified,
    isIdVerified,
    hostRating,
    hostReviewCount,
    totalListings,
    const DeepCollectionEquality().hash(_wishlistIds),
    const DeepCollectionEquality().hash(_languages),
    preferredLanguage,
    preferredCurrency,
    createdAt,
    lastLoginAt,
  ]);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(this);
  }
}

abstract class _UserModel extends UserModel {
  const factory _UserModel({
    required final String id,
    required final String email,
    required final String firstName,
    required final String lastName,
    final String bio,
    final String? avatarUrl,
    final String? phoneNumber,
    final DateTime? dateOfBirth,
    final String location,
    final bool isHost,
    final bool isSuperhost,
    final bool isVerified,
    final bool isEmailVerified,
    final bool isPhoneVerified,
    final bool isIdVerified,
    final double hostRating,
    final int hostReviewCount,
    final int totalListings,
    final List<String> wishlistIds,
    final List<String> languages,
    final String preferredLanguage,
    final String preferredCurrency,
    final DateTime? createdAt,
    final DateTime? lastLoginAt,
  }) = _$UserModelImpl;
  const _UserModel._() : super._();

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  String get id;
  @override
  String get email;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get bio;
  @override
  String? get avatarUrl;
  @override
  String? get phoneNumber;
  @override
  DateTime? get dateOfBirth;
  @override
  String get location;
  @override
  bool get isHost;
  @override
  bool get isSuperhost;
  @override
  bool get isVerified;
  @override
  bool get isEmailVerified;
  @override
  bool get isPhoneVerified;
  @override
  bool get isIdVerified;
  @override
  double get hostRating;
  @override
  int get hostReviewCount;
  @override
  int get totalListings;
  @override
  List<String> get wishlistIds;
  @override
  List<String> get languages;
  @override
  String get preferredLanguage;
  @override
  String get preferredCurrency;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get lastLoginAt;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

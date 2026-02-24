import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String email,
    required String firstName,
    required String lastName,
    @Default('') String bio,
    String? avatarUrl,
    String? phoneNumber,
    DateTime? dateOfBirth,
    @Default('') String location,
    @Default(false) bool isHost,
    @Default(false) bool isSuperhost,
    @Default(false) bool isVerified,
    @Default(false) bool isEmailVerified,
    @Default(false) bool isPhoneVerified,
    @Default(false) bool isIdVerified,
    @Default(0.0) double hostRating,
    @Default(0) int hostReviewCount,
    @Default(0) int totalListings,
    @Default([]) List<String> wishlistIds,
    @Default([]) List<String> languages,
    @Default('en') String preferredLanguage,
    @Default('USD') String preferredCurrency,
    DateTime? createdAt,
    DateTime? lastLoginAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  const UserModel._();

  String get fullName => '$firstName $lastName';

  String get initials {
    final first = firstName.isNotEmpty ? firstName[0] : '';
    final last = lastName.isNotEmpty ? lastName[0] : '';
    return '${first.toUpperCase()}${last.toUpperCase()}';
  }
}
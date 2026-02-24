// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String,
      email: json['email'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      bio: json['bio'] as String? ?? '',
      avatarUrl: json['avatarUrl'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      dateOfBirth: json['dateOfBirth'] == null
          ? null
          : DateTime.parse(json['dateOfBirth'] as String),
      location: json['location'] as String? ?? '',
      isHost: json['isHost'] as bool? ?? false,
      isSuperhost: json['isSuperhost'] as bool? ?? false,
      isVerified: json['isVerified'] as bool? ?? false,
      isEmailVerified: json['isEmailVerified'] as bool? ?? false,
      isPhoneVerified: json['isPhoneVerified'] as bool? ?? false,
      isIdVerified: json['isIdVerified'] as bool? ?? false,
      hostRating: (json['hostRating'] as num?)?.toDouble() ?? 0.0,
      hostReviewCount: (json['hostReviewCount'] as num?)?.toInt() ?? 0,
      totalListings: (json['totalListings'] as num?)?.toInt() ?? 0,
      wishlistIds:
          (json['wishlistIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      languages:
          (json['languages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      preferredLanguage: json['preferredLanguage'] as String? ?? 'en',
      preferredCurrency: json['preferredCurrency'] as String? ?? 'USD',
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      lastLoginAt: json['lastLoginAt'] == null
          ? null
          : DateTime.parse(json['lastLoginAt'] as String),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'bio': instance.bio,
      'avatarUrl': instance.avatarUrl,
      'phoneNumber': instance.phoneNumber,
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
      'location': instance.location,
      'isHost': instance.isHost,
      'isSuperhost': instance.isSuperhost,
      'isVerified': instance.isVerified,
      'isEmailVerified': instance.isEmailVerified,
      'isPhoneVerified': instance.isPhoneVerified,
      'isIdVerified': instance.isIdVerified,
      'hostRating': instance.hostRating,
      'hostReviewCount': instance.hostReviewCount,
      'totalListings': instance.totalListings,
      'wishlistIds': instance.wishlistIds,
      'languages': instance.languages,
      'preferredLanguage': instance.preferredLanguage,
      'preferredCurrency': instance.preferredCurrency,
      'createdAt': instance.createdAt?.toIso8601String(),
      'lastLoginAt': instance.lastLoginAt?.toIso8601String(),
    };

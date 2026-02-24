// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewModelImpl _$$ReviewModelImplFromJson(Map<String, dynamic> json) =>
    _$ReviewModelImpl(
      id: json['id'] as String,
      listingId: json['listingId'] as String,
      bookingId: json['bookingId'] as String,
      authorId: json['authorId'] as String,
      targetId: json['targetId'] as String,
      rating: (json['rating'] as num).toDouble(),
      comment: json['comment'] as String,
      type: $enumDecode(_$ReviewTypeEnumMap, json['type']),
      breakdown: json['breakdown'] == null
          ? const RatingBreakdownModel()
          : RatingBreakdownModel.fromJson(
              json['breakdown'] as Map<String, dynamic>,
            ),
      author: json['author'] == null
          ? null
          : UserModel.fromJson(json['author'] as Map<String, dynamic>),
      hostResponse: json['hostResponse'] as String?,
      hostRespondedAt: json['hostRespondedAt'] == null
          ? null
          : DateTime.parse(json['hostRespondedAt'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$ReviewModelImplToJson(_$ReviewModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'listingId': instance.listingId,
      'bookingId': instance.bookingId,
      'authorId': instance.authorId,
      'targetId': instance.targetId,
      'rating': instance.rating,
      'comment': instance.comment,
      'type': _$ReviewTypeEnumMap[instance.type]!,
      'breakdown': instance.breakdown,
      'author': instance.author,
      'hostResponse': instance.hostResponse,
      'hostRespondedAt': instance.hostRespondedAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
    };

const _$ReviewTypeEnumMap = {
  ReviewType.guestToHost: 'guestToHost',
  ReviewType.hostToGuest: 'hostToGuest',
};

_$RatingBreakdownModelImpl _$$RatingBreakdownModelImplFromJson(
  Map<String, dynamic> json,
) => _$RatingBreakdownModelImpl(
  cleanliness: (json['cleanliness'] as num?)?.toDouble() ?? 0.0,
  accuracy: (json['accuracy'] as num?)?.toDouble() ?? 0.0,
  checkIn: (json['checkIn'] as num?)?.toDouble() ?? 0.0,
  communication: (json['communication'] as num?)?.toDouble() ?? 0.0,
  location: (json['location'] as num?)?.toDouble() ?? 0.0,
  value: (json['value'] as num?)?.toDouble() ?? 0.0,
);

Map<String, dynamic> _$$RatingBreakdownModelImplToJson(
  _$RatingBreakdownModelImpl instance,
) => <String, dynamic>{
  'cleanliness': instance.cleanliness,
  'accuracy': instance.accuracy,
  'checkIn': instance.checkIn,
  'communication': instance.communication,
  'location': instance.location,
  'value': instance.value,
};

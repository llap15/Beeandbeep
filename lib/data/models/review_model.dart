import 'package:freezed_annotation/freezed_annotation.dart';
import 'user_model.dart';

part 'review_model.freezed.dart';
part 'review_model.g.dart';

@freezed
class ReviewModel with _$ReviewModel {
  const factory ReviewModel({
    required String id,
    required String listingId,
    required String bookingId,
    required String authorId,
    required String targetId,
    required double rating,
    required String comment,
    required ReviewType type,
    @Default(RatingBreakdownModel()) RatingBreakdownModel breakdown,
    UserModel? author,
    String? hostResponse,
    DateTime? hostRespondedAt,
    DateTime? createdAt,
  }) = _ReviewModel;

  factory ReviewModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewModelFromJson(json);
}

enum ReviewType { guestToHost, hostToGuest }

@freezed
class RatingBreakdownModel with _$RatingBreakdownModel {
  const factory RatingBreakdownModel({
    @Default(0.0) double cleanliness,
    @Default(0.0) double accuracy,
    @Default(0.0) double checkIn,
    @Default(0.0) double communication,
    @Default(0.0) double location,
    @Default(0.0) double value,
  }) = _RatingBreakdownModel;

  factory RatingBreakdownModel.fromJson(Map<String, dynamic> json) =>
      _$RatingBreakdownModelFromJson(json);
}
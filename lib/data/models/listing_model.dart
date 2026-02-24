import 'package:freezed_annotation/freezed_annotation.dart';
import 'user_model.dart';
import 'review_model.dart';

part 'listing_model.freezed.dart';
part 'listing_model.g.dart';

enum ListingType { entirePlace, privateRoom, sharedRoom, hotel }

enum PropertyType {
  house, apartment, guesthouse, hotel,
  cabin, villa, treehouse, boat,
  campervan, tent, yurt, barn,
  castle, cave, igloo, island,
  loft, tower, windmill, other
}

enum AmenityType {
  wifi, kitchen, parking, pool,
  hotTub, gym, airConditioning, heating,
  washer, dryer, tv, workspace,
  hairDryer, iron, bathtub, breakfast,
  petFriendly, smokingAllowed, evCharger, security
}

@freezed
class ListingModel with _$ListingModel {
  const factory ListingModel({
    required String id,
    required String hostId,
    required String title,
    required String description,
    required ListingType listingType,
    required PropertyType propertyType,
    required AddressModel address,
    required LocationModel location,
    required PricingModel pricing,
    required RoomsModel rooms,
    required List<String> photos,
    required List<AmenityType> amenities,
    required List<RuleModel> houseRules,
    required AvailabilityModel availability,
    @Default(0.0) double rating,
    @Default(0) int reviewCount,
    @Default([]) List<ReviewModel> reviews,
    @Default(false) bool isSuperhost,
    @Default(false) bool isFeatured,
    @Default(false) bool isActive,
    @Default(false) bool isWishlisted,
    UserModel? host,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _ListingModel;

  factory ListingModel.fromJson(Map<String, dynamic> json) =>
      _$ListingModelFromJson(json);
}

@freezed
class AddressModel with _$AddressModel {
  const factory AddressModel({
    required String street,
    required String city,
    required String state,
    required String country,
    required String zipCode,
    @Default('') String neighborhood,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);
}

@freezed
class LocationModel with _$LocationModel {
  const factory LocationModel({
    required double latitude,
    required double longitude,
  }) = _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);
}

@freezed
class PricingModel with _$PricingModel {
  const factory PricingModel({
    required double basePrice,
    required String currency,
    @Default(0.0) double cleaningFee,
    @Default(0.0) double serviceFee,
    @Default(0.0) double weeklyDiscount,
    @Default(0.0) double monthlyDiscount,
    @Default(0) int minNights,
    @Default(30) int maxNights,
  }) = _PricingModel;

  factory PricingModel.fromJson(Map<String, dynamic> json) =>
      _$PricingModelFromJson(json);
}

@freezed
class RoomsModel with _$RoomsModel {
  const factory RoomsModel({
    required int guests,
    required int bedrooms,
    required int beds,
    required int bathrooms,
  }) = _RoomsModel;

  factory RoomsModel.fromJson(Map<String, dynamic> json) =>
      _$RoomsModelFromJson(json);
}

@freezed
class RuleModel with _$RuleModel {
  const factory RuleModel({
    required String title,
    required String description,
    @Default(false) bool isAllowed,
  }) = _RuleModel;

  factory RuleModel.fromJson(Map<String, dynamic> json) =>
      _$RuleModelFromJson(json);
}

@freezed
class AvailabilityModel with _$AvailabilityModel {
  const factory AvailabilityModel({
    required DateTime checkInTime,
    required DateTime checkOutTime,
    @Default([]) List<DateTime> blockedDates,
    @Default(0) int advanceNotice, // days
    @Default(365) int bookingWindow, // days ahead
  }) = _AvailabilityModel;

  factory AvailabilityModel.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityModelFromJson(json);
}
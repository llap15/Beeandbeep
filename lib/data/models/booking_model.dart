import 'package:freezed_annotation/freezed_annotation.dart';
import 'listing_model.dart';
import 'user_model.dart';

part 'booking_model.freezed.dart';
part 'booking_model.g.dart';

enum BookingStatus {
  pending,
  confirmed,
  cancelled,
  completed,
  declined,
  expired
}

enum PaymentStatus {
  pending,
  authorized,
  captured,
  refunded,
  failed
}

@freezed
class BookingModel with _$BookingModel {
  const factory BookingModel({
    required String id,
    required String listingId,
    required String guestId,
    required String hostId,
    required DateTime checkIn,
    required DateTime checkOut,
    required int guests,
    required PriceBreakdownModel priceBreakdown,
    required BookingStatus status,
    required PaymentStatus paymentStatus,
    @Default('') String specialRequests,
    @Default('') String cancellationReason,
    ListingModel? listing,
    UserModel? guest,
    UserModel? host,
    String? stripePaymentIntentId,
    DateTime? confirmedAt,
    DateTime? cancelledAt,
    DateTime? completedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _BookingModel;

  factory BookingModel.fromJson(Map<String, dynamic> json) =>
      _$BookingModelFromJson(json);

  const BookingModel._();

  int get nights => checkOut.difference(checkIn).inDays;

  bool get isActive =>
      status == BookingStatus.confirmed &&
      checkIn.isBefore(DateTime.now()) &&
      checkOut.isAfter(DateTime.now());

  bool get isUpcoming =>
      status == BookingStatus.confirmed && checkIn.isAfter(DateTime.now());

  bool get isPast => checkOut.isBefore(DateTime.now());
}

@freezed
class PriceBreakdownModel with _$PriceBreakdownModel {
  const factory PriceBreakdownModel({
    required double basePrice,
    required int nights,
    required double nightlyTotal,
    required double cleaningFee,
    required double serviceFee,
    required double taxes,
    @Default(0.0) double discount,
    @Default(0.0) double discountAmount,
    required double total,
    required String currency,
  }) = _PriceBreakdownModel;

  factory PriceBreakdownModel.fromJson(Map<String, dynamic> json) =>
      _$PriceBreakdownModelFromJson(json);
}
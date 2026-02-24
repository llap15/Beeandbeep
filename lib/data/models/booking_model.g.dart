// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingModelImpl _$$BookingModelImplFromJson(Map<String, dynamic> json) =>
    _$BookingModelImpl(
      id: json['id'] as String,
      listingId: json['listingId'] as String,
      guestId: json['guestId'] as String,
      hostId: json['hostId'] as String,
      checkIn: DateTime.parse(json['checkIn'] as String),
      checkOut: DateTime.parse(json['checkOut'] as String),
      guests: (json['guests'] as num).toInt(),
      priceBreakdown: PriceBreakdownModel.fromJson(
        json['priceBreakdown'] as Map<String, dynamic>,
      ),
      status: $enumDecode(_$BookingStatusEnumMap, json['status']),
      paymentStatus: $enumDecode(_$PaymentStatusEnumMap, json['paymentStatus']),
      specialRequests: json['specialRequests'] as String? ?? '',
      cancellationReason: json['cancellationReason'] as String? ?? '',
      listing: json['listing'] == null
          ? null
          : ListingModel.fromJson(json['listing'] as Map<String, dynamic>),
      guest: json['guest'] == null
          ? null
          : UserModel.fromJson(json['guest'] as Map<String, dynamic>),
      host: json['host'] == null
          ? null
          : UserModel.fromJson(json['host'] as Map<String, dynamic>),
      stripePaymentIntentId: json['stripePaymentIntentId'] as String?,
      confirmedAt: json['confirmedAt'] == null
          ? null
          : DateTime.parse(json['confirmedAt'] as String),
      cancelledAt: json['cancelledAt'] == null
          ? null
          : DateTime.parse(json['cancelledAt'] as String),
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$BookingModelImplToJson(_$BookingModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'listingId': instance.listingId,
      'guestId': instance.guestId,
      'hostId': instance.hostId,
      'checkIn': instance.checkIn.toIso8601String(),
      'checkOut': instance.checkOut.toIso8601String(),
      'guests': instance.guests,
      'priceBreakdown': instance.priceBreakdown,
      'status': _$BookingStatusEnumMap[instance.status]!,
      'paymentStatus': _$PaymentStatusEnumMap[instance.paymentStatus]!,
      'specialRequests': instance.specialRequests,
      'cancellationReason': instance.cancellationReason,
      'listing': instance.listing,
      'guest': instance.guest,
      'host': instance.host,
      'stripePaymentIntentId': instance.stripePaymentIntentId,
      'confirmedAt': instance.confirmedAt?.toIso8601String(),
      'cancelledAt': instance.cancelledAt?.toIso8601String(),
      'completedAt': instance.completedAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

const _$BookingStatusEnumMap = {
  BookingStatus.pending: 'pending',
  BookingStatus.confirmed: 'confirmed',
  BookingStatus.cancelled: 'cancelled',
  BookingStatus.completed: 'completed',
  BookingStatus.declined: 'declined',
  BookingStatus.expired: 'expired',
};

const _$PaymentStatusEnumMap = {
  PaymentStatus.pending: 'pending',
  PaymentStatus.authorized: 'authorized',
  PaymentStatus.captured: 'captured',
  PaymentStatus.refunded: 'refunded',
  PaymentStatus.failed: 'failed',
};

_$PriceBreakdownModelImpl _$$PriceBreakdownModelImplFromJson(
  Map<String, dynamic> json,
) => _$PriceBreakdownModelImpl(
  basePrice: (json['basePrice'] as num).toDouble(),
  nights: (json['nights'] as num).toInt(),
  nightlyTotal: (json['nightlyTotal'] as num).toDouble(),
  cleaningFee: (json['cleaningFee'] as num).toDouble(),
  serviceFee: (json['serviceFee'] as num).toDouble(),
  taxes: (json['taxes'] as num).toDouble(),
  discount: (json['discount'] as num?)?.toDouble() ?? 0.0,
  discountAmount: (json['discountAmount'] as num?)?.toDouble() ?? 0.0,
  total: (json['total'] as num).toDouble(),
  currency: json['currency'] as String,
);

Map<String, dynamic> _$$PriceBreakdownModelImplToJson(
  _$PriceBreakdownModelImpl instance,
) => <String, dynamic>{
  'basePrice': instance.basePrice,
  'nights': instance.nights,
  'nightlyTotal': instance.nightlyTotal,
  'cleaningFee': instance.cleaningFee,
  'serviceFee': instance.serviceFee,
  'taxes': instance.taxes,
  'discount': instance.discount,
  'discountAmount': instance.discountAmount,
  'total': instance.total,
  'currency': instance.currency,
};

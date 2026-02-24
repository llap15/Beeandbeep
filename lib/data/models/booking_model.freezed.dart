// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BookingModel _$BookingModelFromJson(Map<String, dynamic> json) {
  return _BookingModel.fromJson(json);
}

/// @nodoc
mixin _$BookingModel {
  String get id => throw _privateConstructorUsedError;
  String get listingId => throw _privateConstructorUsedError;
  String get guestId => throw _privateConstructorUsedError;
  String get hostId => throw _privateConstructorUsedError;
  DateTime get checkIn => throw _privateConstructorUsedError;
  DateTime get checkOut => throw _privateConstructorUsedError;
  int get guests => throw _privateConstructorUsedError;
  PriceBreakdownModel get priceBreakdown => throw _privateConstructorUsedError;
  BookingStatus get status => throw _privateConstructorUsedError;
  PaymentStatus get paymentStatus => throw _privateConstructorUsedError;
  String get specialRequests => throw _privateConstructorUsedError;
  String get cancellationReason => throw _privateConstructorUsedError;
  ListingModel? get listing => throw _privateConstructorUsedError;
  UserModel? get guest => throw _privateConstructorUsedError;
  UserModel? get host => throw _privateConstructorUsedError;
  String? get stripePaymentIntentId => throw _privateConstructorUsedError;
  DateTime? get confirmedAt => throw _privateConstructorUsedError;
  DateTime? get cancelledAt => throw _privateConstructorUsedError;
  DateTime? get completedAt => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this BookingModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingModelCopyWith<BookingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingModelCopyWith<$Res> {
  factory $BookingModelCopyWith(
    BookingModel value,
    $Res Function(BookingModel) then,
  ) = _$BookingModelCopyWithImpl<$Res, BookingModel>;
  @useResult
  $Res call({
    String id,
    String listingId,
    String guestId,
    String hostId,
    DateTime checkIn,
    DateTime checkOut,
    int guests,
    PriceBreakdownModel priceBreakdown,
    BookingStatus status,
    PaymentStatus paymentStatus,
    String specialRequests,
    String cancellationReason,
    ListingModel? listing,
    UserModel? guest,
    UserModel? host,
    String? stripePaymentIntentId,
    DateTime? confirmedAt,
    DateTime? cancelledAt,
    DateTime? completedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  });

  $PriceBreakdownModelCopyWith<$Res> get priceBreakdown;
  $ListingModelCopyWith<$Res>? get listing;
  $UserModelCopyWith<$Res>? get guest;
  $UserModelCopyWith<$Res>? get host;
}

/// @nodoc
class _$BookingModelCopyWithImpl<$Res, $Val extends BookingModel>
    implements $BookingModelCopyWith<$Res> {
  _$BookingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? listingId = null,
    Object? guestId = null,
    Object? hostId = null,
    Object? checkIn = null,
    Object? checkOut = null,
    Object? guests = null,
    Object? priceBreakdown = null,
    Object? status = null,
    Object? paymentStatus = null,
    Object? specialRequests = null,
    Object? cancellationReason = null,
    Object? listing = freezed,
    Object? guest = freezed,
    Object? host = freezed,
    Object? stripePaymentIntentId = freezed,
    Object? confirmedAt = freezed,
    Object? cancelledAt = freezed,
    Object? completedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
            guestId: null == guestId
                ? _value.guestId
                : guestId // ignore: cast_nullable_to_non_nullable
                      as String,
            hostId: null == hostId
                ? _value.hostId
                : hostId // ignore: cast_nullable_to_non_nullable
                      as String,
            checkIn: null == checkIn
                ? _value.checkIn
                : checkIn // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            checkOut: null == checkOut
                ? _value.checkOut
                : checkOut // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            guests: null == guests
                ? _value.guests
                : guests // ignore: cast_nullable_to_non_nullable
                      as int,
            priceBreakdown: null == priceBreakdown
                ? _value.priceBreakdown
                : priceBreakdown // ignore: cast_nullable_to_non_nullable
                      as PriceBreakdownModel,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as BookingStatus,
            paymentStatus: null == paymentStatus
                ? _value.paymentStatus
                : paymentStatus // ignore: cast_nullable_to_non_nullable
                      as PaymentStatus,
            specialRequests: null == specialRequests
                ? _value.specialRequests
                : specialRequests // ignore: cast_nullable_to_non_nullable
                      as String,
            cancellationReason: null == cancellationReason
                ? _value.cancellationReason
                : cancellationReason // ignore: cast_nullable_to_non_nullable
                      as String,
            listing: freezed == listing
                ? _value.listing
                : listing // ignore: cast_nullable_to_non_nullable
                      as ListingModel?,
            guest: freezed == guest
                ? _value.guest
                : guest // ignore: cast_nullable_to_non_nullable
                      as UserModel?,
            host: freezed == host
                ? _value.host
                : host // ignore: cast_nullable_to_non_nullable
                      as UserModel?,
            stripePaymentIntentId: freezed == stripePaymentIntentId
                ? _value.stripePaymentIntentId
                : stripePaymentIntentId // ignore: cast_nullable_to_non_nullable
                      as String?,
            confirmedAt: freezed == confirmedAt
                ? _value.confirmedAt
                : confirmedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            cancelledAt: freezed == cancelledAt
                ? _value.cancelledAt
                : cancelledAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            completedAt: freezed == completedAt
                ? _value.completedAt
                : completedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }

  /// Create a copy of BookingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PriceBreakdownModelCopyWith<$Res> get priceBreakdown {
    return $PriceBreakdownModelCopyWith<$Res>(_value.priceBreakdown, (value) {
      return _then(_value.copyWith(priceBreakdown: value) as $Val);
    });
  }

  /// Create a copy of BookingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ListingModelCopyWith<$Res>? get listing {
    if (_value.listing == null) {
      return null;
    }

    return $ListingModelCopyWith<$Res>(_value.listing!, (value) {
      return _then(_value.copyWith(listing: value) as $Val);
    });
  }

  /// Create a copy of BookingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get guest {
    if (_value.guest == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.guest!, (value) {
      return _then(_value.copyWith(guest: value) as $Val);
    });
  }

  /// Create a copy of BookingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get host {
    if (_value.host == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.host!, (value) {
      return _then(_value.copyWith(host: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookingModelImplCopyWith<$Res>
    implements $BookingModelCopyWith<$Res> {
  factory _$$BookingModelImplCopyWith(
    _$BookingModelImpl value,
    $Res Function(_$BookingModelImpl) then,
  ) = __$$BookingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String listingId,
    String guestId,
    String hostId,
    DateTime checkIn,
    DateTime checkOut,
    int guests,
    PriceBreakdownModel priceBreakdown,
    BookingStatus status,
    PaymentStatus paymentStatus,
    String specialRequests,
    String cancellationReason,
    ListingModel? listing,
    UserModel? guest,
    UserModel? host,
    String? stripePaymentIntentId,
    DateTime? confirmedAt,
    DateTime? cancelledAt,
    DateTime? completedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  });

  @override
  $PriceBreakdownModelCopyWith<$Res> get priceBreakdown;
  @override
  $ListingModelCopyWith<$Res>? get listing;
  @override
  $UserModelCopyWith<$Res>? get guest;
  @override
  $UserModelCopyWith<$Res>? get host;
}

/// @nodoc
class __$$BookingModelImplCopyWithImpl<$Res>
    extends _$BookingModelCopyWithImpl<$Res, _$BookingModelImpl>
    implements _$$BookingModelImplCopyWith<$Res> {
  __$$BookingModelImplCopyWithImpl(
    _$BookingModelImpl _value,
    $Res Function(_$BookingModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? listingId = null,
    Object? guestId = null,
    Object? hostId = null,
    Object? checkIn = null,
    Object? checkOut = null,
    Object? guests = null,
    Object? priceBreakdown = null,
    Object? status = null,
    Object? paymentStatus = null,
    Object? specialRequests = null,
    Object? cancellationReason = null,
    Object? listing = freezed,
    Object? guest = freezed,
    Object? host = freezed,
    Object? stripePaymentIntentId = freezed,
    Object? confirmedAt = freezed,
    Object? cancelledAt = freezed,
    Object? completedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$BookingModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        listingId: null == listingId
            ? _value.listingId
            : listingId // ignore: cast_nullable_to_non_nullable
                  as String,
        guestId: null == guestId
            ? _value.guestId
            : guestId // ignore: cast_nullable_to_non_nullable
                  as String,
        hostId: null == hostId
            ? _value.hostId
            : hostId // ignore: cast_nullable_to_non_nullable
                  as String,
        checkIn: null == checkIn
            ? _value.checkIn
            : checkIn // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        checkOut: null == checkOut
            ? _value.checkOut
            : checkOut // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        guests: null == guests
            ? _value.guests
            : guests // ignore: cast_nullable_to_non_nullable
                  as int,
        priceBreakdown: null == priceBreakdown
            ? _value.priceBreakdown
            : priceBreakdown // ignore: cast_nullable_to_non_nullable
                  as PriceBreakdownModel,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as BookingStatus,
        paymentStatus: null == paymentStatus
            ? _value.paymentStatus
            : paymentStatus // ignore: cast_nullable_to_non_nullable
                  as PaymentStatus,
        specialRequests: null == specialRequests
            ? _value.specialRequests
            : specialRequests // ignore: cast_nullable_to_non_nullable
                  as String,
        cancellationReason: null == cancellationReason
            ? _value.cancellationReason
            : cancellationReason // ignore: cast_nullable_to_non_nullable
                  as String,
        listing: freezed == listing
            ? _value.listing
            : listing // ignore: cast_nullable_to_non_nullable
                  as ListingModel?,
        guest: freezed == guest
            ? _value.guest
            : guest // ignore: cast_nullable_to_non_nullable
                  as UserModel?,
        host: freezed == host
            ? _value.host
            : host // ignore: cast_nullable_to_non_nullable
                  as UserModel?,
        stripePaymentIntentId: freezed == stripePaymentIntentId
            ? _value.stripePaymentIntentId
            : stripePaymentIntentId // ignore: cast_nullable_to_non_nullable
                  as String?,
        confirmedAt: freezed == confirmedAt
            ? _value.confirmedAt
            : confirmedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        cancelledAt: freezed == cancelledAt
            ? _value.cancelledAt
            : cancelledAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        completedAt: freezed == completedAt
            ? _value.completedAt
            : completedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingModelImpl extends _BookingModel {
  const _$BookingModelImpl({
    required this.id,
    required this.listingId,
    required this.guestId,
    required this.hostId,
    required this.checkIn,
    required this.checkOut,
    required this.guests,
    required this.priceBreakdown,
    required this.status,
    required this.paymentStatus,
    this.specialRequests = '',
    this.cancellationReason = '',
    this.listing,
    this.guest,
    this.host,
    this.stripePaymentIntentId,
    this.confirmedAt,
    this.cancelledAt,
    this.completedAt,
    this.createdAt,
    this.updatedAt,
  }) : super._();

  factory _$BookingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingModelImplFromJson(json);

  @override
  final String id;
  @override
  final String listingId;
  @override
  final String guestId;
  @override
  final String hostId;
  @override
  final DateTime checkIn;
  @override
  final DateTime checkOut;
  @override
  final int guests;
  @override
  final PriceBreakdownModel priceBreakdown;
  @override
  final BookingStatus status;
  @override
  final PaymentStatus paymentStatus;
  @override
  @JsonKey()
  final String specialRequests;
  @override
  @JsonKey()
  final String cancellationReason;
  @override
  final ListingModel? listing;
  @override
  final UserModel? guest;
  @override
  final UserModel? host;
  @override
  final String? stripePaymentIntentId;
  @override
  final DateTime? confirmedAt;
  @override
  final DateTime? cancelledAt;
  @override
  final DateTime? completedAt;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'BookingModel(id: $id, listingId: $listingId, guestId: $guestId, hostId: $hostId, checkIn: $checkIn, checkOut: $checkOut, guests: $guests, priceBreakdown: $priceBreakdown, status: $status, paymentStatus: $paymentStatus, specialRequests: $specialRequests, cancellationReason: $cancellationReason, listing: $listing, guest: $guest, host: $host, stripePaymentIntentId: $stripePaymentIntentId, confirmedAt: $confirmedAt, cancelledAt: $cancelledAt, completedAt: $completedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.listingId, listingId) ||
                other.listingId == listingId) &&
            (identical(other.guestId, guestId) || other.guestId == guestId) &&
            (identical(other.hostId, hostId) || other.hostId == hostId) &&
            (identical(other.checkIn, checkIn) || other.checkIn == checkIn) &&
            (identical(other.checkOut, checkOut) ||
                other.checkOut == checkOut) &&
            (identical(other.guests, guests) || other.guests == guests) &&
            (identical(other.priceBreakdown, priceBreakdown) ||
                other.priceBreakdown == priceBreakdown) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.specialRequests, specialRequests) ||
                other.specialRequests == specialRequests) &&
            (identical(other.cancellationReason, cancellationReason) ||
                other.cancellationReason == cancellationReason) &&
            (identical(other.listing, listing) || other.listing == listing) &&
            (identical(other.guest, guest) || other.guest == guest) &&
            (identical(other.host, host) || other.host == host) &&
            (identical(other.stripePaymentIntentId, stripePaymentIntentId) ||
                other.stripePaymentIntentId == stripePaymentIntentId) &&
            (identical(other.confirmedAt, confirmedAt) ||
                other.confirmedAt == confirmedAt) &&
            (identical(other.cancelledAt, cancelledAt) ||
                other.cancelledAt == cancelledAt) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    listingId,
    guestId,
    hostId,
    checkIn,
    checkOut,
    guests,
    priceBreakdown,
    status,
    paymentStatus,
    specialRequests,
    cancellationReason,
    listing,
    guest,
    host,
    stripePaymentIntentId,
    confirmedAt,
    cancelledAt,
    completedAt,
    createdAt,
    updatedAt,
  ]);

  /// Create a copy of BookingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingModelImplCopyWith<_$BookingModelImpl> get copyWith =>
      __$$BookingModelImplCopyWithImpl<_$BookingModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingModelImplToJson(this);
  }
}

abstract class _BookingModel extends BookingModel {
  const factory _BookingModel({
    required final String id,
    required final String listingId,
    required final String guestId,
    required final String hostId,
    required final DateTime checkIn,
    required final DateTime checkOut,
    required final int guests,
    required final PriceBreakdownModel priceBreakdown,
    required final BookingStatus status,
    required final PaymentStatus paymentStatus,
    final String specialRequests,
    final String cancellationReason,
    final ListingModel? listing,
    final UserModel? guest,
    final UserModel? host,
    final String? stripePaymentIntentId,
    final DateTime? confirmedAt,
    final DateTime? cancelledAt,
    final DateTime? completedAt,
    final DateTime? createdAt,
    final DateTime? updatedAt,
  }) = _$BookingModelImpl;
  const _BookingModel._() : super._();

  factory _BookingModel.fromJson(Map<String, dynamic> json) =
      _$BookingModelImpl.fromJson;

  @override
  String get id;
  @override
  String get listingId;
  @override
  String get guestId;
  @override
  String get hostId;
  @override
  DateTime get checkIn;
  @override
  DateTime get checkOut;
  @override
  int get guests;
  @override
  PriceBreakdownModel get priceBreakdown;
  @override
  BookingStatus get status;
  @override
  PaymentStatus get paymentStatus;
  @override
  String get specialRequests;
  @override
  String get cancellationReason;
  @override
  ListingModel? get listing;
  @override
  UserModel? get guest;
  @override
  UserModel? get host;
  @override
  String? get stripePaymentIntentId;
  @override
  DateTime? get confirmedAt;
  @override
  DateTime? get cancelledAt;
  @override
  DateTime? get completedAt;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of BookingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingModelImplCopyWith<_$BookingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PriceBreakdownModel _$PriceBreakdownModelFromJson(Map<String, dynamic> json) {
  return _PriceBreakdownModel.fromJson(json);
}

/// @nodoc
mixin _$PriceBreakdownModel {
  double get basePrice => throw _privateConstructorUsedError;
  int get nights => throw _privateConstructorUsedError;
  double get nightlyTotal => throw _privateConstructorUsedError;
  double get cleaningFee => throw _privateConstructorUsedError;
  double get serviceFee => throw _privateConstructorUsedError;
  double get taxes => throw _privateConstructorUsedError;
  double get discount => throw _privateConstructorUsedError;
  double get discountAmount => throw _privateConstructorUsedError;
  double get total => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;

  /// Serializes this PriceBreakdownModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PriceBreakdownModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PriceBreakdownModelCopyWith<PriceBreakdownModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceBreakdownModelCopyWith<$Res> {
  factory $PriceBreakdownModelCopyWith(
    PriceBreakdownModel value,
    $Res Function(PriceBreakdownModel) then,
  ) = _$PriceBreakdownModelCopyWithImpl<$Res, PriceBreakdownModel>;
  @useResult
  $Res call({
    double basePrice,
    int nights,
    double nightlyTotal,
    double cleaningFee,
    double serviceFee,
    double taxes,
    double discount,
    double discountAmount,
    double total,
    String currency,
  });
}

/// @nodoc
class _$PriceBreakdownModelCopyWithImpl<$Res, $Val extends PriceBreakdownModel>
    implements $PriceBreakdownModelCopyWith<$Res> {
  _$PriceBreakdownModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PriceBreakdownModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? basePrice = null,
    Object? nights = null,
    Object? nightlyTotal = null,
    Object? cleaningFee = null,
    Object? serviceFee = null,
    Object? taxes = null,
    Object? discount = null,
    Object? discountAmount = null,
    Object? total = null,
    Object? currency = null,
  }) {
    return _then(
      _value.copyWith(
            basePrice: null == basePrice
                ? _value.basePrice
                : basePrice // ignore: cast_nullable_to_non_nullable
                      as double,
            nights: null == nights
                ? _value.nights
                : nights // ignore: cast_nullable_to_non_nullable
                      as int,
            nightlyTotal: null == nightlyTotal
                ? _value.nightlyTotal
                : nightlyTotal // ignore: cast_nullable_to_non_nullable
                      as double,
            cleaningFee: null == cleaningFee
                ? _value.cleaningFee
                : cleaningFee // ignore: cast_nullable_to_non_nullable
                      as double,
            serviceFee: null == serviceFee
                ? _value.serviceFee
                : serviceFee // ignore: cast_nullable_to_non_nullable
                      as double,
            taxes: null == taxes
                ? _value.taxes
                : taxes // ignore: cast_nullable_to_non_nullable
                      as double,
            discount: null == discount
                ? _value.discount
                : discount // ignore: cast_nullable_to_non_nullable
                      as double,
            discountAmount: null == discountAmount
                ? _value.discountAmount
                : discountAmount // ignore: cast_nullable_to_non_nullable
                      as double,
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as double,
            currency: null == currency
                ? _value.currency
                : currency // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PriceBreakdownModelImplCopyWith<$Res>
    implements $PriceBreakdownModelCopyWith<$Res> {
  factory _$$PriceBreakdownModelImplCopyWith(
    _$PriceBreakdownModelImpl value,
    $Res Function(_$PriceBreakdownModelImpl) then,
  ) = __$$PriceBreakdownModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    double basePrice,
    int nights,
    double nightlyTotal,
    double cleaningFee,
    double serviceFee,
    double taxes,
    double discount,
    double discountAmount,
    double total,
    String currency,
  });
}

/// @nodoc
class __$$PriceBreakdownModelImplCopyWithImpl<$Res>
    extends _$PriceBreakdownModelCopyWithImpl<$Res, _$PriceBreakdownModelImpl>
    implements _$$PriceBreakdownModelImplCopyWith<$Res> {
  __$$PriceBreakdownModelImplCopyWithImpl(
    _$PriceBreakdownModelImpl _value,
    $Res Function(_$PriceBreakdownModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PriceBreakdownModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? basePrice = null,
    Object? nights = null,
    Object? nightlyTotal = null,
    Object? cleaningFee = null,
    Object? serviceFee = null,
    Object? taxes = null,
    Object? discount = null,
    Object? discountAmount = null,
    Object? total = null,
    Object? currency = null,
  }) {
    return _then(
      _$PriceBreakdownModelImpl(
        basePrice: null == basePrice
            ? _value.basePrice
            : basePrice // ignore: cast_nullable_to_non_nullable
                  as double,
        nights: null == nights
            ? _value.nights
            : nights // ignore: cast_nullable_to_non_nullable
                  as int,
        nightlyTotal: null == nightlyTotal
            ? _value.nightlyTotal
            : nightlyTotal // ignore: cast_nullable_to_non_nullable
                  as double,
        cleaningFee: null == cleaningFee
            ? _value.cleaningFee
            : cleaningFee // ignore: cast_nullable_to_non_nullable
                  as double,
        serviceFee: null == serviceFee
            ? _value.serviceFee
            : serviceFee // ignore: cast_nullable_to_non_nullable
                  as double,
        taxes: null == taxes
            ? _value.taxes
            : taxes // ignore: cast_nullable_to_non_nullable
                  as double,
        discount: null == discount
            ? _value.discount
            : discount // ignore: cast_nullable_to_non_nullable
                  as double,
        discountAmount: null == discountAmount
            ? _value.discountAmount
            : discountAmount // ignore: cast_nullable_to_non_nullable
                  as double,
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as double,
        currency: null == currency
            ? _value.currency
            : currency // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PriceBreakdownModelImpl implements _PriceBreakdownModel {
  const _$PriceBreakdownModelImpl({
    required this.basePrice,
    required this.nights,
    required this.nightlyTotal,
    required this.cleaningFee,
    required this.serviceFee,
    required this.taxes,
    this.discount = 0.0,
    this.discountAmount = 0.0,
    required this.total,
    required this.currency,
  });

  factory _$PriceBreakdownModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PriceBreakdownModelImplFromJson(json);

  @override
  final double basePrice;
  @override
  final int nights;
  @override
  final double nightlyTotal;
  @override
  final double cleaningFee;
  @override
  final double serviceFee;
  @override
  final double taxes;
  @override
  @JsonKey()
  final double discount;
  @override
  @JsonKey()
  final double discountAmount;
  @override
  final double total;
  @override
  final String currency;

  @override
  String toString() {
    return 'PriceBreakdownModel(basePrice: $basePrice, nights: $nights, nightlyTotal: $nightlyTotal, cleaningFee: $cleaningFee, serviceFee: $serviceFee, taxes: $taxes, discount: $discount, discountAmount: $discountAmount, total: $total, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceBreakdownModelImpl &&
            (identical(other.basePrice, basePrice) ||
                other.basePrice == basePrice) &&
            (identical(other.nights, nights) || other.nights == nights) &&
            (identical(other.nightlyTotal, nightlyTotal) ||
                other.nightlyTotal == nightlyTotal) &&
            (identical(other.cleaningFee, cleaningFee) ||
                other.cleaningFee == cleaningFee) &&
            (identical(other.serviceFee, serviceFee) ||
                other.serviceFee == serviceFee) &&
            (identical(other.taxes, taxes) || other.taxes == taxes) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    basePrice,
    nights,
    nightlyTotal,
    cleaningFee,
    serviceFee,
    taxes,
    discount,
    discountAmount,
    total,
    currency,
  );

  /// Create a copy of PriceBreakdownModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceBreakdownModelImplCopyWith<_$PriceBreakdownModelImpl> get copyWith =>
      __$$PriceBreakdownModelImplCopyWithImpl<_$PriceBreakdownModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PriceBreakdownModelImplToJson(this);
  }
}

abstract class _PriceBreakdownModel implements PriceBreakdownModel {
  const factory _PriceBreakdownModel({
    required final double basePrice,
    required final int nights,
    required final double nightlyTotal,
    required final double cleaningFee,
    required final double serviceFee,
    required final double taxes,
    final double discount,
    final double discountAmount,
    required final double total,
    required final String currency,
  }) = _$PriceBreakdownModelImpl;

  factory _PriceBreakdownModel.fromJson(Map<String, dynamic> json) =
      _$PriceBreakdownModelImpl.fromJson;

  @override
  double get basePrice;
  @override
  int get nights;
  @override
  double get nightlyTotal;
  @override
  double get cleaningFee;
  @override
  double get serviceFee;
  @override
  double get taxes;
  @override
  double get discount;
  @override
  double get discountAmount;
  @override
  double get total;
  @override
  String get currency;

  /// Create a copy of PriceBreakdownModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PriceBreakdownModelImplCopyWith<_$PriceBreakdownModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

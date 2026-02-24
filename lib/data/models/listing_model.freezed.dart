// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'listing_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ListingModel _$ListingModelFromJson(Map<String, dynamic> json) {
  return _ListingModel.fromJson(json);
}

/// @nodoc
mixin _$ListingModel {
  String get id => throw _privateConstructorUsedError;
  String get hostId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  ListingType get listingType => throw _privateConstructorUsedError;
  PropertyType get propertyType => throw _privateConstructorUsedError;
  AddressModel get address => throw _privateConstructorUsedError;
  LocationModel get location => throw _privateConstructorUsedError;
  PricingModel get pricing => throw _privateConstructorUsedError;
  RoomsModel get rooms => throw _privateConstructorUsedError;
  List<String> get photos => throw _privateConstructorUsedError;
  List<AmenityType> get amenities => throw _privateConstructorUsedError;
  List<RuleModel> get houseRules => throw _privateConstructorUsedError;
  AvailabilityModel get availability => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  int get reviewCount => throw _privateConstructorUsedError;
  List<ReviewModel> get reviews => throw _privateConstructorUsedError;
  bool get isSuperhost => throw _privateConstructorUsedError;
  bool get isFeatured => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  bool get isWishlisted => throw _privateConstructorUsedError;
  UserModel? get host => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ListingModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ListingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListingModelCopyWith<ListingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListingModelCopyWith<$Res> {
  factory $ListingModelCopyWith(
    ListingModel value,
    $Res Function(ListingModel) then,
  ) = _$ListingModelCopyWithImpl<$Res, ListingModel>;
  @useResult
  $Res call({
    String id,
    String hostId,
    String title,
    String description,
    ListingType listingType,
    PropertyType propertyType,
    AddressModel address,
    LocationModel location,
    PricingModel pricing,
    RoomsModel rooms,
    List<String> photos,
    List<AmenityType> amenities,
    List<RuleModel> houseRules,
    AvailabilityModel availability,
    double rating,
    int reviewCount,
    List<ReviewModel> reviews,
    bool isSuperhost,
    bool isFeatured,
    bool isActive,
    bool isWishlisted,
    UserModel? host,
    DateTime? createdAt,
    DateTime? updatedAt,
  });

  $AddressModelCopyWith<$Res> get address;
  $LocationModelCopyWith<$Res> get location;
  $PricingModelCopyWith<$Res> get pricing;
  $RoomsModelCopyWith<$Res> get rooms;
  $AvailabilityModelCopyWith<$Res> get availability;
  $UserModelCopyWith<$Res>? get host;
}

/// @nodoc
class _$ListingModelCopyWithImpl<$Res, $Val extends ListingModel>
    implements $ListingModelCopyWith<$Res> {
  _$ListingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hostId = null,
    Object? title = null,
    Object? description = null,
    Object? listingType = null,
    Object? propertyType = null,
    Object? address = null,
    Object? location = null,
    Object? pricing = null,
    Object? rooms = null,
    Object? photos = null,
    Object? amenities = null,
    Object? houseRules = null,
    Object? availability = null,
    Object? rating = null,
    Object? reviewCount = null,
    Object? reviews = null,
    Object? isSuperhost = null,
    Object? isFeatured = null,
    Object? isActive = null,
    Object? isWishlisted = null,
    Object? host = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            hostId: null == hostId
                ? _value.hostId
                : hostId // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            listingType: null == listingType
                ? _value.listingType
                : listingType // ignore: cast_nullable_to_non_nullable
                      as ListingType,
            propertyType: null == propertyType
                ? _value.propertyType
                : propertyType // ignore: cast_nullable_to_non_nullable
                      as PropertyType,
            address: null == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                      as AddressModel,
            location: null == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as LocationModel,
            pricing: null == pricing
                ? _value.pricing
                : pricing // ignore: cast_nullable_to_non_nullable
                      as PricingModel,
            rooms: null == rooms
                ? _value.rooms
                : rooms // ignore: cast_nullable_to_non_nullable
                      as RoomsModel,
            photos: null == photos
                ? _value.photos
                : photos // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            amenities: null == amenities
                ? _value.amenities
                : amenities // ignore: cast_nullable_to_non_nullable
                      as List<AmenityType>,
            houseRules: null == houseRules
                ? _value.houseRules
                : houseRules // ignore: cast_nullable_to_non_nullable
                      as List<RuleModel>,
            availability: null == availability
                ? _value.availability
                : availability // ignore: cast_nullable_to_non_nullable
                      as AvailabilityModel,
            rating: null == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                      as double,
            reviewCount: null == reviewCount
                ? _value.reviewCount
                : reviewCount // ignore: cast_nullable_to_non_nullable
                      as int,
            reviews: null == reviews
                ? _value.reviews
                : reviews // ignore: cast_nullable_to_non_nullable
                      as List<ReviewModel>,
            isSuperhost: null == isSuperhost
                ? _value.isSuperhost
                : isSuperhost // ignore: cast_nullable_to_non_nullable
                      as bool,
            isFeatured: null == isFeatured
                ? _value.isFeatured
                : isFeatured // ignore: cast_nullable_to_non_nullable
                      as bool,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
            isWishlisted: null == isWishlisted
                ? _value.isWishlisted
                : isWishlisted // ignore: cast_nullable_to_non_nullable
                      as bool,
            host: freezed == host
                ? _value.host
                : host // ignore: cast_nullable_to_non_nullable
                      as UserModel?,
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

  /// Create a copy of ListingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressModelCopyWith<$Res> get address {
    return $AddressModelCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  /// Create a copy of ListingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res> get location {
    return $LocationModelCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  /// Create a copy of ListingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PricingModelCopyWith<$Res> get pricing {
    return $PricingModelCopyWith<$Res>(_value.pricing, (value) {
      return _then(_value.copyWith(pricing: value) as $Val);
    });
  }

  /// Create a copy of ListingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoomsModelCopyWith<$Res> get rooms {
    return $RoomsModelCopyWith<$Res>(_value.rooms, (value) {
      return _then(_value.copyWith(rooms: value) as $Val);
    });
  }

  /// Create a copy of ListingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AvailabilityModelCopyWith<$Res> get availability {
    return $AvailabilityModelCopyWith<$Res>(_value.availability, (value) {
      return _then(_value.copyWith(availability: value) as $Val);
    });
  }

  /// Create a copy of ListingModel
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
abstract class _$$ListingModelImplCopyWith<$Res>
    implements $ListingModelCopyWith<$Res> {
  factory _$$ListingModelImplCopyWith(
    _$ListingModelImpl value,
    $Res Function(_$ListingModelImpl) then,
  ) = __$$ListingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String hostId,
    String title,
    String description,
    ListingType listingType,
    PropertyType propertyType,
    AddressModel address,
    LocationModel location,
    PricingModel pricing,
    RoomsModel rooms,
    List<String> photos,
    List<AmenityType> amenities,
    List<RuleModel> houseRules,
    AvailabilityModel availability,
    double rating,
    int reviewCount,
    List<ReviewModel> reviews,
    bool isSuperhost,
    bool isFeatured,
    bool isActive,
    bool isWishlisted,
    UserModel? host,
    DateTime? createdAt,
    DateTime? updatedAt,
  });

  @override
  $AddressModelCopyWith<$Res> get address;
  @override
  $LocationModelCopyWith<$Res> get location;
  @override
  $PricingModelCopyWith<$Res> get pricing;
  @override
  $RoomsModelCopyWith<$Res> get rooms;
  @override
  $AvailabilityModelCopyWith<$Res> get availability;
  @override
  $UserModelCopyWith<$Res>? get host;
}

/// @nodoc
class __$$ListingModelImplCopyWithImpl<$Res>
    extends _$ListingModelCopyWithImpl<$Res, _$ListingModelImpl>
    implements _$$ListingModelImplCopyWith<$Res> {
  __$$ListingModelImplCopyWithImpl(
    _$ListingModelImpl _value,
    $Res Function(_$ListingModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ListingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hostId = null,
    Object? title = null,
    Object? description = null,
    Object? listingType = null,
    Object? propertyType = null,
    Object? address = null,
    Object? location = null,
    Object? pricing = null,
    Object? rooms = null,
    Object? photos = null,
    Object? amenities = null,
    Object? houseRules = null,
    Object? availability = null,
    Object? rating = null,
    Object? reviewCount = null,
    Object? reviews = null,
    Object? isSuperhost = null,
    Object? isFeatured = null,
    Object? isActive = null,
    Object? isWishlisted = null,
    Object? host = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$ListingModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        hostId: null == hostId
            ? _value.hostId
            : hostId // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        listingType: null == listingType
            ? _value.listingType
            : listingType // ignore: cast_nullable_to_non_nullable
                  as ListingType,
        propertyType: null == propertyType
            ? _value.propertyType
            : propertyType // ignore: cast_nullable_to_non_nullable
                  as PropertyType,
        address: null == address
            ? _value.address
            : address // ignore: cast_nullable_to_non_nullable
                  as AddressModel,
        location: null == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as LocationModel,
        pricing: null == pricing
            ? _value.pricing
            : pricing // ignore: cast_nullable_to_non_nullable
                  as PricingModel,
        rooms: null == rooms
            ? _value.rooms
            : rooms // ignore: cast_nullable_to_non_nullable
                  as RoomsModel,
        photos: null == photos
            ? _value._photos
            : photos // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        amenities: null == amenities
            ? _value._amenities
            : amenities // ignore: cast_nullable_to_non_nullable
                  as List<AmenityType>,
        houseRules: null == houseRules
            ? _value._houseRules
            : houseRules // ignore: cast_nullable_to_non_nullable
                  as List<RuleModel>,
        availability: null == availability
            ? _value.availability
            : availability // ignore: cast_nullable_to_non_nullable
                  as AvailabilityModel,
        rating: null == rating
            ? _value.rating
            : rating // ignore: cast_nullable_to_non_nullable
                  as double,
        reviewCount: null == reviewCount
            ? _value.reviewCount
            : reviewCount // ignore: cast_nullable_to_non_nullable
                  as int,
        reviews: null == reviews
            ? _value._reviews
            : reviews // ignore: cast_nullable_to_non_nullable
                  as List<ReviewModel>,
        isSuperhost: null == isSuperhost
            ? _value.isSuperhost
            : isSuperhost // ignore: cast_nullable_to_non_nullable
                  as bool,
        isFeatured: null == isFeatured
            ? _value.isFeatured
            : isFeatured // ignore: cast_nullable_to_non_nullable
                  as bool,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
        isWishlisted: null == isWishlisted
            ? _value.isWishlisted
            : isWishlisted // ignore: cast_nullable_to_non_nullable
                  as bool,
        host: freezed == host
            ? _value.host
            : host // ignore: cast_nullable_to_non_nullable
                  as UserModel?,
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
class _$ListingModelImpl implements _ListingModel {
  const _$ListingModelImpl({
    required this.id,
    required this.hostId,
    required this.title,
    required this.description,
    required this.listingType,
    required this.propertyType,
    required this.address,
    required this.location,
    required this.pricing,
    required this.rooms,
    required final List<String> photos,
    required final List<AmenityType> amenities,
    required final List<RuleModel> houseRules,
    required this.availability,
    this.rating = 0.0,
    this.reviewCount = 0,
    final List<ReviewModel> reviews = const [],
    this.isSuperhost = false,
    this.isFeatured = false,
    this.isActive = false,
    this.isWishlisted = false,
    this.host,
    this.createdAt,
    this.updatedAt,
  }) : _photos = photos,
       _amenities = amenities,
       _houseRules = houseRules,
       _reviews = reviews;

  factory _$ListingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListingModelImplFromJson(json);

  @override
  final String id;
  @override
  final String hostId;
  @override
  final String title;
  @override
  final String description;
  @override
  final ListingType listingType;
  @override
  final PropertyType propertyType;
  @override
  final AddressModel address;
  @override
  final LocationModel location;
  @override
  final PricingModel pricing;
  @override
  final RoomsModel rooms;
  final List<String> _photos;
  @override
  List<String> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  final List<AmenityType> _amenities;
  @override
  List<AmenityType> get amenities {
    if (_amenities is EqualUnmodifiableListView) return _amenities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_amenities);
  }

  final List<RuleModel> _houseRules;
  @override
  List<RuleModel> get houseRules {
    if (_houseRules is EqualUnmodifiableListView) return _houseRules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_houseRules);
  }

  @override
  final AvailabilityModel availability;
  @override
  @JsonKey()
  final double rating;
  @override
  @JsonKey()
  final int reviewCount;
  final List<ReviewModel> _reviews;
  @override
  @JsonKey()
  List<ReviewModel> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  @JsonKey()
  final bool isSuperhost;
  @override
  @JsonKey()
  final bool isFeatured;
  @override
  @JsonKey()
  final bool isActive;
  @override
  @JsonKey()
  final bool isWishlisted;
  @override
  final UserModel? host;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ListingModel(id: $id, hostId: $hostId, title: $title, description: $description, listingType: $listingType, propertyType: $propertyType, address: $address, location: $location, pricing: $pricing, rooms: $rooms, photos: $photos, amenities: $amenities, houseRules: $houseRules, availability: $availability, rating: $rating, reviewCount: $reviewCount, reviews: $reviews, isSuperhost: $isSuperhost, isFeatured: $isFeatured, isActive: $isActive, isWishlisted: $isWishlisted, host: $host, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListingModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hostId, hostId) || other.hostId == hostId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.listingType, listingType) ||
                other.listingType == listingType) &&
            (identical(other.propertyType, propertyType) ||
                other.propertyType == propertyType) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.pricing, pricing) || other.pricing == pricing) &&
            (identical(other.rooms, rooms) || other.rooms == rooms) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            const DeepCollectionEquality().equals(
              other._amenities,
              _amenities,
            ) &&
            const DeepCollectionEquality().equals(
              other._houseRules,
              _houseRules,
            ) &&
            (identical(other.availability, availability) ||
                other.availability == availability) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            (identical(other.isSuperhost, isSuperhost) ||
                other.isSuperhost == isSuperhost) &&
            (identical(other.isFeatured, isFeatured) ||
                other.isFeatured == isFeatured) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isWishlisted, isWishlisted) ||
                other.isWishlisted == isWishlisted) &&
            (identical(other.host, host) || other.host == host) &&
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
    hostId,
    title,
    description,
    listingType,
    propertyType,
    address,
    location,
    pricing,
    rooms,
    const DeepCollectionEquality().hash(_photos),
    const DeepCollectionEquality().hash(_amenities),
    const DeepCollectionEquality().hash(_houseRules),
    availability,
    rating,
    reviewCount,
    const DeepCollectionEquality().hash(_reviews),
    isSuperhost,
    isFeatured,
    isActive,
    isWishlisted,
    host,
    createdAt,
    updatedAt,
  ]);

  /// Create a copy of ListingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListingModelImplCopyWith<_$ListingModelImpl> get copyWith =>
      __$$ListingModelImplCopyWithImpl<_$ListingModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListingModelImplToJson(this);
  }
}

abstract class _ListingModel implements ListingModel {
  const factory _ListingModel({
    required final String id,
    required final String hostId,
    required final String title,
    required final String description,
    required final ListingType listingType,
    required final PropertyType propertyType,
    required final AddressModel address,
    required final LocationModel location,
    required final PricingModel pricing,
    required final RoomsModel rooms,
    required final List<String> photos,
    required final List<AmenityType> amenities,
    required final List<RuleModel> houseRules,
    required final AvailabilityModel availability,
    final double rating,
    final int reviewCount,
    final List<ReviewModel> reviews,
    final bool isSuperhost,
    final bool isFeatured,
    final bool isActive,
    final bool isWishlisted,
    final UserModel? host,
    final DateTime? createdAt,
    final DateTime? updatedAt,
  }) = _$ListingModelImpl;

  factory _ListingModel.fromJson(Map<String, dynamic> json) =
      _$ListingModelImpl.fromJson;

  @override
  String get id;
  @override
  String get hostId;
  @override
  String get title;
  @override
  String get description;
  @override
  ListingType get listingType;
  @override
  PropertyType get propertyType;
  @override
  AddressModel get address;
  @override
  LocationModel get location;
  @override
  PricingModel get pricing;
  @override
  RoomsModel get rooms;
  @override
  List<String> get photos;
  @override
  List<AmenityType> get amenities;
  @override
  List<RuleModel> get houseRules;
  @override
  AvailabilityModel get availability;
  @override
  double get rating;
  @override
  int get reviewCount;
  @override
  List<ReviewModel> get reviews;
  @override
  bool get isSuperhost;
  @override
  bool get isFeatured;
  @override
  bool get isActive;
  @override
  bool get isWishlisted;
  @override
  UserModel? get host;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of ListingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListingModelImplCopyWith<_$ListingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddressModel _$AddressModelFromJson(Map<String, dynamic> json) {
  return _AddressModel.fromJson(json);
}

/// @nodoc
mixin _$AddressModel {
  String get street => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get zipCode => throw _privateConstructorUsedError;
  String get neighborhood => throw _privateConstructorUsedError;

  /// Serializes this AddressModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddressModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressModelCopyWith<AddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressModelCopyWith<$Res> {
  factory $AddressModelCopyWith(
    AddressModel value,
    $Res Function(AddressModel) then,
  ) = _$AddressModelCopyWithImpl<$Res, AddressModel>;
  @useResult
  $Res call({
    String street,
    String city,
    String state,
    String country,
    String zipCode,
    String neighborhood,
  });
}

/// @nodoc
class _$AddressModelCopyWithImpl<$Res, $Val extends AddressModel>
    implements $AddressModelCopyWith<$Res> {
  _$AddressModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddressModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = null,
    Object? city = null,
    Object? state = null,
    Object? country = null,
    Object? zipCode = null,
    Object? neighborhood = null,
  }) {
    return _then(
      _value.copyWith(
            street: null == street
                ? _value.street
                : street // ignore: cast_nullable_to_non_nullable
                      as String,
            city: null == city
                ? _value.city
                : city // ignore: cast_nullable_to_non_nullable
                      as String,
            state: null == state
                ? _value.state
                : state // ignore: cast_nullable_to_non_nullable
                      as String,
            country: null == country
                ? _value.country
                : country // ignore: cast_nullable_to_non_nullable
                      as String,
            zipCode: null == zipCode
                ? _value.zipCode
                : zipCode // ignore: cast_nullable_to_non_nullable
                      as String,
            neighborhood: null == neighborhood
                ? _value.neighborhood
                : neighborhood // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AddressModelImplCopyWith<$Res>
    implements $AddressModelCopyWith<$Res> {
  factory _$$AddressModelImplCopyWith(
    _$AddressModelImpl value,
    $Res Function(_$AddressModelImpl) then,
  ) = __$$AddressModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String street,
    String city,
    String state,
    String country,
    String zipCode,
    String neighborhood,
  });
}

/// @nodoc
class __$$AddressModelImplCopyWithImpl<$Res>
    extends _$AddressModelCopyWithImpl<$Res, _$AddressModelImpl>
    implements _$$AddressModelImplCopyWith<$Res> {
  __$$AddressModelImplCopyWithImpl(
    _$AddressModelImpl _value,
    $Res Function(_$AddressModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddressModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = null,
    Object? city = null,
    Object? state = null,
    Object? country = null,
    Object? zipCode = null,
    Object? neighborhood = null,
  }) {
    return _then(
      _$AddressModelImpl(
        street: null == street
            ? _value.street
            : street // ignore: cast_nullable_to_non_nullable
                  as String,
        city: null == city
            ? _value.city
            : city // ignore: cast_nullable_to_non_nullable
                  as String,
        state: null == state
            ? _value.state
            : state // ignore: cast_nullable_to_non_nullable
                  as String,
        country: null == country
            ? _value.country
            : country // ignore: cast_nullable_to_non_nullable
                  as String,
        zipCode: null == zipCode
            ? _value.zipCode
            : zipCode // ignore: cast_nullable_to_non_nullable
                  as String,
        neighborhood: null == neighborhood
            ? _value.neighborhood
            : neighborhood // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressModelImpl implements _AddressModel {
  const _$AddressModelImpl({
    required this.street,
    required this.city,
    required this.state,
    required this.country,
    required this.zipCode,
    this.neighborhood = '',
  });

  factory _$AddressModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressModelImplFromJson(json);

  @override
  final String street;
  @override
  final String city;
  @override
  final String state;
  @override
  final String country;
  @override
  final String zipCode;
  @override
  @JsonKey()
  final String neighborhood;

  @override
  String toString() {
    return 'AddressModel(street: $street, city: $city, state: $state, country: $country, zipCode: $zipCode, neighborhood: $neighborhood)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressModelImpl &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.neighborhood, neighborhood) ||
                other.neighborhood == neighborhood));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    street,
    city,
    state,
    country,
    zipCode,
    neighborhood,
  );

  /// Create a copy of AddressModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressModelImplCopyWith<_$AddressModelImpl> get copyWith =>
      __$$AddressModelImplCopyWithImpl<_$AddressModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressModelImplToJson(this);
  }
}

abstract class _AddressModel implements AddressModel {
  const factory _AddressModel({
    required final String street,
    required final String city,
    required final String state,
    required final String country,
    required final String zipCode,
    final String neighborhood,
  }) = _$AddressModelImpl;

  factory _AddressModel.fromJson(Map<String, dynamic> json) =
      _$AddressModelImpl.fromJson;

  @override
  String get street;
  @override
  String get city;
  @override
  String get state;
  @override
  String get country;
  @override
  String get zipCode;
  @override
  String get neighborhood;

  /// Create a copy of AddressModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressModelImplCopyWith<_$AddressModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) {
  return _LocationModel.fromJson(json);
}

/// @nodoc
mixin _$LocationModel {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  /// Serializes this LocationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationModelCopyWith<LocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationModelCopyWith<$Res> {
  factory $LocationModelCopyWith(
    LocationModel value,
    $Res Function(LocationModel) then,
  ) = _$LocationModelCopyWithImpl<$Res, LocationModel>;
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$LocationModelCopyWithImpl<$Res, $Val extends LocationModel>
    implements $LocationModelCopyWith<$Res> {
  _$LocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? latitude = null, Object? longitude = null}) {
    return _then(
      _value.copyWith(
            latitude: null == latitude
                ? _value.latitude
                : latitude // ignore: cast_nullable_to_non_nullable
                      as double,
            longitude: null == longitude
                ? _value.longitude
                : longitude // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LocationModelImplCopyWith<$Res>
    implements $LocationModelCopyWith<$Res> {
  factory _$$LocationModelImplCopyWith(
    _$LocationModelImpl value,
    $Res Function(_$LocationModelImpl) then,
  ) = __$$LocationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$$LocationModelImplCopyWithImpl<$Res>
    extends _$LocationModelCopyWithImpl<$Res, _$LocationModelImpl>
    implements _$$LocationModelImplCopyWith<$Res> {
  __$$LocationModelImplCopyWithImpl(
    _$LocationModelImpl _value,
    $Res Function(_$LocationModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? latitude = null, Object? longitude = null}) {
    return _then(
      _$LocationModelImpl(
        latitude: null == latitude
            ? _value.latitude
            : latitude // ignore: cast_nullable_to_non_nullable
                  as double,
        longitude: null == longitude
            ? _value.longitude
            : longitude // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationModelImpl implements _LocationModel {
  const _$LocationModelImpl({required this.latitude, required this.longitude});

  factory _$LocationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationModelImplFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'LocationModel(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationModelImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationModelImplCopyWith<_$LocationModelImpl> get copyWith =>
      __$$LocationModelImplCopyWithImpl<_$LocationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationModelImplToJson(this);
  }
}

abstract class _LocationModel implements LocationModel {
  const factory _LocationModel({
    required final double latitude,
    required final double longitude,
  }) = _$LocationModelImpl;

  factory _LocationModel.fromJson(Map<String, dynamic> json) =
      _$LocationModelImpl.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationModelImplCopyWith<_$LocationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PricingModel _$PricingModelFromJson(Map<String, dynamic> json) {
  return _PricingModel.fromJson(json);
}

/// @nodoc
mixin _$PricingModel {
  double get basePrice => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  double get cleaningFee => throw _privateConstructorUsedError;
  double get serviceFee => throw _privateConstructorUsedError;
  double get weeklyDiscount => throw _privateConstructorUsedError;
  double get monthlyDiscount => throw _privateConstructorUsedError;
  int get minNights => throw _privateConstructorUsedError;
  int get maxNights => throw _privateConstructorUsedError;

  /// Serializes this PricingModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PricingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PricingModelCopyWith<PricingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PricingModelCopyWith<$Res> {
  factory $PricingModelCopyWith(
    PricingModel value,
    $Res Function(PricingModel) then,
  ) = _$PricingModelCopyWithImpl<$Res, PricingModel>;
  @useResult
  $Res call({
    double basePrice,
    String currency,
    double cleaningFee,
    double serviceFee,
    double weeklyDiscount,
    double monthlyDiscount,
    int minNights,
    int maxNights,
  });
}

/// @nodoc
class _$PricingModelCopyWithImpl<$Res, $Val extends PricingModel>
    implements $PricingModelCopyWith<$Res> {
  _$PricingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PricingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? basePrice = null,
    Object? currency = null,
    Object? cleaningFee = null,
    Object? serviceFee = null,
    Object? weeklyDiscount = null,
    Object? monthlyDiscount = null,
    Object? minNights = null,
    Object? maxNights = null,
  }) {
    return _then(
      _value.copyWith(
            basePrice: null == basePrice
                ? _value.basePrice
                : basePrice // ignore: cast_nullable_to_non_nullable
                      as double,
            currency: null == currency
                ? _value.currency
                : currency // ignore: cast_nullable_to_non_nullable
                      as String,
            cleaningFee: null == cleaningFee
                ? _value.cleaningFee
                : cleaningFee // ignore: cast_nullable_to_non_nullable
                      as double,
            serviceFee: null == serviceFee
                ? _value.serviceFee
                : serviceFee // ignore: cast_nullable_to_non_nullable
                      as double,
            weeklyDiscount: null == weeklyDiscount
                ? _value.weeklyDiscount
                : weeklyDiscount // ignore: cast_nullable_to_non_nullable
                      as double,
            monthlyDiscount: null == monthlyDiscount
                ? _value.monthlyDiscount
                : monthlyDiscount // ignore: cast_nullable_to_non_nullable
                      as double,
            minNights: null == minNights
                ? _value.minNights
                : minNights // ignore: cast_nullable_to_non_nullable
                      as int,
            maxNights: null == maxNights
                ? _value.maxNights
                : maxNights // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PricingModelImplCopyWith<$Res>
    implements $PricingModelCopyWith<$Res> {
  factory _$$PricingModelImplCopyWith(
    _$PricingModelImpl value,
    $Res Function(_$PricingModelImpl) then,
  ) = __$$PricingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    double basePrice,
    String currency,
    double cleaningFee,
    double serviceFee,
    double weeklyDiscount,
    double monthlyDiscount,
    int minNights,
    int maxNights,
  });
}

/// @nodoc
class __$$PricingModelImplCopyWithImpl<$Res>
    extends _$PricingModelCopyWithImpl<$Res, _$PricingModelImpl>
    implements _$$PricingModelImplCopyWith<$Res> {
  __$$PricingModelImplCopyWithImpl(
    _$PricingModelImpl _value,
    $Res Function(_$PricingModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PricingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? basePrice = null,
    Object? currency = null,
    Object? cleaningFee = null,
    Object? serviceFee = null,
    Object? weeklyDiscount = null,
    Object? monthlyDiscount = null,
    Object? minNights = null,
    Object? maxNights = null,
  }) {
    return _then(
      _$PricingModelImpl(
        basePrice: null == basePrice
            ? _value.basePrice
            : basePrice // ignore: cast_nullable_to_non_nullable
                  as double,
        currency: null == currency
            ? _value.currency
            : currency // ignore: cast_nullable_to_non_nullable
                  as String,
        cleaningFee: null == cleaningFee
            ? _value.cleaningFee
            : cleaningFee // ignore: cast_nullable_to_non_nullable
                  as double,
        serviceFee: null == serviceFee
            ? _value.serviceFee
            : serviceFee // ignore: cast_nullable_to_non_nullable
                  as double,
        weeklyDiscount: null == weeklyDiscount
            ? _value.weeklyDiscount
            : weeklyDiscount // ignore: cast_nullable_to_non_nullable
                  as double,
        monthlyDiscount: null == monthlyDiscount
            ? _value.monthlyDiscount
            : monthlyDiscount // ignore: cast_nullable_to_non_nullable
                  as double,
        minNights: null == minNights
            ? _value.minNights
            : minNights // ignore: cast_nullable_to_non_nullable
                  as int,
        maxNights: null == maxNights
            ? _value.maxNights
            : maxNights // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PricingModelImpl implements _PricingModel {
  const _$PricingModelImpl({
    required this.basePrice,
    required this.currency,
    this.cleaningFee = 0.0,
    this.serviceFee = 0.0,
    this.weeklyDiscount = 0.0,
    this.monthlyDiscount = 0.0,
    this.minNights = 0,
    this.maxNights = 30,
  });

  factory _$PricingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PricingModelImplFromJson(json);

  @override
  final double basePrice;
  @override
  final String currency;
  @override
  @JsonKey()
  final double cleaningFee;
  @override
  @JsonKey()
  final double serviceFee;
  @override
  @JsonKey()
  final double weeklyDiscount;
  @override
  @JsonKey()
  final double monthlyDiscount;
  @override
  @JsonKey()
  final int minNights;
  @override
  @JsonKey()
  final int maxNights;

  @override
  String toString() {
    return 'PricingModel(basePrice: $basePrice, currency: $currency, cleaningFee: $cleaningFee, serviceFee: $serviceFee, weeklyDiscount: $weeklyDiscount, monthlyDiscount: $monthlyDiscount, minNights: $minNights, maxNights: $maxNights)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PricingModelImpl &&
            (identical(other.basePrice, basePrice) ||
                other.basePrice == basePrice) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.cleaningFee, cleaningFee) ||
                other.cleaningFee == cleaningFee) &&
            (identical(other.serviceFee, serviceFee) ||
                other.serviceFee == serviceFee) &&
            (identical(other.weeklyDiscount, weeklyDiscount) ||
                other.weeklyDiscount == weeklyDiscount) &&
            (identical(other.monthlyDiscount, monthlyDiscount) ||
                other.monthlyDiscount == monthlyDiscount) &&
            (identical(other.minNights, minNights) ||
                other.minNights == minNights) &&
            (identical(other.maxNights, maxNights) ||
                other.maxNights == maxNights));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    basePrice,
    currency,
    cleaningFee,
    serviceFee,
    weeklyDiscount,
    monthlyDiscount,
    minNights,
    maxNights,
  );

  /// Create a copy of PricingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PricingModelImplCopyWith<_$PricingModelImpl> get copyWith =>
      __$$PricingModelImplCopyWithImpl<_$PricingModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PricingModelImplToJson(this);
  }
}

abstract class _PricingModel implements PricingModel {
  const factory _PricingModel({
    required final double basePrice,
    required final String currency,
    final double cleaningFee,
    final double serviceFee,
    final double weeklyDiscount,
    final double monthlyDiscount,
    final int minNights,
    final int maxNights,
  }) = _$PricingModelImpl;

  factory _PricingModel.fromJson(Map<String, dynamic> json) =
      _$PricingModelImpl.fromJson;

  @override
  double get basePrice;
  @override
  String get currency;
  @override
  double get cleaningFee;
  @override
  double get serviceFee;
  @override
  double get weeklyDiscount;
  @override
  double get monthlyDiscount;
  @override
  int get minNights;
  @override
  int get maxNights;

  /// Create a copy of PricingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PricingModelImplCopyWith<_$PricingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RoomsModel _$RoomsModelFromJson(Map<String, dynamic> json) {
  return _RoomsModel.fromJson(json);
}

/// @nodoc
mixin _$RoomsModel {
  int get guests => throw _privateConstructorUsedError;
  int get bedrooms => throw _privateConstructorUsedError;
  int get beds => throw _privateConstructorUsedError;
  int get bathrooms => throw _privateConstructorUsedError;

  /// Serializes this RoomsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoomsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoomsModelCopyWith<RoomsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomsModelCopyWith<$Res> {
  factory $RoomsModelCopyWith(
    RoomsModel value,
    $Res Function(RoomsModel) then,
  ) = _$RoomsModelCopyWithImpl<$Res, RoomsModel>;
  @useResult
  $Res call({int guests, int bedrooms, int beds, int bathrooms});
}

/// @nodoc
class _$RoomsModelCopyWithImpl<$Res, $Val extends RoomsModel>
    implements $RoomsModelCopyWith<$Res> {
  _$RoomsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoomsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? guests = null,
    Object? bedrooms = null,
    Object? beds = null,
    Object? bathrooms = null,
  }) {
    return _then(
      _value.copyWith(
            guests: null == guests
                ? _value.guests
                : guests // ignore: cast_nullable_to_non_nullable
                      as int,
            bedrooms: null == bedrooms
                ? _value.bedrooms
                : bedrooms // ignore: cast_nullable_to_non_nullable
                      as int,
            beds: null == beds
                ? _value.beds
                : beds // ignore: cast_nullable_to_non_nullable
                      as int,
            bathrooms: null == bathrooms
                ? _value.bathrooms
                : bathrooms // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RoomsModelImplCopyWith<$Res>
    implements $RoomsModelCopyWith<$Res> {
  factory _$$RoomsModelImplCopyWith(
    _$RoomsModelImpl value,
    $Res Function(_$RoomsModelImpl) then,
  ) = __$$RoomsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int guests, int bedrooms, int beds, int bathrooms});
}

/// @nodoc
class __$$RoomsModelImplCopyWithImpl<$Res>
    extends _$RoomsModelCopyWithImpl<$Res, _$RoomsModelImpl>
    implements _$$RoomsModelImplCopyWith<$Res> {
  __$$RoomsModelImplCopyWithImpl(
    _$RoomsModelImpl _value,
    $Res Function(_$RoomsModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RoomsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? guests = null,
    Object? bedrooms = null,
    Object? beds = null,
    Object? bathrooms = null,
  }) {
    return _then(
      _$RoomsModelImpl(
        guests: null == guests
            ? _value.guests
            : guests // ignore: cast_nullable_to_non_nullable
                  as int,
        bedrooms: null == bedrooms
            ? _value.bedrooms
            : bedrooms // ignore: cast_nullable_to_non_nullable
                  as int,
        beds: null == beds
            ? _value.beds
            : beds // ignore: cast_nullable_to_non_nullable
                  as int,
        bathrooms: null == bathrooms
            ? _value.bathrooms
            : bathrooms // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomsModelImpl implements _RoomsModel {
  const _$RoomsModelImpl({
    required this.guests,
    required this.bedrooms,
    required this.beds,
    required this.bathrooms,
  });

  factory _$RoomsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomsModelImplFromJson(json);

  @override
  final int guests;
  @override
  final int bedrooms;
  @override
  final int beds;
  @override
  final int bathrooms;

  @override
  String toString() {
    return 'RoomsModel(guests: $guests, bedrooms: $bedrooms, beds: $beds, bathrooms: $bathrooms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomsModelImpl &&
            (identical(other.guests, guests) || other.guests == guests) &&
            (identical(other.bedrooms, bedrooms) ||
                other.bedrooms == bedrooms) &&
            (identical(other.beds, beds) || other.beds == beds) &&
            (identical(other.bathrooms, bathrooms) ||
                other.bathrooms == bathrooms));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, guests, bedrooms, beds, bathrooms);

  /// Create a copy of RoomsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomsModelImplCopyWith<_$RoomsModelImpl> get copyWith =>
      __$$RoomsModelImplCopyWithImpl<_$RoomsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomsModelImplToJson(this);
  }
}

abstract class _RoomsModel implements RoomsModel {
  const factory _RoomsModel({
    required final int guests,
    required final int bedrooms,
    required final int beds,
    required final int bathrooms,
  }) = _$RoomsModelImpl;

  factory _RoomsModel.fromJson(Map<String, dynamic> json) =
      _$RoomsModelImpl.fromJson;

  @override
  int get guests;
  @override
  int get bedrooms;
  @override
  int get beds;
  @override
  int get bathrooms;

  /// Create a copy of RoomsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoomsModelImplCopyWith<_$RoomsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RuleModel _$RuleModelFromJson(Map<String, dynamic> json) {
  return _RuleModel.fromJson(json);
}

/// @nodoc
mixin _$RuleModel {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isAllowed => throw _privateConstructorUsedError;

  /// Serializes this RuleModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RuleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RuleModelCopyWith<RuleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RuleModelCopyWith<$Res> {
  factory $RuleModelCopyWith(RuleModel value, $Res Function(RuleModel) then) =
      _$RuleModelCopyWithImpl<$Res, RuleModel>;
  @useResult
  $Res call({String title, String description, bool isAllowed});
}

/// @nodoc
class _$RuleModelCopyWithImpl<$Res, $Val extends RuleModel>
    implements $RuleModelCopyWith<$Res> {
  _$RuleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RuleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? isAllowed = null,
  }) {
    return _then(
      _value.copyWith(
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            isAllowed: null == isAllowed
                ? _value.isAllowed
                : isAllowed // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RuleModelImplCopyWith<$Res>
    implements $RuleModelCopyWith<$Res> {
  factory _$$RuleModelImplCopyWith(
    _$RuleModelImpl value,
    $Res Function(_$RuleModelImpl) then,
  ) = __$$RuleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description, bool isAllowed});
}

/// @nodoc
class __$$RuleModelImplCopyWithImpl<$Res>
    extends _$RuleModelCopyWithImpl<$Res, _$RuleModelImpl>
    implements _$$RuleModelImplCopyWith<$Res> {
  __$$RuleModelImplCopyWithImpl(
    _$RuleModelImpl _value,
    $Res Function(_$RuleModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RuleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? isAllowed = null,
  }) {
    return _then(
      _$RuleModelImpl(
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        isAllowed: null == isAllowed
            ? _value.isAllowed
            : isAllowed // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RuleModelImpl implements _RuleModel {
  const _$RuleModelImpl({
    required this.title,
    required this.description,
    this.isAllowed = false,
  });

  factory _$RuleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RuleModelImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  @JsonKey()
  final bool isAllowed;

  @override
  String toString() {
    return 'RuleModel(title: $title, description: $description, isAllowed: $isAllowed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RuleModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isAllowed, isAllowed) ||
                other.isAllowed == isAllowed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, isAllowed);

  /// Create a copy of RuleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RuleModelImplCopyWith<_$RuleModelImpl> get copyWith =>
      __$$RuleModelImplCopyWithImpl<_$RuleModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RuleModelImplToJson(this);
  }
}

abstract class _RuleModel implements RuleModel {
  const factory _RuleModel({
    required final String title,
    required final String description,
    final bool isAllowed,
  }) = _$RuleModelImpl;

  factory _RuleModel.fromJson(Map<String, dynamic> json) =
      _$RuleModelImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  bool get isAllowed;

  /// Create a copy of RuleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RuleModelImplCopyWith<_$RuleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AvailabilityModel _$AvailabilityModelFromJson(Map<String, dynamic> json) {
  return _AvailabilityModel.fromJson(json);
}

/// @nodoc
mixin _$AvailabilityModel {
  DateTime get checkInTime => throw _privateConstructorUsedError;
  DateTime get checkOutTime => throw _privateConstructorUsedError;
  List<DateTime> get blockedDates => throw _privateConstructorUsedError;
  int get advanceNotice => throw _privateConstructorUsedError; // days
  int get bookingWindow => throw _privateConstructorUsedError;

  /// Serializes this AvailabilityModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AvailabilityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AvailabilityModelCopyWith<AvailabilityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailabilityModelCopyWith<$Res> {
  factory $AvailabilityModelCopyWith(
    AvailabilityModel value,
    $Res Function(AvailabilityModel) then,
  ) = _$AvailabilityModelCopyWithImpl<$Res, AvailabilityModel>;
  @useResult
  $Res call({
    DateTime checkInTime,
    DateTime checkOutTime,
    List<DateTime> blockedDates,
    int advanceNotice,
    int bookingWindow,
  });
}

/// @nodoc
class _$AvailabilityModelCopyWithImpl<$Res, $Val extends AvailabilityModel>
    implements $AvailabilityModelCopyWith<$Res> {
  _$AvailabilityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AvailabilityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkInTime = null,
    Object? checkOutTime = null,
    Object? blockedDates = null,
    Object? advanceNotice = null,
    Object? bookingWindow = null,
  }) {
    return _then(
      _value.copyWith(
            checkInTime: null == checkInTime
                ? _value.checkInTime
                : checkInTime // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            checkOutTime: null == checkOutTime
                ? _value.checkOutTime
                : checkOutTime // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            blockedDates: null == blockedDates
                ? _value.blockedDates
                : blockedDates // ignore: cast_nullable_to_non_nullable
                      as List<DateTime>,
            advanceNotice: null == advanceNotice
                ? _value.advanceNotice
                : advanceNotice // ignore: cast_nullable_to_non_nullable
                      as int,
            bookingWindow: null == bookingWindow
                ? _value.bookingWindow
                : bookingWindow // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AvailabilityModelImplCopyWith<$Res>
    implements $AvailabilityModelCopyWith<$Res> {
  factory _$$AvailabilityModelImplCopyWith(
    _$AvailabilityModelImpl value,
    $Res Function(_$AvailabilityModelImpl) then,
  ) = __$$AvailabilityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    DateTime checkInTime,
    DateTime checkOutTime,
    List<DateTime> blockedDates,
    int advanceNotice,
    int bookingWindow,
  });
}

/// @nodoc
class __$$AvailabilityModelImplCopyWithImpl<$Res>
    extends _$AvailabilityModelCopyWithImpl<$Res, _$AvailabilityModelImpl>
    implements _$$AvailabilityModelImplCopyWith<$Res> {
  __$$AvailabilityModelImplCopyWithImpl(
    _$AvailabilityModelImpl _value,
    $Res Function(_$AvailabilityModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AvailabilityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkInTime = null,
    Object? checkOutTime = null,
    Object? blockedDates = null,
    Object? advanceNotice = null,
    Object? bookingWindow = null,
  }) {
    return _then(
      _$AvailabilityModelImpl(
        checkInTime: null == checkInTime
            ? _value.checkInTime
            : checkInTime // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        checkOutTime: null == checkOutTime
            ? _value.checkOutTime
            : checkOutTime // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        blockedDates: null == blockedDates
            ? _value._blockedDates
            : blockedDates // ignore: cast_nullable_to_non_nullable
                  as List<DateTime>,
        advanceNotice: null == advanceNotice
            ? _value.advanceNotice
            : advanceNotice // ignore: cast_nullable_to_non_nullable
                  as int,
        bookingWindow: null == bookingWindow
            ? _value.bookingWindow
            : bookingWindow // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailabilityModelImpl implements _AvailabilityModel {
  const _$AvailabilityModelImpl({
    required this.checkInTime,
    required this.checkOutTime,
    final List<DateTime> blockedDates = const [],
    this.advanceNotice = 0,
    this.bookingWindow = 365,
  }) : _blockedDates = blockedDates;

  factory _$AvailabilityModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailabilityModelImplFromJson(json);

  @override
  final DateTime checkInTime;
  @override
  final DateTime checkOutTime;
  final List<DateTime> _blockedDates;
  @override
  @JsonKey()
  List<DateTime> get blockedDates {
    if (_blockedDates is EqualUnmodifiableListView) return _blockedDates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blockedDates);
  }

  @override
  @JsonKey()
  final int advanceNotice;
  // days
  @override
  @JsonKey()
  final int bookingWindow;

  @override
  String toString() {
    return 'AvailabilityModel(checkInTime: $checkInTime, checkOutTime: $checkOutTime, blockedDates: $blockedDates, advanceNotice: $advanceNotice, bookingWindow: $bookingWindow)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailabilityModelImpl &&
            (identical(other.checkInTime, checkInTime) ||
                other.checkInTime == checkInTime) &&
            (identical(other.checkOutTime, checkOutTime) ||
                other.checkOutTime == checkOutTime) &&
            const DeepCollectionEquality().equals(
              other._blockedDates,
              _blockedDates,
            ) &&
            (identical(other.advanceNotice, advanceNotice) ||
                other.advanceNotice == advanceNotice) &&
            (identical(other.bookingWindow, bookingWindow) ||
                other.bookingWindow == bookingWindow));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    checkInTime,
    checkOutTime,
    const DeepCollectionEquality().hash(_blockedDates),
    advanceNotice,
    bookingWindow,
  );

  /// Create a copy of AvailabilityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailabilityModelImplCopyWith<_$AvailabilityModelImpl> get copyWith =>
      __$$AvailabilityModelImplCopyWithImpl<_$AvailabilityModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailabilityModelImplToJson(this);
  }
}

abstract class _AvailabilityModel implements AvailabilityModel {
  const factory _AvailabilityModel({
    required final DateTime checkInTime,
    required final DateTime checkOutTime,
    final List<DateTime> blockedDates,
    final int advanceNotice,
    final int bookingWindow,
  }) = _$AvailabilityModelImpl;

  factory _AvailabilityModel.fromJson(Map<String, dynamic> json) =
      _$AvailabilityModelImpl.fromJson;

  @override
  DateTime get checkInTime;
  @override
  DateTime get checkOutTime;
  @override
  List<DateTime> get blockedDates;
  @override
  int get advanceNotice; // days
  @override
  int get bookingWindow;

  /// Create a copy of AvailabilityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AvailabilityModelImplCopyWith<_$AvailabilityModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListingModelImpl _$$ListingModelImplFromJson(
  Map<String, dynamic> json,
) => _$ListingModelImpl(
  id: json['id'] as String,
  hostId: json['hostId'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  listingType: $enumDecode(_$ListingTypeEnumMap, json['listingType']),
  propertyType: $enumDecode(_$PropertyTypeEnumMap, json['propertyType']),
  address: AddressModel.fromJson(json['address'] as Map<String, dynamic>),
  location: LocationModel.fromJson(json['location'] as Map<String, dynamic>),
  pricing: PricingModel.fromJson(json['pricing'] as Map<String, dynamic>),
  rooms: RoomsModel.fromJson(json['rooms'] as Map<String, dynamic>),
  photos: (json['photos'] as List<dynamic>).map((e) => e as String).toList(),
  amenities: (json['amenities'] as List<dynamic>)
      .map((e) => $enumDecode(_$AmenityTypeEnumMap, e))
      .toList(),
  houseRules: (json['houseRules'] as List<dynamic>)
      .map((e) => RuleModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  availability: AvailabilityModel.fromJson(
    json['availability'] as Map<String, dynamic>,
  ),
  rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
  reviewCount: (json['reviewCount'] as num?)?.toInt() ?? 0,
  reviews:
      (json['reviews'] as List<dynamic>?)
          ?.map((e) => ReviewModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  isSuperhost: json['isSuperhost'] as bool? ?? false,
  isFeatured: json['isFeatured'] as bool? ?? false,
  isActive: json['isActive'] as bool? ?? false,
  isWishlisted: json['isWishlisted'] as bool? ?? false,
  host: json['host'] == null
      ? null
      : UserModel.fromJson(json['host'] as Map<String, dynamic>),
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$$ListingModelImplToJson(
  _$ListingModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'hostId': instance.hostId,
  'title': instance.title,
  'description': instance.description,
  'listingType': _$ListingTypeEnumMap[instance.listingType]!,
  'propertyType': _$PropertyTypeEnumMap[instance.propertyType]!,
  'address': instance.address,
  'location': instance.location,
  'pricing': instance.pricing,
  'rooms': instance.rooms,
  'photos': instance.photos,
  'amenities': instance.amenities.map((e) => _$AmenityTypeEnumMap[e]!).toList(),
  'houseRules': instance.houseRules,
  'availability': instance.availability,
  'rating': instance.rating,
  'reviewCount': instance.reviewCount,
  'reviews': instance.reviews,
  'isSuperhost': instance.isSuperhost,
  'isFeatured': instance.isFeatured,
  'isActive': instance.isActive,
  'isWishlisted': instance.isWishlisted,
  'host': instance.host,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
};

const _$ListingTypeEnumMap = {
  ListingType.entirePlace: 'entirePlace',
  ListingType.privateRoom: 'privateRoom',
  ListingType.sharedRoom: 'sharedRoom',
  ListingType.hotel: 'hotel',
};

const _$PropertyTypeEnumMap = {
  PropertyType.house: 'house',
  PropertyType.apartment: 'apartment',
  PropertyType.guesthouse: 'guesthouse',
  PropertyType.hotel: 'hotel',
  PropertyType.cabin: 'cabin',
  PropertyType.villa: 'villa',
  PropertyType.treehouse: 'treehouse',
  PropertyType.boat: 'boat',
  PropertyType.campervan: 'campervan',
  PropertyType.tent: 'tent',
  PropertyType.yurt: 'yurt',
  PropertyType.barn: 'barn',
  PropertyType.castle: 'castle',
  PropertyType.cave: 'cave',
  PropertyType.igloo: 'igloo',
  PropertyType.island: 'island',
  PropertyType.loft: 'loft',
  PropertyType.tower: 'tower',
  PropertyType.windmill: 'windmill',
  PropertyType.other: 'other',
};

const _$AmenityTypeEnumMap = {
  AmenityType.wifi: 'wifi',
  AmenityType.kitchen: 'kitchen',
  AmenityType.parking: 'parking',
  AmenityType.pool: 'pool',
  AmenityType.hotTub: 'hotTub',
  AmenityType.gym: 'gym',
  AmenityType.airConditioning: 'airConditioning',
  AmenityType.heating: 'heating',
  AmenityType.washer: 'washer',
  AmenityType.dryer: 'dryer',
  AmenityType.tv: 'tv',
  AmenityType.workspace: 'workspace',
  AmenityType.hairDryer: 'hairDryer',
  AmenityType.iron: 'iron',
  AmenityType.bathtub: 'bathtub',
  AmenityType.breakfast: 'breakfast',
  AmenityType.petFriendly: 'petFriendly',
  AmenityType.smokingAllowed: 'smokingAllowed',
  AmenityType.evCharger: 'evCharger',
  AmenityType.security: 'security',
};

_$AddressModelImpl _$$AddressModelImplFromJson(Map<String, dynamic> json) =>
    _$AddressModelImpl(
      street: json['street'] as String,
      city: json['city'] as String,
      state: json['state'] as String,
      country: json['country'] as String,
      zipCode: json['zipCode'] as String,
      neighborhood: json['neighborhood'] as String? ?? '',
    );

Map<String, dynamic> _$$AddressModelImplToJson(_$AddressModelImpl instance) =>
    <String, dynamic>{
      'street': instance.street,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'zipCode': instance.zipCode,
      'neighborhood': instance.neighborhood,
    };

_$LocationModelImpl _$$LocationModelImplFromJson(Map<String, dynamic> json) =>
    _$LocationModelImpl(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$LocationModelImplToJson(_$LocationModelImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_$PricingModelImpl _$$PricingModelImplFromJson(Map<String, dynamic> json) =>
    _$PricingModelImpl(
      basePrice: (json['basePrice'] as num).toDouble(),
      currency: json['currency'] as String,
      cleaningFee: (json['cleaningFee'] as num?)?.toDouble() ?? 0.0,
      serviceFee: (json['serviceFee'] as num?)?.toDouble() ?? 0.0,
      weeklyDiscount: (json['weeklyDiscount'] as num?)?.toDouble() ?? 0.0,
      monthlyDiscount: (json['monthlyDiscount'] as num?)?.toDouble() ?? 0.0,
      minNights: (json['minNights'] as num?)?.toInt() ?? 0,
      maxNights: (json['maxNights'] as num?)?.toInt() ?? 30,
    );

Map<String, dynamic> _$$PricingModelImplToJson(_$PricingModelImpl instance) =>
    <String, dynamic>{
      'basePrice': instance.basePrice,
      'currency': instance.currency,
      'cleaningFee': instance.cleaningFee,
      'serviceFee': instance.serviceFee,
      'weeklyDiscount': instance.weeklyDiscount,
      'monthlyDiscount': instance.monthlyDiscount,
      'minNights': instance.minNights,
      'maxNights': instance.maxNights,
    };

_$RoomsModelImpl _$$RoomsModelImplFromJson(Map<String, dynamic> json) =>
    _$RoomsModelImpl(
      guests: (json['guests'] as num).toInt(),
      bedrooms: (json['bedrooms'] as num).toInt(),
      beds: (json['beds'] as num).toInt(),
      bathrooms: (json['bathrooms'] as num).toInt(),
    );

Map<String, dynamic> _$$RoomsModelImplToJson(_$RoomsModelImpl instance) =>
    <String, dynamic>{
      'guests': instance.guests,
      'bedrooms': instance.bedrooms,
      'beds': instance.beds,
      'bathrooms': instance.bathrooms,
    };

_$RuleModelImpl _$$RuleModelImplFromJson(Map<String, dynamic> json) =>
    _$RuleModelImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      isAllowed: json['isAllowed'] as bool? ?? false,
    );

Map<String, dynamic> _$$RuleModelImplToJson(_$RuleModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'isAllowed': instance.isAllowed,
    };

_$AvailabilityModelImpl _$$AvailabilityModelImplFromJson(
  Map<String, dynamic> json,
) => _$AvailabilityModelImpl(
  checkInTime: DateTime.parse(json['checkInTime'] as String),
  checkOutTime: DateTime.parse(json['checkOutTime'] as String),
  blockedDates:
      (json['blockedDates'] as List<dynamic>?)
          ?.map((e) => DateTime.parse(e as String))
          .toList() ??
      const [],
  advanceNotice: (json['advanceNotice'] as num?)?.toInt() ?? 0,
  bookingWindow: (json['bookingWindow'] as num?)?.toInt() ?? 365,
);

Map<String, dynamic> _$$AvailabilityModelImplToJson(
  _$AvailabilityModelImpl instance,
) => <String, dynamic>{
  'checkInTime': instance.checkInTime.toIso8601String(),
  'checkOutTime': instance.checkOutTime.toIso8601String(),
  'blockedDates': instance.blockedDates
      .map((e) => e.toIso8601String())
      .toList(),
  'advanceNotice': instance.advanceNotice,
  'bookingWindow': instance.bookingWindow,
};

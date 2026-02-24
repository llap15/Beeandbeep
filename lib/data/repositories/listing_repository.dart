import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/listing_model.dart';
import '../services/api_service.dart';

final listingRepositoryProvider = Provider<ListingRepository>((ref) {
  return ListingRepository(apiService: ref.read(apiServiceProvider));
});

class SearchFilters {
  final String? location;
  final DateTime? checkIn;
  final DateTime? checkOut;
  final int? guests;
  final double? minPrice;
  final double? maxPrice;
  final List<PropertyType>? propertyTypes;
  final List<AmenityType>? amenities;
  final int? minBedrooms;
  final int? minBeds;
  final int? minBathrooms;
  final bool? instantBook;
  final bool? superhostOnly;
  final double? minRating;
  final double? lat;
  final double? lng;
  final double? radius;
  final int page;
  final int pageSize;

  const SearchFilters({
    this.location,
    this.checkIn,
    this.checkOut,
    this.guests,
    this.minPrice,
    this.maxPrice,
    this.propertyTypes,
    this.amenities,
    this.minBedrooms,
    this.minBeds,
    this.minBathrooms,
    this.instantBook,
    this.superhostOnly,
    this.minRating,
    this.lat,
    this.lng,
    this.radius,
    this.page = 1,
    this.pageSize = 20,
  });

  Map<String, dynamic> toQueryParams() {
    final params = <String, dynamic>{};
    if (location != null) params['location'] = location;
    if (checkIn != null) params['check_in'] = checkIn!.toIso8601String();
    if (checkOut != null) params['check_out'] = checkOut!.toIso8601String();
    if (guests != null) params['guests'] = guests;
    if (minPrice != null) params['min_price'] = minPrice;
    if (maxPrice != null) params['max_price'] = maxPrice;
    if (propertyTypes != null) {
      params['property_types'] = propertyTypes!.map((e) => e.name).join(',');
    }
    if (amenities != null) {
      params['amenities'] = amenities!.map((e) => e.name).join(',');
    }
    if (minBedrooms != null) params['min_bedrooms'] = minBedrooms;
    if (minBeds != null) params['min_beds'] = minBeds;
    if (minBathrooms != null) params['min_bathrooms'] = minBathrooms;
    if (instantBook != null) params['instant_book'] = instantBook;
    if (superhostOnly != null) params['superhost_only'] = superhostOnly;
    if (minRating != null) params['min_rating'] = minRating;
    if (lat != null) params['lat'] = lat;
    if (lng != null) params['lng'] = lng;
    if (radius != null) params['radius'] = radius;
    params['page'] = page;
    params['page_size'] = pageSize;
    return params;
  }
}

class ListingRepository {
  final ApiService _apiService;

  ListingRepository({required ApiService apiService})
      : _apiService = apiService;

  Future<List<ListingModel>> searchListings(SearchFilters filters) {
    return _apiService.searchListings(filters.toQueryParams());
  }

  Future<ListingModel> getListingById(String id) {
    return _apiService.getListingById(id);
  }

  Future<List<ListingModel>> getFeaturedListings() {
    return _apiService.getFeaturedListings();
  }

  Future<List<ListingModel>> getNearbyListings({
    required double lat,
    required double lng,
    double radius = 20,
  }) {
    return _apiService.searchListings({
      'lat': lat,
      'lng': lng,
      'radius': radius,
    });
  }

  Future<List<ListingModel>> getWishlist(String token) {
    return _apiService.getWishlist(token: token);
  }

  Future<void> toggleWishlist(String token, String listingId) {
    return _apiService.toggleWishlist(token: token, listingId: listingId);
  }

  Future<ListingModel> createListing({
    required String token,
    required Map<String, dynamic> data,
  }) {
    return _apiService.createListing(token: token, data: data);
  }

  Future<ListingModel> updateListing({
    required String token,
    required String listingId,
    required Map<String, dynamic> data,
  }) {
    return _apiService.updateListing(
      token: token,
      listingId: listingId,
      data: data,
    );
  }

  Future<void> deleteListing({
    required String token,
    required String listingId,
  }) {
    return _apiService.deleteListing(token: token, listingId: listingId);
  }

  Future<List<ListingModel>> getHostListings(String token) {
    return _apiService.getHostListings(token: token);
  }
}
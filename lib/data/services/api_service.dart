import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/listing_model.dart';
import '../models/user_model.dart';
import '../models/booking_model.dart';
import '../../core/constants/app_constants.dart';

final apiServiceProvider = Provider<ApiService>((ref) {
  return ApiService();
});

class ApiService {
  late final Dio _dio;

  ApiService() {
    _dio = Dio(BaseOptions(
      baseUrl: AppConstants.baseUrl,
      connectTimeout: const Duration(milliseconds: AppConstants.connectionTimeout),
      receiveTimeout: const Duration(milliseconds: AppConstants.receiveTimeout),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    ));

    _dio.interceptors.addAll([
      _AuthInterceptor(),
      _LoggingInterceptor(),
      _ErrorInterceptor(),
    ]);
  }

  // ─── AUTH ────────────────────────────────────────────────────────────────

  Future<UserModel> createUser({
    required String token,
    required String firstName,
    required String lastName,
    required String email,
  }) async {
    final response = await _dio.post(
      '/auth/register',
      data: {'first_name': firstName, 'last_name': lastName, 'email': email},
      options: Options(headers: {'Authorization': 'Bearer $token'}),
    );
    return UserModel.fromJson(response.data['user']);
  }

  Future<UserModel> getMe({required String token}) async {
    final response = await _dio.get(
      '/auth/me',
      options: Options(headers: {'Authorization': 'Bearer $token'}),
    );
    return UserModel.fromJson(response.data['user']);
  }

  Future<UserModel> signInWithSocial({
    required String token,
    required String provider,
  }) async {
    final response = await _dio.post(
      '/auth/social',
      data: {'provider': provider},
      options: Options(headers: {'Authorization': 'Bearer $token'}),
    );
    return UserModel.fromJson(response.data['user']);
  }

  Future<void> deleteAccount({required String token}) async {
    await _dio.delete(
      '/auth/me',
      options: Options(headers: {'Authorization': 'Bearer $token'}),
    );
  }

  // ─── LISTINGS ────────────────────────────────────────────────────────────

  Future<List<ListingModel>> searchListings(
      Map<String, dynamic> params) async {
    final response = await _dio.get('/listings', queryParameters: params);
    return (response.data['listings'] as List)
        .map((e) => ListingModel.fromJson(e))
        .toList();
  }

  Future<ListingModel> getListingById(String id) async {
    final response = await _dio.get('/listings/$id');
    return ListingModel.fromJson(response.data['listing']);
  }

  Future<List<ListingModel>> getFeaturedListings() async {
    final response = await _dio.get('/listings/featured');
    return (response.data['listings'] as List)
        .map((e) => ListingModel.fromJson(e))
        .toList();
  }

  Future<List<ListingModel>> getWishlist({required String token}) async {
    final response = await _dio.get(
      '/me/wishlist',
      options: Options(headers: {'Authorization': 'Bearer $token'}),
    );
    return (response.data['listings'] as List)
        .map((e) => ListingModel.fromJson(e))
        .toList();
  }

  Future<void> toggleWishlist({
    required String token,
    required String listingId,
  }) async {
    await _dio.post(
      '/me/wishlist/$listingId',
      options: Options(headers: {'Authorization': 'Bearer $token'}),
    );
  }

  Future<ListingModel> createListing({
    required String token,
    required Map<String, dynamic> data,
  }) async {
    final response = await _dio.post(
      '/listings',
      data: data,
      options: Options(headers: {'Authorization': 'Bearer $token'}),
    );
    return ListingModel.fromJson(response.data['listing']);
  }

  Future<ListingModel> updateListing({
    required String token,
    required String listingId,
    required Map<String, dynamic> data,
  }) async {
    final response = await _dio.patch(
      '/listings/$listingId',
      data: data,
      options: Options(headers: {'Authorization': 'Bearer $token'}),
    );
    return ListingModel.fromJson(response.data['listing']);
  }

  Future<void> deleteListing({
    required String token,
    required String listingId,
  }) async {
    await _dio.delete(
      '/listings/$listingId',
      options: Options(headers: {'Authorization': 'Bearer $token'}),
    );
  }

  Future<List<ListingModel>> getHostListings({required String token}) async {
    final response = await _dio.get(
      '/host/listings',
      options: Options(headers: {'Authorization': 'Bearer $token'}),
    );
    return (response.data['listings'] as List)
        .map((e) => ListingModel.fromJson(e))
        .toList();
  }

  // ─── BOOKINGS ────────────────────────────────────────────────────────────

  Future<BookingModel> createBooking({
    required String token,
    required Map<String, dynamic> data,
  }) async {
    final response = await _dio.post(
      '/bookings',
      data: data,
      options: Options(headers: {'Authorization': 'Bearer $token'}),
    );
    return BookingModel.fromJson(response.data['booking']);
  }

  Future<BookingModel> getBookingById({
    required String token,
    required String bookingId,
  }) async {
    final response = await _dio.get(
      '/bookings/$bookingId',
      options: Options(headers: {'Authorization': 'Bearer $token'}),
    );
    return BookingModel.fromJson(response.data['booking']);
  }

  Future<List<BookingModel>> getMyBookings({required String token}) async {
    final response = await _dio.get(
      '/me/bookings',
      options: Options(headers: {'Authorization': 'Bearer $token'}),
    );
    return (response.data['bookings'] as List)
        .map((e) => BookingModel.fromJson(e))
        .toList();
  }

  Future<List<BookingModel>> getHostBookings({required String token}) async {
    final response = await _dio.get(
      '/host/bookings',
      options: Options(headers: {'Authorization': 'Bearer $token'}),
    );
    return (response.data['bookings'] as List)
        .map((e) => BookingModel.fromJson(e))
        .toList();
  }

  Future<BookingModel> cancelBooking({
    required String token,
    required String bookingId,
    required String reason,
  }) async {
    final response = await _dio.post(
      '/bookings/$bookingId/cancel',
      data: {'reason': reason},
      options: Options(headers: {'Authorization': 'Bearer $token'}),
    );
    return BookingModel.fromJson(response.data['booking']);
  }

  Future<Map<String, dynamic>> createPaymentIntent({
    required String token,
    required String bookingId,
  }) async {
    final response = await _dio.post(
      '/payments/intent',
      data: {'booking_id': bookingId},
      options: Options(headers: {'Authorization': 'Bearer $token'}),
    );
    return response.data;
  }
}

// ─── INTERCEPTORS ─────────────────────────────────────────────────────────

class _AuthInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 401) {
      // Handle token refresh or logout
    }
    super.onError(err, handler);
  }
}

class _LoggingInterceptor extends LogInterceptor {
  _LoggingInterceptor()
      : super(
          requestBody: true,
          responseBody: true,
          requestHeader: false,
          responseHeader: false,
          error: true,
        );
}

class _ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final message = err.response?.data?['message'] ?? 
        err.message ?? 
        'Something went wrong';
    // You can throw custom exceptions here
    super.onError(err, handler);
  }
}
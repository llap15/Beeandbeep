class AppConstants {
  // API
  static const String baseUrl = 'https://api.beeandbig.com/v1';
  static const int connectionTimeout = 30000;
  static const int receiveTimeout = 30000;

  // Pagination
  static const int defaultPageSize = 20;

  // Maps
  static const double defaultMapZoom = 12.0;
  static const double defaultSearchRadius = 50.0; // km

  // Images
  static const int maxImageSizeMB = 10;
  static const int maxImagesPerListing = 20;
  static const int thumbnailWidth = 400;
  static const int thumbnailHeight = 300;

  // Booking
  static const int minBookingDays = 1;
  static const int maxBookingDays = 365;
  static const int advanceBookingDays = 365;

  // Reviews
  static const int maxRatingStars = 5;
  static const int minReviewLength = 10;
  static const int maxReviewLength = 500;

  // Cache
  static const Duration imageCacheDuration = Duration(days: 7);
  static const Duration dataCacheDuration = Duration(minutes: 10);

  // Stripe
  static const String stripeMerchantId = 'beeandbig';
  static const String stripeCurrency = 'USD';

  // Social
  static const String appStoreUrl = 'https://apps.apple.com/app/beeandbig';
  static const String playStoreUrl = 'https://play.google.com/store/apps/details?id=com.beeandbig';
  static const String privacyPolicyUrl = 'https://beeandbig.com/privacy';
  static const String termsUrl = 'https://beeandbig.com/terms';
  static const String helpUrl = 'https://beeandbig.com/help';
  static const String supportEmail = 'support@beeandbig.com';
}

class StorageKeys {
  static const String authToken = 'auth_token';
  static const String refreshToken = 'refresh_token';
  static const String userId = 'user_id';
  static const String onboardingComplete = 'onboarding_complete';
  static const String selectedCurrency = 'selected_currency';
  static const String selectedLanguage = 'selected_language';
  static const String searchHistory = 'search_history';
}
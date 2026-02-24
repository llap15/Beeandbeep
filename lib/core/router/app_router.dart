import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../features/auth/screens/splash_screen.dart';
import '../../features/auth/screens/onboarding_screen.dart';
import '../../features/auth/screens/login_screen.dart';
import '../../features/auth/screens/register_screen.dart';
import '../../features/home/screens/main_screen.dart';
import '../../features/home/screens/home_screen.dart';
import '../../features/search/screens/search_screen.dart';
import '../../features/listing/screens/listing_detail_screen.dart';
import '../../features/booking/screens/booking_screen.dart';
import '../../features/booking/screens/booking_confirmation_screen.dart';
import '../../features/profile/screens/profile_screen.dart';
import '../../features/profile/screens/edit_profile_screen.dart';
import '../../features/host/screens/become_host_screen.dart';
import '../../features/host/screens/create_listing_screen.dart';
import '../../features/host/screens/host_dashboard_screen.dart';
import '../../features/messages/screens/messages_screen.dart';
import '../../features/messages/screens/chat_screen.dart';

// Route names as constants
class AppRoutes {
  static const String splash = '/';
  static const String onboarding = '/onboarding';
  static const String login = '/login';
  static const String register = '/register';
  static const String main = '/main';
  static const String home = '/home';
  static const String search = '/search';
  static const String listingDetail = '/listing/:id';
  static const String booking = '/booking/:id';
  static const String bookingConfirmation = '/booking-confirmation/:id';
  static const String profile = '/profile';
  static const String editProfile = '/profile/edit';
  static const String becomeHost = '/become-host';
  static const String createListing = '/create-listing';
  static const String hostDashboard = '/host-dashboard';
  static const String messages = '/messages';
  static const String chat = '/chat/:id';
}

final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: AppRoutes.splash,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: AppRoutes.splash,
        name: 'splash',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: AppRoutes.onboarding,
        name: 'onboarding',
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: AppRoutes.login,
        name: 'login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: AppRoutes.register,
        name: 'register',
        builder: (context, state) => const RegisterScreen(),
      ),
      ShellRoute(
        builder: (context, state, child) => MainScreen(child: child),
        routes: [
          GoRoute(
            path: AppRoutes.home,
            name: 'home',
            builder: (context, state) => const HomeScreen(),
          ),
          GoRoute(
            path: AppRoutes.search,
            name: 'search',
            builder: (context, state) => const SearchScreen(),
          ),
          GoRoute(
            path: AppRoutes.messages,
            name: 'messages',
            builder: (context, state) => const MessagesScreen(),
          ),
          GoRoute(
            path: AppRoutes.profile,
            name: 'profile',
            builder: (context, state) => const ProfileScreen(),
          ),
        ],
      ),
      GoRoute(
        path: AppRoutes.listingDetail,
        name: 'listing-detail',
        builder: (context, state) => ListingDetailScreen(
          listingId: state.pathParameters['id']!,
        ),
      ),
      GoRoute(
        path: AppRoutes.booking,
        name: 'booking',
        builder: (context, state) => BookingScreen(
          listingId: state.pathParameters['id']!,
        ),
      ),
      GoRoute(
        path: AppRoutes.bookingConfirmation,
        name: 'booking-confirmation',
        builder: (context, state) => BookingConfirmationScreen(
          bookingId: state.pathParameters['id']!,
        ),
      ),
      GoRoute(
        path: AppRoutes.editProfile,
        name: 'edit-profile',
        builder: (context, state) => const EditProfileScreen(),
      ),
      GoRoute(
        path: AppRoutes.becomeHost,
        name: 'become-host',
        builder: (context, state) => const BecomeHostScreen(),
      ),
      GoRoute(
        path: AppRoutes.createListing,
        name: 'create-listing',
        builder: (context, state) => const CreateListingScreen(),
      ),
      GoRoute(
        path: AppRoutes.hostDashboard,
        name: 'host-dashboard',
        builder: (context, state) => const HostDashboardScreen(),
      ),
      GoRoute(
        path: AppRoutes.chat,
        name: 'chat',
        builder: (context, state) => ChatScreen(
          chatId: state.pathParameters['id']!,
        ),
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Text('Page not found: ${state.error}'),
      ),
    ),
  );
});
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/user_model.dart';
import '../services/api_service.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository(
    firebaseAuth: FirebaseAuth.instance,
    googleSignIn: GoogleSignIn(),
    apiService: ref.read(apiServiceProvider),
  );
});

final authStateProvider = StreamProvider<User?>((ref) {
  return FirebaseAuth.instance.authStateChanges();
});

class AuthRepository {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final ApiService _apiService;

  AuthRepository({
    required FirebaseAuth firebaseAuth,
    required GoogleSignIn googleSignIn,
    required ApiService apiService,
  })  : _firebaseAuth = firebaseAuth,
        _googleSignIn = googleSignIn,
        _apiService = apiService;

  User? get currentUser => _firebaseAuth.currentUser;
  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  // Email & Password Sign Up
  Future<UserModel> signUpWithEmail({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
  }) async {
    try {
      final credential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      await credential.user?.updateDisplayName('$firstName $lastName');
      await credential.user?.sendEmailVerification();

      final token = await credential.user?.getIdToken();

      // Create user in backend
      final userModel = await _apiService.createUser(
        token: token!,
        firstName: firstName,
        lastName: lastName,
        email: email,
      );

      return userModel;
    } on FirebaseAuthException catch (e) {
      throw _handleFirebaseError(e);
    }
  }

  // Email & Password Sign In
  Future<UserModel> signInWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      final token = await credential.user?.getIdToken();
      final userModel = await _apiService.getMe(token: token!);
      return userModel;
    } on FirebaseAuthException catch (e) {
      throw _handleFirebaseError(e);
    }
  }

  // Google Sign In
  Future<UserModel> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) throw Exception('Google sign in cancelled');

      final googleAuth = await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final userCredential = await _firebaseAuth.signInWithCredential(credential);
      final token = await userCredential.user?.getIdToken();

      final userModel = await _apiService.signInWithSocial(
        token: token!,
        provider: 'google',
      );

      return userModel;
    } on FirebaseAuthException catch (e) {
      throw _handleFirebaseError(e);
    }
  }

  // Apple Sign In
  Future<UserModel> signInWithApple() async {
    try {
      final appleProvider = AppleAuthProvider();
      final userCredential = await _firebaseAuth.signInWithProvider(appleProvider);
      final token = await userCredential.user?.getIdToken();

      final userModel = await _apiService.signInWithSocial(
        token: token!,
        provider: 'apple',
      );

      return userModel;
    } on FirebaseAuthException catch (e) {
      throw _handleFirebaseError(e);
    }
  }

  // Reset Password
  Future<void> resetPassword(String email) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      throw _handleFirebaseError(e);
    }
  }

  // Sign Out
  Future<void> signOut() async {
    await Future.wait([
      _firebaseAuth.signOut(),
      _googleSignIn.signOut(),
    ]);
  }

  // Delete Account
  Future<void> deleteAccount() async {
    try {
      final token = await currentUser?.getIdToken();
      if (token != null) {
        await _apiService.deleteAccount(token: token);
      }
      await currentUser?.delete();
    } on FirebaseAuthException catch (e) {
      throw _handleFirebaseError(e);
    }
  }

  String _handleFirebaseError(FirebaseAuthException e) {
    switch (e.code) {
      case 'user-not-found':
        return 'No account found with this email address.';
      case 'wrong-password':
        return 'Incorrect password. Please try again.';
      case 'email-already-in-use':
        return 'An account already exists with this email.';
      case 'weak-password':
        return 'Password is too weak. Use at least 8 characters.';
      case 'invalid-email':
        return 'Please enter a valid email address.';
      case 'user-disabled':
        return 'This account has been disabled.';
      case 'too-many-requests':
        return 'Too many failed attempts. Please try again later.';
      default:
        return e.message ?? 'Authentication error. Please try again.';
    }
  }
}
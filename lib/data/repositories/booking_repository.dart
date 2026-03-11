import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final bookingRepositoryProvider = Provider<BookingRepository>((ref) {
  return BookingRepository();
});

// Provider para mis reservas
final myBookingsProvider = FutureProvider<List<Map<String, dynamic>>>((ref) async {
  return ref.read(bookingRepositoryProvider).getMyBookings();
});

class BookingRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<String> createBooking({
    required String listingId,
    required String listingTitle,
    required String listingImage,
    required String hostId,
    required String location,
    required DateTime checkIn,
    required DateTime checkOut,
    required int guests,
    required double pricePerNight,
    required double cleaningFee,
    required double serviceFee,
    required double total,
  }) async {
    final user = _auth.currentUser;
    if (user == null) throw Exception('Not authenticated');

    final docRef = await _firestore.collection('bookings').add({
      'listingId': listingId,
      'listingTitle': listingTitle,
      'listingImage': listingImage,
      'location': location,
      'hostId': hostId,
      'guestId': user.uid,
      'guestName': user.displayName ?? 'Guest',
      'guestEmail': user.email ?? '',
      'checkIn': Timestamp.fromDate(checkIn),
      'checkOut': Timestamp.fromDate(checkOut),
      'guests': guests,
      'nights': checkOut.difference(checkIn).inDays,
      'pricePerNight': pricePerNight,
      'cleaningFee': cleaningFee,
      'serviceFee': serviceFee,
      'total': total,
      'status': 'confirmed',
      'createdAt': FieldValue.serverTimestamp(),
    });

    return docRef.id;
  }

  Future<List<Map<String, dynamic>>> getMyBookings() async {
    final user = _auth.currentUser;
    if (user == null) return [];

    final snapshot = await _firestore
        .collection('bookings')
        .where('guestId', isEqualTo: user.uid)
        .orderBy('createdAt', descending: true)
        .get();

    return snapshot.docs.map((doc) {
      final data = doc.data();
      data['id'] = doc.id;
      return data;
    }).toList();
  }

  Future<void> cancelBooking(String bookingId) async {
    await _firestore.collection('bookings').doc(bookingId).update({
      'status': 'cancelled',
    });
  }
}
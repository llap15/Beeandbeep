import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final listingRepositoryProvider = Provider<ListingRepository>((ref) {
  return ListingRepository();
});

// Provider que carga todos los listings
final listingsProvider = FutureProvider<List<Map<String, dynamic>>>((ref) async {
  return ref.read(listingRepositoryProvider).getListings();
});

// Provider que filtra por categoría
final filteredListingsProvider = FutureProvider.family<List<Map<String, dynamic>>, String>((ref, category) async {
  if (category == 'all') {
    return ref.read(listingRepositoryProvider).getListings();
  }
  return ref.read(listingRepositoryProvider).getListingsByCategory(category);
});

// Provider para obtener un listing por ID
final listingByIdProvider = FutureProvider.family<Map<String, dynamic>?, String>((ref, id) async {
  return ref.read(listingRepositoryProvider).getListingById(id);
});

class ListingRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<Map<String, dynamic>>> getListings() async {
    final snapshot = await _firestore.collection('listings').get();
    return snapshot.docs.map((doc) {
      final data = doc.data();
      data['id'] = doc.id;
      return data;
    }).toList();
  }

  Future<List<Map<String, dynamic>>> getListingsByCategory(String category) async {
    final snapshot = await _firestore
        .collection('listings')
        .where('category', isEqualTo: category)
        .get();
    return snapshot.docs.map((doc) {
      final data = doc.data();
      data['id'] = doc.id;
      return data;
    }).toList();
  }

  Future<Map<String, dynamic>?> getListingById(String id) async {
    final doc = await _firestore.collection('listings').doc(id).get();
    if (!doc.exists) return null;
    final data = doc.data()!;
    data['id'] = doc.id;
    return data;
  }
}
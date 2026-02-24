import 'package:flutter/material.dart';
class BookingConfirmationScreen extends StatelessWidget {
  final String bookingId;
  const BookingConfirmationScreen({super.key, required this.bookingId});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BookingConfirmationScreen')),
      body: Center(child: Text('Coming soon')),
    );
  }
}
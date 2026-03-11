import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../../core/theme/app_theme.dart';
import '../../../data/repositories/listing_repository.dart';
import '../../../data/repositories/booking_repository.dart';

class BookingScreen extends ConsumerStatefulWidget {
  final String listingId;

  const BookingScreen({super.key, required this.listingId});

  @override
  ConsumerState<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends ConsumerState<BookingScreen> {
  DateTime? _checkIn;
  DateTime? _checkOut;
  int _guests = 1;
  final CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  bool _isLoading = false;

  final double _cleaningFee = 30.0;

  int get _nights => _checkIn != null && _checkOut != null
      ? _checkOut!.difference(_checkIn!).inDays
      : 0;

  double nightlyTotal(double price) => price * _nights;
  double serviceFee(double price) => (nightlyTotal(price) + _cleaningFee) * 0.12;
  double total(double price) => nightlyTotal(price) + _cleaningFee + serviceFee(price);

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      _focusedDay = focusedDay;
      if (_checkIn == null || (_checkIn != null && _checkOut != null)) {
        _checkIn = selectedDay;
        _checkOut = null;
      } else if (selectedDay.isAfter(_checkIn!)) {
        _checkOut = selectedDay;
      } else {
        _checkIn = selectedDay;
      }
    });
  }

  Future<void> _reserve(Map<String, dynamic> listing) async {
    if (_checkIn == null || _checkOut == null) return;
    setState(() => _isLoading = true);

    try {
      final price = (listing['price'] as num).toDouble();
      final bookingId = await ref.read(bookingRepositoryProvider).createBooking(
            listingId: widget.listingId,
            listingTitle: listing['title'] ?? '',
            listingImage: listing['imageUrl'] ?? '',
            hostId: listing['hostId'] ?? '',
            location: listing['location'] ?? '',
            checkIn: _checkIn!,
            checkOut: _checkOut!,
            guests: _guests,
            pricePerNight: price,
            cleaningFee: _cleaningFee,
            serviceFee: serviceFee(price),
            total: total(price),
          );

      if (mounted) {
        context.push('/booking-confirmation/$bookingId');
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final listingAsync = ref.watch(listingByIdProvider(widget.listingId));

    return listingAsync.when(
      loading: () => const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),
      error: (e, _) => Scaffold(
        body: Center(child: Text('Error: $e')),
      ),
      data: (listing) {
        if (listing == null) {
          return const Scaffold(
            body: Center(child: Text('Listing not found')),
          );
        }

        final price = (listing['price'] as num).toDouble();
        final maxGuests = (listing['guests'] as num? ?? 1).toInt();

        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: const Text('Select dates'),
            leading: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () => context.pop(),
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      // Fechas seleccionadas
                      Padding(
                        padding: const EdgeInsets.all(24),
                        child: Row(
                          children: [
                            Expanded(
                              child: _DateBox(
                                label: 'CHECK-IN',
                                value: _checkIn != null
                                    ? '${_checkIn!.day}/${_checkIn!.month}/${_checkIn!.year}'
                                    : 'Add date',
                                isSelected: _checkIn != null,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: _DateBox(
                                label: 'CHECK-OUT',
                                value: _checkOut != null
                                    ? '${_checkOut!.day}/${_checkOut!.month}/${_checkOut!.year}'
                                    : 'Add date',
                                isSelected: _checkOut != null,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Calendario
                      TableCalendar(
                        firstDay: DateTime.now(),
                        lastDay: DateTime.now().add(const Duration(days: 365)),
                        focusedDay: _focusedDay,
                        calendarFormat: _calendarFormat,
                        rangeStartDay: _checkIn,
                        rangeEndDay: _checkOut,
                        rangeSelectionMode: RangeSelectionMode.toggledOn,
                        onDaySelected: _onDaySelected,
                        onPageChanged: (focusedDay) {
                          _focusedDay = focusedDay;
                        },
                        calendarStyle: CalendarStyle(
                          rangeHighlightColor:
                              AppColors.primary.withOpacity(0.15),
                          rangeStartDecoration: const BoxDecoration(
                            color: AppColors.primary,
                            shape: BoxShape.circle,
                          ),
                          rangeEndDecoration: const BoxDecoration(
                            color: AppColors.primary,
                            shape: BoxShape.circle,
                          ),
                          todayDecoration: BoxDecoration(
                            color: AppColors.primary.withOpacity(0.3),
                            shape: BoxShape.circle,
                          ),
                        ),
                        headerStyle: HeaderStyle(
                          formatButtonVisible: false,
                          titleCentered: true,
                          titleTextStyle:
                              Theme.of(context).textTheme.titleLarge!,
                        ),
                      ),

                      const Divider(),

                      // Huéspedes
                      Padding(
                        padding: const EdgeInsets.all(24),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Guests',
                                      style: Theme.of(context).textTheme.titleLarge),
                                  Text('$maxGuests guests maximum',
                                      style: Theme.of(context).textTheme.bodySmall),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: _guests > 1
                                      ? () => setState(() => _guests--)
                                      : null,
                                  child: Container(
                                    width: 32,
                                    height: 32,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: _guests > 1
                                            ? Colors.grey
                                            : Colors.grey.shade300,
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.remove,
                                      size: 16,
                                      color: _guests > 1
                                          ? Colors.black
                                          : Colors.grey.shade300,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 32,
                                  child: Text(
                                    '$_guests',
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context).textTheme.titleMedium,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: _guests < maxGuests
                                      ? () => setState(() => _guests++)
                                      : null,
                                  child: Container(
                                    width: 32,
                                    height: 32,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: _guests < maxGuests
                                            ? Colors.grey
                                            : Colors.grey.shade300,
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      size: 16,
                                      color: _guests < maxGuests
                                          ? Colors.black
                                          : Colors.grey.shade300,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      // Desglose de precio
                      if (_nights > 0) ...[
                        const Divider(),
                        Padding(
                          padding: const EdgeInsets.all(24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Price details',
                                  style: Theme.of(context).textTheme.titleLarge),
                              const SizedBox(height: 16),
                              _PriceRow(
                                label: '\$${price.toStringAsFixed(0)} × $_nights nights',
                                value: '\$${nightlyTotal(price).toStringAsFixed(2)}',
                              ),
                              _PriceRow(
                                label: 'Cleaning fee',
                                value: '\$${_cleaningFee.toStringAsFixed(2)}',
                              ),
                              _PriceRow(
                                label: 'BeeAndVip service fee',
                                value: '\$${serviceFee(price).toStringAsFixed(2)}',
                              ),
                              const Divider(height: 32),
                              _PriceRow(
                                label: 'Total (USD)',
                                value: '\$${total(price).toStringAsFixed(2)}',
                                isTotal: true,
                              ),
                            ],
                          ),
                        ),
                      ],

                      const SizedBox(height: 100),
                    ],
                  ),
                ),
              ),

              // Botón reservar
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(color: AppColors.divider, width: 1),
                  ),
                ),
                child: SafeArea(
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: (_checkIn != null && _checkOut != null && !_isLoading)
                          ? () => _reserve(listing)
                          : null,
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 56),
                      ),
                      child: _isLoading
                          ? const CircularProgressIndicator(color: Colors.white)
                          : const Text('Reserve', style: TextStyle(fontSize: 16)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _DateBox extends StatelessWidget {
  final String label;
  final String value;
  final bool isSelected;

  const _DateBox({
    required this.label,
    required this.value,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(
          color: isSelected ? Colors.black : Colors.grey.shade300,
          width: isSelected ? 2 : 1,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.5,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: isSelected ? Colors.black : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

class _PriceRow extends StatelessWidget {
  final String label;
  final String value;
  final bool isTotal;

  const _PriceRow({
    required this.label,
    required this.value,
    this.isTotal = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Expanded(
            child: Text(
              label,
              style: isTotal
                  ? Theme.of(context).textTheme.titleMedium
                  : Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          Text(
            value,
            style: isTotal
                ? Theme.of(context).textTheme.titleMedium
                : Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../../core/theme/app_theme.dart';

class BookingScreen extends StatefulWidget {
  final String listingId;

  const BookingScreen({super.key, required this.listingId});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  DateTime? _checkIn;
  DateTime? _checkOut;
  int _guests = 1;
  final CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();

  double get _basePrice => 85.0;
  int get _nights => _checkIn != null && _checkOut != null
      ? _checkOut!.difference(_checkIn!).inDays
      : 0;
  double get _nightlyTotal => _basePrice * _nights;
  double get _cleaningFee => 30.0;
  double get _serviceFee => (_nightlyTotal + _cleaningFee) * 0.12;
  double get _total => _nightlyTotal + _cleaningFee + _serviceFee;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
                  // Date header
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: Row(
                      children: [
                        Expanded(
                          child: _DateBox(
                            label: 'CHECK-IN',
                            value: _checkIn != null
                                ? '${_checkIn!.month}/${_checkIn!.day}/${_checkIn!.year}'
                                : 'Add date',
                            isSelected: _checkIn != null,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: _DateBox(
                            label: 'CHECK-OUT',
                            value: _checkOut != null
                                ? '${_checkOut!.month}/${_checkOut!.day}/${_checkOut!.year}'
                                : 'Add date',
                            isSelected: _checkOut != null,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Calendar
                  TableCalendar(
                    firstDay: DateTime.now(),
                    lastDay:
                        DateTime.now().add(const Duration(days: 365)),
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
                      selectedDecoration: const BoxDecoration(
                        color: AppColors.primary,
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

                  // Guests
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
                              Text('6 guests maximum',
                                  style: Theme.of(context).textTheme.bodySmall),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: _guests > 1
                                  ? () => setState(() => _guests--)
                                  : null,
                              icon: Container(
                                width: 32,
                                height: 32,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: _guests > 1
                                        ? AppColors.grey
                                        : AppColors.lightGrey,
                                  ),
                                ),
                                child: Icon(
                                  Icons.remove,
                                  size: 16,
                                  color: _guests > 1
                                      ? AppColors.black
                                      : AppColors.lightGrey,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 32,
                              child: Text(
                                '$_guests',
                                textAlign: TextAlign.center,
                                style:
                                    Theme.of(context).textTheme.titleMedium,
                              ),
                            ),
                            IconButton(
                              onPressed: _guests < 6
                                  ? () => setState(() => _guests++)
                                  : null,
                              icon: Container(
                                width: 32,
                                height: 32,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: _guests < 6
                                        ? AppColors.grey
                                        : AppColors.lightGrey,
                                  ),
                                ),
                                child: Icon(
                                  Icons.add,
                                  size: 16,
                                  color: _guests < 6
                                      ? AppColors.black
                                      : AppColors.lightGrey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // Price breakdown (only when dates selected)
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
                            label: '\$${_basePrice.toStringAsFixed(0)} × $_nights nights',
                            value: '\$${_nightlyTotal.toStringAsFixed(2)}',
                          ),
                          _PriceRow(
                            label: 'Cleaning fee',
                            value: '\$${_cleaningFee.toStringAsFixed(2)}',
                          ),
                          _PriceRow(
                            label: 'BeeAndBig service fee',
                            value: '\$${_serviceFee.toStringAsFixed(2)}',
                          ),
                          const Divider(height: 32),
                          _PriceRow(
                            label: 'Total (USD)',
                            value: '\$${_total.toStringAsFixed(2)}',
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

          // Reserve Button
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(color: AppColors.divider, width: 1),
              ),
            ),
            child: SafeArea(
              child: ElevatedButton(
                onPressed: (_checkIn != null && _checkOut != null)
                    ? () => context.push('/booking-confirmation/${widget.listingId}')
                    : null,
                child: const Text('Reserve'),
              ),
            ),
          ),
        ],
      ),
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
          color: isSelected ? AppColors.black : AppColors.lightGrey,
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
              color: AppColors.grey,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: isSelected ? AppColors.black : AppColors.grey,
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
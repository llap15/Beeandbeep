import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/app_theme.dart';

class BookingConfirmationScreen extends StatelessWidget {
  final String bookingId;
  const BookingConfirmationScreen({super.key, required this.bookingId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const Spacer(),

              // Success animation
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Text('🎉', style: TextStyle(fontSize: 56)),
                ),
              ),
              const SizedBox(height: 24),
              Text('Booking confirmed!',
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      fontWeight: FontWeight.w800)),
              const SizedBox(height: 8),
              Text(
                'Your stay has been booked successfully. Check your email for details.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge,
              ),

              const SizedBox(height: 40),

              // Booking details card
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColors.ultraLightGrey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    _DetailRow(
                      icon: Icons.confirmation_number_outlined,
                      label: 'Booking ID',
                      value: '#BNB-${bookingId.toUpperCase()}',
                    ),
                    const Divider(height: 24),
                    _DetailRow(
                      icon: Icons.home_outlined,
                      label: 'Property',
                      value: 'Beachfront Villa',
                    ),
                    const Divider(height: 24),
                    _DetailRow(
                      icon: Icons.calendar_today_outlined,
                      label: 'Check-in',
                      value: 'Nov 15, 2025 · 3:00 PM',
                    ),
                    const Divider(height: 24),
                    _DetailRow(
                      icon: Icons.calendar_today_outlined,
                      label: 'Check-out',
                      value: 'Nov 18, 2025 · 11:00 AM',
                    ),
                    const Divider(height: 24),
                    _DetailRow(
                      icon: Icons.attach_money,
                      label: 'Total paid',
                      value: '\$255.00',
                      valueStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: AppColors.primary,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Host info
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.lightGrey),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 24,
                      backgroundColor: AppColors.ultraLightGrey,
                      child: Text('👨‍💼', style: TextStyle(fontSize: 22)),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Your host: Carlos M.',
                              style: Theme.of(context).textTheme.titleSmall),
                          Text('Usually responds within 1 hour',
                              style: Theme.of(context).textTheme.bodySmall),
                        ],
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () => context.push('/chat/0'),
                      style: OutlinedButton.styleFrom(
                          minimumSize: const Size(0, 36)),
                      child: const Text('Message'),
                    ),
                  ],
                ),
              ),

              const Spacer(),

              // Buttons
              ElevatedButton(
                onPressed: () => context.go('/home'),
                child: const Text('Back to home'),
              ),
              const SizedBox(height: 12),
              OutlinedButton(
                onPressed: () {},
                child: const Text('View booking details'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DetailRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final TextStyle? valueStyle;

  const _DetailRow({
    required this.icon,
    required this.label,
    required this.value,
    this.valueStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 18, color: AppColors.grey),
        const SizedBox(width: 10),
        Text(label, style: Theme.of(context).textTheme.bodySmall),
        const Spacer(),
        Text(
          value,
          style: valueStyle ??
              Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/app_theme.dart';

class HostDashboardScreen extends StatelessWidget {
  const HostDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ultraLightGrey,
      appBar: AppBar(
        backgroundColor: AppColors.ultraLightGrey,
        title: const Text('Host Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_circle_outline),
            onPressed: () => context.push('/create-listing'),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          // Earnings card
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [AppColors.primary, AppColors.primaryDark],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('This month\'s earnings',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.8), fontSize: 14)),
                const SizedBox(height: 8),
                const Text('\$2,340',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Nunito')),
                const SizedBox(height: 16),
                Row(
                  children: [
                    _EarningsStat(label: 'Bookings', value: '8'),
                    const SizedBox(width: 24),
                    _EarningsStat(label: 'Nights', value: '23'),
                    const SizedBox(width: 24),
                    _EarningsStat(label: 'Rating', value: '4.9 ⭐'),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Pending requests
          _SectionHeader(title: 'Pending requests', count: 2),
          const SizedBox(height: 12),
          _BookingRequestCard(
            guestName: 'Sofia R.',
            emoji: '👩‍🦳',
            property: 'Beachfront Villa',
            dates: 'Nov 15 – 18 · 3 nights',
            guests: 2,
            total: '\$255',
            isPending: true,
          ),
          const SizedBox(height: 12),
          _BookingRequestCard(
            guestName: 'Marco T.',
            emoji: '👨',
            property: 'Cozy Apartment',
            dates: 'Nov 20 – 25 · 5 nights',
            guests: 4,
            total: '\$425',
            isPending: true,
          ),

          const SizedBox(height: 20),

          // Upcoming
          _SectionHeader(title: 'Upcoming stays', count: 3),
          const SizedBox(height: 12),
          _BookingRequestCard(
            guestName: 'Ana P.',
            emoji: '👩‍💼',
            property: 'Beachfront Villa',
            dates: 'Nov 10 – 12 · 2 nights',
            guests: 2,
            total: '\$170',
            isPending: false,
          ),

          const SizedBox(height: 20),

          // Listings
          _SectionHeader(title: 'Your listings', count: 2),
          const SizedBox(height: 12),
          _ListingManageCard(
            title: 'Beachfront Villa',
            location: 'Miraflores, Lima',
            price: '\$85/night',
            rating: '4.92',
            isActive: true,
            emoji: '🏖️',
          ),
          const SizedBox(height: 12),
          _ListingManageCard(
            title: 'Cozy City Apartment',
            location: 'Barranco, Lima',
            price: '\$55/night',
            rating: '4.87',
            isActive: true,
            emoji: '🏙️',
          ),
          const SizedBox(height: 12),
          OutlinedButton.icon(
            onPressed: () => context.push('/create-listing'),
            icon: const Icon(Icons.add),
            label: const Text('Add new listing'),
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;
  final int count;
  const _SectionHeader({required this.title, required this.count});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(width: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text('$count',
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w700)),
        ),
      ],
    );
  }
}

class _EarningsStat extends StatelessWidget {
  final String label;
  final String value;
  const _EarningsStat({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(value,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700,
                fontFamily: 'Nunito')),
        Text(label,
            style: TextStyle(
                color: Colors.white.withOpacity(0.7), fontSize: 12)),
      ],
    );
  }
}

class _BookingRequestCard extends StatelessWidget {
  final String guestName;
  final String emoji;
  final String property;
  final String dates;
  final int guests;
  final String total;
  final bool isPending;

  const _BookingRequestCard({
    required this.guestName,
    required this.emoji,
    required this.property,
    required this.dates,
    required this.guests,
    required this.total,
    required this.isPending,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 22,
                backgroundColor: AppColors.ultraLightGrey,
                child: Text(emoji, style: const TextStyle(fontSize: 22)),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(guestName,
                        style: Theme.of(context).textTheme.titleSmall),
                    Text(property,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: AppColors.primary)),
                  ],
                ),
              ),
              Text(total,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: AppColors.primary)),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              const Icon(Icons.calendar_today_outlined,
                  size: 14, color: AppColors.grey),
              const SizedBox(width: 6),
              Text(dates, style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(width: 12),
              const Icon(Icons.person_outline, size: 14, color: AppColors.grey),
              const SizedBox(width: 4),
              Text('$guests guests',
                  style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
          if (isPending) ...[
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size(0, 40),
                      side: const BorderSide(color: AppColors.grey),
                    ),
                    child: const Text('Decline',
                        style: TextStyle(color: AppColors.grey)),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(0, 40)),
                    child: const Text('Accept'),
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}

class _ListingManageCard extends StatelessWidget {
  final String title;
  final String location;
  final String price;
  final String rating;
  final bool isActive;
  final String emoji;

  const _ListingManageCard({
    required this.title,
    required this.location,
    required this.price,
    required this.rating,
    required this.isActive,
    required this.emoji,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              color: AppColors.ultraLightGrey,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text(emoji, style: const TextStyle(fontSize: 32)),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: Theme.of(context).textTheme.titleSmall),
                Text(location, style: Theme.of(context).textTheme.bodySmall),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text(price,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(fontWeight: FontWeight.w600)),
                    const SizedBox(width: 8),
                    const Icon(Icons.star, size: 12, color: AppColors.black),
                    Text(rating,
                        style: Theme.of(context).textTheme.bodySmall),
                  ],
                ),
              ],
            ),
          ),
          Switch(
            value: isActive,
            activeColor: AppColors.primary,
            onChanged: (v) {},
          ),
        ],
      ),
    );
  }
}
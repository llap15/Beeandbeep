import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/app_theme.dart';

class ListingDetailScreen extends StatefulWidget {
  final String listingId;

  const ListingDetailScreen({super.key, required this.listingId});

  @override
  State<ListingDetailScreen> createState() => _ListingDetailScreenState();
}

class _ListingDetailScreenState extends State<ListingDetailScreen> {
  bool _isWishlisted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          // Photo Gallery
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            backgroundColor: Colors.white,
            leading: GestureDetector(
              onTap: () => context.pop(),
              child: Container(
                margin: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.arrow_back, color: AppColors.black),
              ),
            ),
            actions: [
              Container(
                margin: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: const Icon(Icons.share_outlined, color: AppColors.black),
                  onPressed: () {},
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: Icon(
                    _isWishlisted ? Icons.favorite : Icons.favorite_border,
                    color: _isWishlisted ? AppColors.primary : AppColors.black,
                  ),
                  onPressed: () =>
                      setState(() => _isWishlisted = !_isWishlisted),
                ),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://picsum.photos/seed/listing/800/600',
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Content
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title & Rating
                  Text(
                    'Beautiful Beachfront Villa',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.star, size: 16, color: AppColors.black),
                      const SizedBox(width: 4),
                      Text(
                        '4.92 · 128 reviews · ',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      Text(
                        'Lima, Peru',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              decoration: TextDecoration.underline,
                            ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),
                  const Divider(),
                  const SizedBox(height: 16),

                  // Host info
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 28,
                        backgroundImage: NetworkImage(
                            'https://picsum.photos/seed/host/100/100'),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hosted by Carlos',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            Text(
                              'Superhost · 3 years hosting',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),
                  const Divider(),
                  const SizedBox(height: 16),

                  // Room info chips
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      _InfoChip(icon: Icons.people_outline, label: '6 guests'),
                      _InfoChip(icon: Icons.bed_outlined, label: '3 bedrooms'),
                      _InfoChip(icon: Icons.king_bed_outlined, label: '4 beds'),
                      _InfoChip(icon: Icons.bathtub_outlined, label: '2 baths'),
                    ],
                  ),

                  const SizedBox(height: 24),

                  // Description
                  Text(
                    'About this place',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'A stunning beachfront villa with breathtaking ocean views. Perfect for families or groups looking for a luxury getaway. The villa features modern amenities, a private pool, and direct beach access.',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),

                  const SizedBox(height: 24),
                  const Divider(),
                  const SizedBox(height: 24),

                  // Amenities
                  Text(
                    'What this place offers',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 12),
                  ...[
                    _AmenityRow(icon: Icons.wifi, label: 'Wifi'),
                    _AmenityRow(icon: Icons.pool, label: 'Private pool'),
                    _AmenityRow(icon: Icons.kitchen, label: 'Kitchen'),
                    _AmenityRow(icon: Icons.local_parking, label: 'Free parking'),
                    _AmenityRow(icon: Icons.ac_unit, label: 'Air conditioning'),
                    _AmenityRow(icon: Icons.tv, label: 'TV'),
                  ],

                  const SizedBox(height: 100), // Space for bottom bar
                ],
              ),
            ),
          ),
        ],
      ),

      // Bottom booking bar
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(color: AppColors.divider, width: 1),
          ),
        ),
        child: SafeArea(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.bodyMedium,
                        children: const [
                          TextSpan(
                            text: '\$85 ',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              color: AppColors.black,
                            ),
                          ),
                          TextSpan(
                            text: 'night',
                            style: TextStyle(color: AppColors.grey),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Nov 12 – 17 · \$510 total',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            decoration: TextDecoration.underline,
                          ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () =>
                    context.push('/booking/${widget.listingId}'),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(140, 50),
                ),
                child: const Text('Reserve'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _InfoChip extends StatelessWidget {
  final IconData icon;
  final String label;

  const _InfoChip({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.ultraLightGrey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 16, color: AppColors.darkGrey),
          const SizedBox(width: 6),
          Text(label, style: Theme.of(context).textTheme.labelMedium),
        ],
      ),
    );
  }
}

class _AmenityRow extends StatelessWidget {
  final IconData icon;
  final String label;

  const _AmenityRow({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, size: 24, color: AppColors.darkGrey),
          const SizedBox(width: 16),
          Text(label, style: Theme.of(context).textTheme.bodyLarge),
        ],
      ),
    );
  }
}
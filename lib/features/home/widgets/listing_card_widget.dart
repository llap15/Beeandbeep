import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../../core/theme/app_theme.dart';

class ListingCardWidget extends StatefulWidget {
  final VoidCallback onTap;

  const ListingCardWidget({super.key, required this.onTap});

  @override
  State<ListingCardWidget> createState() => _ListingCardWidgetState();
}

class _ListingCardWidgetState extends State<ListingCardWidget> {
  bool _isWishlisted = false;
  int _currentPhotoIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Photo Carousel
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: AspectRatio(
                    aspectRatio: 4 / 3,
                    child: CachedNetworkImage(
                      imageUrl:
                          'https://picsum.photos/seed/${DateTime.now().millisecondsSinceEpoch}/800/600',
                      fit: BoxFit.cover,
                      placeholder: (context, url) => Container(
                        color: AppColors.lightGrey,
                        child: const Center(
                          child: CircularProgressIndicator(strokeWidth: 2),
                        ),
                      ),
                    ),
                  ),
                ),

                // Wishlist button
                Positioned(
                  top: 12,
                  right: 12,
                  child: GestureDetector(
                    onTap: () => setState(() => _isWishlisted = !_isWishlisted),
                    child: Container(
                      width: 32,
                      height: 32,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        _isWishlisted ? Icons.favorite : Icons.favorite_border,
                        color: _isWishlisted ? AppColors.primary : Colors.white,
                        size: 22,
                        shadows: const [
                          Shadow(
                            blurRadius: 4,
                            color: Colors.black26,
                          )
                        ],
                      ),
                    ),
                  ),
                ),

                // Photo dots indicator
                Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(4, (index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 2),
                        width: _currentPhotoIndex == index ? 6 : 4,
                        height: 4,
                        decoration: BoxDecoration(
                          color: _currentPhotoIndex == index
                              ? Colors.white
                              : Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(2),
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            // Info Row
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Miraflores, Lima, Peru',
                        style: Theme.of(context).textTheme.titleMedium,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 2),
                      Text(
                        'Hosted by Carlos',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      const SizedBox(height: 2),
                      Text(
                        'Nov 12 – 17',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      const SizedBox(height: 4),
                      RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.bodyMedium,
                          children: [
                            const TextSpan(
                              text: '\$85 ',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: AppColors.black,
                              ),
                            ),
                            const TextSpan(
                              text: 'night',
                              style: TextStyle(color: AppColors.grey),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // Rating
                Row(
                  children: [
                    const Icon(Icons.star, size: 14, color: AppColors.black),
                    const SizedBox(width: 4),
                    Text(
                      '4.92',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
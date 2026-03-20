import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/app_theme.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push('/search'),
      child: Container(
        height: 52,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(32),
          border: Border.all(color: AppColors.lightGrey, width: 1.5),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            const SizedBox(width: 16),
            const Icon(Icons.search, color: AppColors.black, size: 22),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cualquier lugar',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  Text(
                    'Cualquier semana · Agregar huéspedes',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8),
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: AppColors.ultraLightGrey,
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Icon(Icons.tune, size: 18, color: AppColors.black),
            ),
          ],
        ),
      ),
    );
  }
}

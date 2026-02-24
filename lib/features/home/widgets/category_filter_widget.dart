import 'package:flutter/material.dart';
import '../../../core/theme/app_theme.dart';

class CategoryItem {
  final String id;
  final String label;
  final String emoji;

  const CategoryItem({
    required this.id,
    required this.label,
    required this.emoji,
  });
}

const categories = [
  CategoryItem(id: 'all', label: 'All', emoji: '🌍'),
  CategoryItem(id: 'beach', label: 'Beach', emoji: '🏖️'),
  CategoryItem(id: 'mountain', label: 'Mountain', emoji: '⛰️'),
  CategoryItem(id: 'cabin', label: 'Cabin', emoji: '🏡'),
  CategoryItem(id: 'pool', label: 'Amazing pools', emoji: '🏊'),
  CategoryItem(id: 'farm', label: 'Farms', emoji: '🌾'),
  CategoryItem(id: 'treehouse', label: 'Treehouses', emoji: '🌳'),
  CategoryItem(id: 'castle', label: 'Castles', emoji: '🏰'),
  CategoryItem(id: 'camping', label: 'Camping', emoji: '⛺'),
  CategoryItem(id: 'city', label: 'City', emoji: '🌆'),
  CategoryItem(id: 'island', label: 'Islands', emoji: '🏝️'),
  CategoryItem(id: 'luxury', label: 'Luxury', emoji: '✨'),
];

class CategoryFilterWidget extends StatelessWidget {
  final String selectedCategory;
  final ValueChanged<String> onCategorySelected;

  const CategoryFilterWidget({
    super.key,
    required this.selectedCategory,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final cat = categories[index];
          final isSelected = cat.id == selectedCategory;

          return GestureDetector(
            onTap: () => onCategorySelected(cat.id),
            child: Container(
              margin: const EdgeInsets.only(right: 8, bottom: 4),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: isSelected ? AppColors.black : Colors.transparent,
                borderRadius: BorderRadius.circular(24),
                border: Border.all(
                  color: isSelected ? AppColors.black : AppColors.lightGrey,
                  width: 1,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(cat.emoji, style: const TextStyle(fontSize: 16)),
                  const SizedBox(width: 6),
                  Text(
                    cat.label,
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: isSelected ? Colors.white : AppColors.darkGrey,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/app_theme.dart';
import '../../../data/models/listing_model.dart';
import '../widgets/search_bar_widget.dart';
import '../widgets/category_filter_widget.dart';
import '../widgets/listing_card_widget.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  String selectedCategory = 'all';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              floating: true,
              snap: true,
              backgroundColor: Colors.white,
              elevation: 0,
              title: const SearchBarWidget(),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(56),
                child: CategoryFilterWidget(
                  selectedCategory: selectedCategory,
                  onCategorySelected: (cat) {
                    setState(() => selectedCategory = cat);
                  },
                ),
              ),
            ),
          ];
        },
        body: RefreshIndicator(
          color: AppColors.primary,
          onRefresh: () async {
            // Refresh listings
          },
          child: ListView.builder(
            padding: const EdgeInsets.only(bottom: 20),
            itemCount: 10, // Replace with actual data
            itemBuilder: (context, index) {
              return ListingCardWidget(
                onTap: () => context.push('/listing/listing-$index'),
              );
            },
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/app_theme.dart';
import '../../home/widgets/listing_card_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _searchController = TextEditingController();
  bool _showResults = false;
  RangeValues _priceRange = const RangeValues(0, 500);
  int _guests = 1;
  int _bedrooms = 0;

  final List<String> _recentSearches = [
    'Lima, Peru',
    'Cusco, Peru',
    'Miraflores',
    'Barranco, Lima',
  ];

  final List<Map<String, String>> _popularDestinations = [
    {'name': 'Cusco', 'country': 'Peru', 'emoji': '🏔️'},
    {'name': 'Cartagena', 'country': 'Colombia', 'emoji': '🏖️'},
    {'name': 'Buenos Aires', 'country': 'Argentina', 'emoji': '🥩'},
    {'name': 'Cancún', 'country': 'Mexico', 'emoji': '🌊'},
    {'name': 'Medellín', 'country': 'Colombia', 'emoji': '🌸'},
    {'name': 'Punta Cana', 'country': 'Dominican Rep.', 'emoji': '🏝️'},
  ];

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: TextField(
          controller: _searchController,
          autofocus: true,
          decoration: InputDecoration(
            hintText: 'Where are you going?',
            border: InputBorder.none,
            filled: false,
            suffixIcon: _searchController.text.isNotEmpty
                ? IconButton(
                    icon: const Icon(Icons.close, size: 18),
                    onPressed: () {
                      _searchController.clear();
                      setState(() => _showResults = false);
                    },
                  )
                : null,
          ),
          onChanged: (v) => setState(() => _showResults = v.isNotEmpty),
          onSubmitted: (v) => setState(() => _showResults = true),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        actions: [
          TextButton(
            onPressed: () => _showFilters(context),
            child: const Text('Filters'),
          ),
        ],
      ),
      body: _showResults ? _buildResults() : _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() {
    return ListView(
      padding: const EdgeInsets.all(24),
      children: [
        // Recent searches
        if (_recentSearches.isNotEmpty) ...[
          Text('Recent searches',
              style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 12),
          ..._recentSearches.map((search) => ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: AppColors.ultraLightGrey,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(Icons.history, size: 20, color: AppColors.grey),
                ),
                title: Text(search,
                    style: Theme.of(context).textTheme.titleSmall),
                trailing: const Icon(Icons.north_west, size: 16, color: AppColors.grey),
                onTap: () {
                  _searchController.text = search;
                  setState(() => _showResults = true);
                },
              )),
          const SizedBox(height: 24),
          const Divider(),
          const SizedBox(height: 24),
        ],

        // Popular destinations
        Text('Popular destinations',
            style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 16),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.5,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          itemCount: _popularDestinations.length,
          itemBuilder: (context, i) {
            final dest = _popularDestinations[i];
            return GestureDetector(
              onTap: () {
                _searchController.text = dest['name']!;
                setState(() => _showResults = true);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.ultraLightGrey,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(dest['emoji']!,
                          style: const TextStyle(fontSize: 28)),
                      const SizedBox(height: 8),
                      Text(dest['name']!,
                          style: Theme.of(context).textTheme.titleSmall),
                      Text(dest['country']!,
                          style: Theme.of(context).textTheme.bodySmall),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildResults() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Text(
            '128 places found',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) => ListingCardWidget(
              onTap: () => context.push('/listing/listing-$index'),
            ),
          ),
        ),
      ],
    );
  }

  void _showFilters(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) => StatefulBuilder(
        builder: (context, setModalState) => DraggableScrollableSheet(
          initialChildSize: 0.85,
          maxChildSize: 0.95,
          minChildSize: 0.5,
          expand: false,
          builder: (context, scrollController) => ListView(
            controller: scrollController,
            padding: const EdgeInsets.all(24),
            children: [
              // Handle
              Center(
                child: Container(
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: AppColors.lightGrey,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: Text('Filters',
                        style: Theme.of(context).textTheme.headlineSmall),
                  ),
                  TextButton(
                    onPressed: () => setModalState(() {
                      _priceRange = const RangeValues(0, 500);
                      _guests = 1;
                      _bedrooms = 0;
                    }),
                    child: const Text('Clear all'),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Divider(),
              const SizedBox(height: 24),

              // Price range
              Text('Price range',
                  style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 8),
              Text(
                '\$${_priceRange.start.round()} – \$${_priceRange.end.round()} per night',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              RangeSlider(
                values: _priceRange,
                min: 0,
                max: 1000,
                divisions: 100,
                activeColor: AppColors.primary,
                onChanged: (v) => setModalState(() => _priceRange = v),
              ),

              const Divider(),
              const SizedBox(height: 24),

              // Guests
              Text('Guests', style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 16),
              _FilterCounter(
                label: 'Guests',
                value: _guests,
                onDecrement: _guests > 1
                    ? () => setModalState(() => _guests--)
                    : null,
                onIncrement: () => setModalState(() => _guests++),
              ),

              const Divider(),
              const SizedBox(height: 24),

              // Bedrooms
              Text('Bedrooms', style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 16),
              _FilterCounter(
                label: 'Bedrooms',
                value: _bedrooms,
                subtitle: _bedrooms == 0 ? 'Any' : null,
                onDecrement: _bedrooms > 0
                    ? () => setModalState(() => _bedrooms--)
                    : null,
                onIncrement: () => setModalState(() => _bedrooms++),
              ),

              const SizedBox(height: 40),

              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  setState(() => _showResults = true);
                },
                child: const Text('Show results'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FilterCounter extends StatelessWidget {
  final String label;
  final int value;
  final String? subtitle;
  final VoidCallback? onDecrement;
  final VoidCallback onIncrement;

  const _FilterCounter({
    required this.label,
    required this.value,
    this.subtitle,
    required this.onDecrement,
    required this.onIncrement,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: Theme.of(context).textTheme.titleSmall),
              if (subtitle != null)
                Text(subtitle!, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ),
        Row(
          children: [
            IconButton(
              onPressed: onDecrement,
              icon: Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: onDecrement != null
                        ? AppColors.grey
                        : AppColors.lightGrey,
                  ),
                ),
                child: Icon(Icons.remove,
                    size: 16,
                    color: onDecrement != null
                        ? AppColors.black
                        : AppColors.lightGrey),
              ),
            ),
            SizedBox(
              width: 32,
              child: Text('$value',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium),
            ),
            IconButton(
              onPressed: onIncrement,
              icon: Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.grey),
                ),
                child: const Icon(Icons.add, size: 16, color: AppColors.black),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
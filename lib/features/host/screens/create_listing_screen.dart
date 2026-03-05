import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/app_theme.dart';
import '../../listing/screens/listing_detail_screen.dart';

class CreateListingScreen extends StatefulWidget {
  const CreateListingScreen({super.key});

  @override
  State<CreateListingScreen> createState() => _CreateListingScreenState();
}

class _CreateListingScreenState extends State<CreateListingScreen> {
  int _currentStep = 0;
  final int _totalSteps = 5;

  // Form data
  String _propertyType = '';
  String _listingType = '';
  final _titleController = TextEditingController();
  final _descController = TextEditingController();
  final _locationController = TextEditingController();
  int _guests = 1;
  int _bedrooms = 1;
  int _beds = 1;
  int _bathrooms = 1;
  double _price = 50;
  final List<String> _selectedAmenities = [];

  final List<Map<String, String>> _propertyTypes = [
    {'id': 'house', 'label': 'House', 'emoji': '🏠'},
    {'id': 'apartment', 'label': 'Apartment', 'emoji': '🏢'},
    {'id': 'cabin', 'label': 'Cabin', 'emoji': '🏡'},
    {'id': 'villa', 'label': 'Villa', 'emoji': '🏖️'},
    {'id': 'hotel', 'label': 'Hotel', 'emoji': '🏨'},
    {'id': 'treehouse', 'label': 'Treehouse', 'emoji': '🌳'},
  ];

  final List<Map<String, String>> _amenities = [
    {'id': 'wifi', 'label': 'Wifi', 'emoji': '📶'},
    {'id': 'kitchen', 'label': 'Kitchen', 'emoji': '🍳'},
    {'id': 'parking', 'label': 'Parking', 'emoji': '🚗'},
    {'id': 'pool', 'label': 'Pool', 'emoji': '🏊'},
    {'id': 'ac', 'label': 'Air conditioning', 'emoji': '❄️'},
    {'id': 'tv', 'label': 'TV', 'emoji': '📺'},
    {'id': 'washer', 'label': 'Washer', 'emoji': '🧺'},
    {'id': 'gym', 'label': 'Gym', 'emoji': '💪'},
    {'id': 'breakfast', 'label': 'Breakfast', 'emoji': '🥐'},
    {'id': 'pets', 'label': 'Pet friendly', 'emoji': '🐾'},
  ];

  @override
  void dispose() {
    _titleController.dispose();
    _descController.dispose();
    _locationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => context.pop(),
        ),
        title: Text('Step ${_currentStep + 1} of $_totalSteps'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4),
          child: LinearProgressIndicator(
            value: (_currentStep + 1) / _totalSteps,
            backgroundColor: AppColors.lightGrey,
            valueColor:
                const AlwaysStoppedAnimation<Color>(AppColors.primary),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: _buildStep(),
            ),
          ),
          _buildBottomBar(),
        ],
      ),
    );
  }

  Widget _buildStep() {
    switch (_currentStep) {
      case 0:
        return _buildPropertyTypeStep();
      case 1:
        return _buildLocationStep();
      case 2:
        return _buildRoomsStep();
      case 3:
        return _buildAmenitiesStep();
      case 4:
        return _buildPriceStep();
      default:
        return const SizedBox();
    }
  }

  Widget _buildPropertyTypeStep() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Which of these best describes your place?',
            style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: 32),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.3,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          itemCount: _propertyTypes.length,
          itemBuilder: (context, i) {
            final type = _propertyTypes[i];
            final isSelected = _propertyType == type['id'];
            return GestureDetector(
              onTap: () => setState(() => _propertyType = type['id']!),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: isSelected ? AppColors.black : AppColors.lightGrey,
                    width: isSelected ? 2 : 1,
                  ),
                  borderRadius: BorderRadius.circular(12),
                  color: isSelected
                      ? AppColors.black.withOpacity(0.05)
                      : Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(type['emoji']!,
                        style: const TextStyle(fontSize: 32)),
                    Text(type['label']!,
                        style: Theme.of(context).textTheme.titleSmall),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildLocationStep() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Where is your place located?',
            style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: 8),
        Text('Your address is only shared with guests after they book.',
            style: Theme.of(context).textTheme.bodyMedium),
        const SizedBox(height: 32),
        TextFormField(
          controller: _locationController,
          decoration: const InputDecoration(
            labelText: 'Street address',
            prefixIcon: Icon(Icons.location_on_outlined),
          ),
        ),
        const SizedBox(height: 16),
        TextFormField(
          decoration: const InputDecoration(labelText: 'City'),
        ),
        const SizedBox(height: 16),
        TextFormField(
          decoration: const InputDecoration(labelText: 'Country'),
        ),
        const SizedBox(height: 24),
        Container(
          height: 200,
          decoration: BoxDecoration(
            color: AppColors.ultraLightGrey,
            borderRadius: BorderRadius.circular(16),
          ),
          child: const Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.map_outlined, size: 48, color: AppColors.grey),
                SizedBox(height: 8),
                Text('Map preview',
                    style: TextStyle(color: AppColors.grey)),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildRoomsStep() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Share some basics about your place',
            style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: 8),
        Text('You can add more details later.',
            style: Theme.of(context).textTheme.bodyMedium),
        const SizedBox(height: 32),
        _RoomCounter(
          label: 'Guests',
          value: _guests,
          onDecrement: _guests > 1 ? () => setState(() => _guests--) : null,
          onIncrement: () => setState(() => _guests++),
        ),
        const Divider(height: 40),
        _RoomCounter(
          label: 'Bedrooms',
          value: _bedrooms,
          onDecrement: _bedrooms > 0 ? () => setState(() => _bedrooms--) : null,
          onIncrement: () => setState(() => _bedrooms++),
        ),
        const Divider(height: 40),
        _RoomCounter(
          label: 'Beds',
          value: _beds,
          onDecrement: _beds > 1 ? () => setState(() => _beds--) : null,
          onIncrement: () => setState(() => _beds++),
        ),
        const Divider(height: 40),
        _RoomCounter(
          label: 'Bathrooms',
          value: _bathrooms,
          onDecrement: _bathrooms > 1 ? () => setState(() => _bathrooms--) : null,
          onIncrement: () => setState(() => _bathrooms++),
        ),
      ],
    );
  }

  Widget _buildAmenitiesStep() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Tell guests what your place has to offer',
            style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: 8),
        Text('You can add more amenities after you publish your listing.',
            style: Theme.of(context).textTheme.bodyMedium),
        const SizedBox(height: 32),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: _amenities.map((amenity) {
            final isSelected = _selectedAmenities.contains(amenity['id']);
            return GestureDetector(
              onTap: () {
                setState(() {
                  if (isSelected) {
                    _selectedAmenities.remove(amenity['id']);
                  } else {
                    _selectedAmenities.add(amenity['id']!);
                  }
                });
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: isSelected ? AppColors.black : AppColors.lightGrey,
                    width: isSelected ? 2 : 1,
                  ),
                  borderRadius: BorderRadius.circular(12),
                  color: isSelected
                      ? AppColors.black.withOpacity(0.05)
                      : Colors.white,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(amenity['emoji']!,
                        style: const TextStyle(fontSize: 20)),
                    const SizedBox(width: 8),
                    Text(amenity['label']!,
                        style: Theme.of(context).textTheme.titleSmall),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildPriceStep() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Now, set your price',
            style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: 8),
        Text('You can change it anytime.',
            style: Theme.of(context).textTheme.bodyMedium),
        const SizedBox(height: 48),
        Center(
          child: Text(
            '\$${_price.round()}',
            style: const TextStyle(
              fontSize: 72,
              fontWeight: FontWeight.w800,
              fontFamily: 'Nunito',
              color: AppColors.black,
            ),
          ),
        ),
        const Center(
          child: Text('per night',
              style: TextStyle(color: AppColors.grey, fontSize: 16)),
        ),
        const SizedBox(height: 32),
        Slider(
          value: _price,
          min: 10,
          max: 1000,
          divisions: 99,
          activeColor: AppColors.primary,
          onChanged: (v) => setState(() => _price = v),
        ),
        const SizedBox(height: 32),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Title',
            hintText: 'Beautiful place in the city center',
            prefixIcon: Icon(Icons.title),
          ),
          controller: _titleController,
          maxLength: 50,
        ),
        const SizedBox(height: 16),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Description',
            hintText: 'Describe what makes your place special...',
            prefixIcon: Icon(Icons.description_outlined),
          ),
          controller: _descController,
          maxLines: 4,
          maxLength: 500,
        ),
      ],
    );
  }

  Widget _buildBottomBar() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        border:
            Border(top: BorderSide(color: AppColors.divider, width: 1)),
      ),
      child: SafeArea(
        child: Row(
          children: [
            if (_currentStep > 0)
              Expanded(
                child: OutlinedButton(
                  onPressed: () => setState(() => _currentStep--),
                  child: const Text('Back'),
                ),
              ),
            if (_currentStep > 0) const SizedBox(width: 12),
            Expanded(
              flex: 2,
              child: ElevatedButton(
                onPressed: () {
                  if (_currentStep < _totalSteps - 1) {
                    setState(() => _currentStep++);
                  } else {
                    // Submit listing
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('🎉 Listing published!'),
                        content: const Text(
                            'Your listing is now live on BeeAndBig.'),
                        actions: [
                          ElevatedButton(
                            onPressed: () {
                              context.pop();
                              context.go('/host-dashboard');
                            },
                            child: const Text('View dashboard'),
                          ),
                        ],
                      ),
                    );
                  }
                },
                child: Text(_currentStep < _totalSteps - 1
                    ? 'Next'
                    : 'Publish listing'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _RoomCounter extends StatelessWidget {
  final String label;
  final int value;
  final VoidCallback? onDecrement;
  final VoidCallback onIncrement;

  const _RoomCounter({
    required this.label,
    required this.value,
    required this.onDecrement,
    required this.onIncrement,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child:
                Text(label, style: Theme.of(context).textTheme.titleMedium)),
        Row(
          children: [
            IconButton(
              onPressed: onDecrement,
              icon: Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: onDecrement != null
                        ? AppColors.grey
                        : AppColors.lightGrey,
                  ),
                ),
                child: Icon(Icons.remove,
                    size: 18,
                    color: onDecrement != null
                        ? AppColors.black
                        : AppColors.lightGrey),
              ),
            ),
            SizedBox(
              width: 40,
              child: Text('$value',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge),
            ),
            IconButton(
              onPressed: onIncrement,
              icon: Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.grey),
                ),
                child: const Icon(Icons.add,
                    size: 18, color: AppColors.black),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
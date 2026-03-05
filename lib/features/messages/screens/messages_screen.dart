import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/app_theme.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  final List<Map<String, dynamic>> _conversations = const [
    {
      'name': 'Carlos M.',
      'property': 'Beachfront Villa - Lima',
      'lastMessage': 'See you on Friday! The key is under the mat.',
      'time': '2m ago',
      'unread': 2,
      'avatar': '👨‍💼',
    },
    {
      'name': 'María G.',
      'property': 'Cozy Apartment - Miraflores',
      'lastMessage': 'The checkout is at 11am, please leave the keys inside.',
      'time': '1h ago',
      'unread': 0,
      'avatar': '👩‍🦱',
    },
    {
      'name': 'Roberto K.',
      'property': 'Mountain Cabin - Cusco',
      'lastMessage': 'Hi! Is the place available for New Year?',
      'time': '3h ago',
      'unread': 1,
      'avatar': '👨‍🦰',
    },
    {
      'name': 'Ana P.',
      'property': 'Studio Loft - Barranco',
      'lastMessage': 'Thank you for your stay! Hope to see you again 😊',
      'time': 'Yesterday',
      'unread': 0,
      'avatar': '👩‍💼',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Messages'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: _conversations.isEmpty
          ? _buildEmpty(context)
          : ListView.separated(
              itemCount: _conversations.length,
              separatorBuilder: (_, __) =>
                  const Divider(indent: 80, height: 0),
              itemBuilder: (context, i) {
                final conv = _conversations[i];
                return ListTile(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                  leading: Stack(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundColor: AppColors.ultraLightGrey,
                        child: Text(conv['avatar'],
                            style: const TextStyle(fontSize: 24)),
                      ),
                      if (conv['unread'] > 0)
                        Positioned(
                          right: 0,
                          top: 0,
                          child: Container(
                            width: 18,
                            height: 18,
                            decoration: const BoxDecoration(
                              color: AppColors.primary,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Text(
                                '${conv['unread']}',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                  title: Row(
                    children: [
                      Expanded(
                        child: Text(
                          conv['name'],
                          style: TextStyle(
                            fontWeight: conv['unread'] > 0
                                ? FontWeight.w700
                                : FontWeight.w600,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Text(
                        conv['time'],
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ],
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        conv['property'],
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: AppColors.primary,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        conv['lastMessage'],
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: conv['unread'] > 0
                              ? AppColors.black
                              : AppColors.grey,
                          fontWeight: conv['unread'] > 0
                              ? FontWeight.w500
                              : FontWeight.w400,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  onTap: () => context.push('/chat/$i'),
                );
              },
            ),
    );
  }

  Widget _buildEmpty(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('💬', style: TextStyle(fontSize: 64)),
          const SizedBox(height: 16),
          Text('No messages yet',
              style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 8),
          Text(
            'When you book a stay or hear\nfrom a host, messages appear here.',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
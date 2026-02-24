import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/app_theme.dart';
import '../../../data/repositories/auth_repository.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.share_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          // User info
          Row(
            children: [
              const CircleAvatar(
                radius: 36,
                backgroundColor: AppColors.lightGrey,
                child: Text('JD',
                    style: TextStyle(
                        fontSize: 24, fontWeight: FontWeight.w700)),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('John Doe',
                        style: Theme.of(context).textTheme.headlineSmall),
                    Text('Guest',
                        style: Theme.of(context).textTheme.bodySmall),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 24),
          const Divider(),
          const SizedBox(height: 24),

          // Settings sections
          _SectionTitle(title: 'Settings'),
          _SettingsItem(
            icon: Icons.person_outline,
            title: 'Personal information',
            onTap: () => context.push('/profile/edit'),
          ),
          _SettingsItem(
            icon: Icons.payment_outlined,
            title: 'Payments & payouts',
            onTap: () {},
          ),
          _SettingsItem(
            icon: Icons.notifications_outlined,
            title: 'Notifications',
            onTap: () {},
          ),
          _SettingsItem(
            icon: Icons.lock_outline,
            title: 'Privacy & sharing',
            onTap: () {},
          ),

          const SizedBox(height: 24),
          const Divider(),
          const SizedBox(height: 24),

          _SectionTitle(title: 'Hosting'),
          _SettingsItem(
            icon: Icons.home_outlined,
            title: 'List your space',
            subtitle: 'It\'s simple to get started on BeeAndBig',
            onTap: () => context.push('/become-host'),
          ),
          _SettingsItem(
            icon: Icons.dashboard_outlined,
            title: 'Host dashboard',
            onTap: () => context.push('/host-dashboard'),
          ),

          const SizedBox(height: 24),
          const Divider(),
          const SizedBox(height: 24),

          _SectionTitle(title: 'Support'),
          _SettingsItem(
            icon: Icons.help_outline,
            title: 'Help Center',
            onTap: () {},
          ),
          _SettingsItem(
            icon: Icons.info_outline,
            title: 'About BeeAndBig',
            onTap: () {},
          ),

          const SizedBox(height: 24),
          const Divider(),
          const SizedBox(height: 24),

          // Sign out
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text(
              'Log out',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.primary,
                decoration: TextDecoration.underline,
              ),
            ),
            onTap: () async {
              await ref.read(authRepositoryProvider).signOut();
              if (context.mounted) context.go('/login');
            },
          ),

          const SizedBox(height: 40),
          Center(
            child: Text(
              'BeeAndBig v1.0.0',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String title;
  const _SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(title, style: Theme.of(context).textTheme.headlineSmall),
    );
  }
}

class _SettingsItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? subtitle;
  final VoidCallback onTap;

  const _SettingsItem({
    required this.icon,
    required this.title,
    this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon, color: AppColors.black, size: 24),
      title: Text(title, style: Theme.of(context).textTheme.titleSmall),
      subtitle: subtitle != null
          ? Text(subtitle!, style: Theme.of(context).textTheme.bodySmall)
          : null,
      trailing: const Icon(Icons.chevron_right, color: AppColors.grey),
      onTap: onTap,
    );
  }
}
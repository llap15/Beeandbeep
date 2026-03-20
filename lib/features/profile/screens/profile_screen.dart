import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../core/theme/app_theme.dart';
import '../../../data/repositories/auth_repository.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = FirebaseAuth.instance.currentUser;
    final nombre = user?.displayName ?? user?.email ?? 'Usuario';
    final iniciales = nombre.length >= 2
        ? nombre.substring(0, 2).toUpperCase()
        : nombre.toUpperCase();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Perfil'),
        actions: [
          IconButton(icon: const Icon(Icons.share_outlined), onPressed: () {}),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          // Info del usuario
          Row(
            children: [
              CircleAvatar(
                radius: 36,
                backgroundColor: AppColors.lightGrey,
                child: Text(
                  iniciales,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nombre,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Text(
                      'Huésped',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 24),
          const Divider(),
          const SizedBox(height: 24),

          // Configuración
          _SectionTitle(title: 'Configuración'),
          _SettingsItem(
            icon: Icons.person_outline,
            title: 'Información personal',
            onTap: () => context.push('/profile/edit'),
          ),
          _SettingsItem(
            icon: Icons.payment_outlined,
            title: 'Pagos y cobros',
            onTap: () {},
          ),
          _SettingsItem(
            icon: Icons.notifications_outlined,
            title: 'Notificaciones',
            onTap: () {},
          ),
          _SettingsItem(
            icon: Icons.lock_outline,
            title: 'Privacidad y uso compartido',
            onTap: () {},
          ),

          const SizedBox(height: 24),
          const Divider(),
          const SizedBox(height: 24),

          _SectionTitle(title: 'Anfitrión'),
          _SettingsItem(
            icon: Icons.home_outlined,
            title: 'Publica tu espacio',
            subtitle: 'Es fácil comenzar en BeeAndVip',
            onTap: () => context.push('/become-host'),
          ),
          _SettingsItem(
            icon: Icons.dashboard_outlined,
            title: 'Panel de anfitrión',
            onTap: () => context.push('/host-dashboard'),
          ),

          const SizedBox(height: 24),
          const Divider(),
          const SizedBox(height: 24),

          _SectionTitle(title: 'Soporte'),
          _SettingsItem(
            icon: Icons.help_outline,
            title: 'Centro de ayuda',
            onTap: () {},
          ),
          _SettingsItem(
            icon: Icons.info_outline,
            title: 'Acerca de BeeAndVip',
            onTap: () {},
          ),

          const SizedBox(height: 24),
          const Divider(),
          const SizedBox(height: 24),

          // Cerrar sesión
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text(
              'Cerrar sesión',
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
              'BeeAndVip v1.0.0',
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

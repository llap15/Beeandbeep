import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/app_theme.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final _firstNameController = TextEditingController(text: 'Thalia');
  final _lastNameController = TextEditingController(text: 'Cusi');
  final _emailController = TextEditingController(text: 'thalia@email.com');
  final _phoneController = TextEditingController(text: '+51 999 888 777');
  final _bioController = TextEditingController(
      text: 'Love traveling and discovering new places!');
  bool _isSaving = false;

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _bioController.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    setState(() => _isSaving = true);
    await Future.delayed(const Duration(seconds: 1));
    if (mounted) {
      setState(() => _isSaving = false);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Profile updated successfully ✓'),
          backgroundColor: AppColors.success,
        ),
      );
      context.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Edit profile'),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => context.pop(),
        ),
        actions: [
          TextButton(
            onPressed: _isSaving ? null : _save,
            child: _isSaving
                ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(strokeWidth: 2))
                : const Text('Save',
                    style: TextStyle(
                        fontWeight: FontWeight.w700, color: AppColors.primary)),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          // Avatar
          Center(
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 52,
                  backgroundColor: AppColors.lightGrey,
                  child: Text(
                    'TC',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        color: AppColors.darkGrey),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 36,
                      height: 36,
                      decoration: const BoxDecoration(
                        color: AppColors.primary,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.camera_alt,
                          color: Colors.white, size: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Center(
            child: TextButton(
              onPressed: () {},
              child: const Text('Change photo'),
            ),
          ),
          const SizedBox(height: 24),
          const Divider(),
          const SizedBox(height: 24),

          // Personal info
          Text('Personal information',
              style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: _firstNameController,
                  decoration: const InputDecoration(labelText: 'First name'),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: TextFormField(
                  controller: _lastNameController,
                  decoration: const InputDecoration(labelText: 'Last name'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              labelText: 'Email',
              prefixIcon: Icon(Icons.email_outlined),
            ),
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: _phoneController,
            keyboardType: TextInputType.phone,
            decoration: const InputDecoration(
              labelText: 'Phone number',
              prefixIcon: Icon(Icons.phone_outlined),
            ),
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: _bioController,
            maxLines: 3,
            maxLength: 200,
            decoration: const InputDecoration(
              labelText: 'About you',
              hintText: 'Tell other members about yourself...',
              prefixIcon: Icon(Icons.person_outline),
            ),
          ),

          const SizedBox(height: 24),
          const Divider(),
          const SizedBox(height: 24),

          // Verification section
          Text('Verifications', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 16),
          _VerificationItem(
            icon: Icons.email_outlined,
            label: 'Email address',
            isVerified: true,
          ),
          _VerificationItem(
            icon: Icons.phone_outlined,
            label: 'Phone number',
            isVerified: false,
            onVerify: () {},
          ),
          _VerificationItem(
            icon: Icons.badge_outlined,
            label: 'Government ID',
            isVerified: false,
            onVerify: () {},
          ),

          const SizedBox(height: 40),

          ElevatedButton(
            onPressed: _isSaving ? null : _save,
            child: const Text('Save changes'),
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}

class _VerificationItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isVerified;
  final VoidCallback? onVerify;

  const _VerificationItem({
    required this.icon,
    required this.label,
    required this.isVerified,
    this.onVerify,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon, color: AppColors.darkGrey),
      title: Text(label, style: Theme.of(context).textTheme.titleSmall),
      trailing: isVerified
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.check_circle,
                    color: AppColors.success, size: 18),
                const SizedBox(width: 4),
                Text('Verified',
                    style: TextStyle(
                        color: AppColors.success,
                        fontSize: 13,
                        fontWeight: FontWeight.w600)),
              ],
            )
          : TextButton(
              onPressed: onVerify,
              child: const Text('Verify'),
            ),
    );
  }
}
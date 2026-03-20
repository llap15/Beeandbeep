import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/app_theme.dart';
import '../../../data/repositories/auth_repository.dart';

class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({super.key});

  @override
  ConsumerState<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends ConsumerState<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;
  bool _isLoading = false;

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  Future<void> _register() async {
    if (!_formKey.currentState!.validate()) return;
    setState(() => _isLoading = true);

    try {
      final user = await ref
          .read(authRepositoryProvider)
          .registerWithEmail(
            email: _emailController.text.trim(),
            password: _passwordController.text,
          );

      if (user != null) {
        await user.updateDisplayName(
          '${_firstNameController.text.trim()} ${_lastNameController.text.trim()}',
        );
      }

      if (mounted) context.go('/home');
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error: ${e.toString()}'),
            backgroundColor: AppColors.error,
          ),
        );
      }
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => context.pop(),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Encabezado
              Center(
                child: Column(
                  children: [
                    const Text('🐝', style: TextStyle(fontSize: 48)),
                    const SizedBox(height: 12),
                    Text(
                      'Crea tu cuenta',
                      style: Theme.of(context).textTheme.headlineMedium
                          ?.copyWith(fontWeight: FontWeight.w800),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Únete a BeeAndVip hoy',
                      style: Theme.of(
                        context,
                      ).textTheme.bodyLarge?.copyWith(color: AppColors.grey),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),

              // Formulario
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    // Nombre y Apellido
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: _firstNameController,
                            textCapitalization: TextCapitalization.words,
                            decoration: const InputDecoration(
                              labelText: 'Nombre',
                              prefixIcon: Icon(Icons.person_outline),
                            ),
                            validator: (v) {
                              if (v == null || v.isEmpty) return 'Requerido';
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: TextFormField(
                            controller: _lastNameController,
                            textCapitalization: TextCapitalization.words,
                            decoration: const InputDecoration(
                              labelText: 'Apellido',
                            ),
                            validator: (v) {
                              if (v == null || v.isEmpty) return 'Requerido';
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    // Correo
                    TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        labelText: 'Correo electrónico',
                        prefixIcon: Icon(Icons.email_outlined),
                      ),
                      validator: (v) {
                        if (v == null || v.isEmpty)
                          return 'El correo es requerido';
                        if (!v.contains('@')) return 'Ingresa un correo válido';
                        return null;
                      },
                    ),

                    const SizedBox(height: 16),

                    // Contraseña
                    TextFormField(
                      controller: _passwordController,
                      obscureText: _obscurePassword,
                      decoration: InputDecoration(
                        labelText: 'Contraseña',
                        prefixIcon: const Icon(Icons.lock_outline),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscurePassword
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                          ),
                          onPressed: () => setState(
                            () => _obscurePassword = !_obscurePassword,
                          ),
                        ),
                      ),
                      validator: (v) {
                        if (v == null || v.isEmpty)
                          return 'La contraseña es requerida';
                        if (v.length < 6) return 'Mínimo 6 caracteres';
                        return null;
                      },
                    ),

                    const SizedBox(height: 16),

                    // Confirmar contraseña
                    TextFormField(
                      controller: _confirmPasswordController,
                      obscureText: _obscureConfirmPassword,
                      decoration: InputDecoration(
                        labelText: 'Confirmar contraseña',
                        prefixIcon: const Icon(Icons.lock_outline),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureConfirmPassword
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                          ),
                          onPressed: () => setState(
                            () => _obscureConfirmPassword =
                                !_obscureConfirmPassword,
                          ),
                        ),
                      ),
                      validator: (v) {
                        if (v == null || v.isEmpty) return 'Requerido';
                        if (v != _passwordController.text)
                          return 'Las contraseñas no coinciden';
                        return null;
                      },
                    ),

                    const SizedBox(height: 32),

                    // Botón registrar
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: _isLoading ? null : _register,
                        child: _isLoading
                            ? const SizedBox(
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: Colors.white,
                                ),
                              )
                            : const Text('Crear cuenta'),
                      ),
                    ),

                    const SizedBox(height: 24),

                    // Divisor
                    Row(
                      children: [
                        const Expanded(child: Divider()),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            'o',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                        const Expanded(child: Divider()),
                      ],
                    ),

                    const SizedBox(height: 24),

                    // Google
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: _isLoading
                            ? null
                            : () async {
                                setState(() => _isLoading = true);
                                try {
                                  await ref
                                      .read(authRepositoryProvider)
                                      .signInWithGoogle();
                                  if (mounted) context.go('/home');
                                } catch (e) {
                                  if (mounted) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text('Error: ${e.toString()}'),
                                        backgroundColor: AppColors.error,
                                      ),
                                    );
                                  }
                                } finally {
                                  if (mounted)
                                    setState(() => _isLoading = false);
                                }
                              },
                        icon: const Text(
                          'G',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        label: const Text('Continuar con Google'),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 32),

              // Ya tienes cuenta
              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '¿Ya tienes una cuenta? ',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    TextButton(
                      onPressed: () => context.pop(),
                      child: const Text('Inicia sesión'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

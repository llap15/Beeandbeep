import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/constants/app_constants.dart';

class OnboardingPage {
  final String emoji;
  final String title;
  final String subtitle;
  final Color color;

  const OnboardingPage({
    required this.emoji,
    required this.title,
    required this.subtitle,
    required this.color,
  });
}

const pages = [
  OnboardingPage(
    emoji: '🏠',
    title: 'Encuentra tu lugar ideal',
    subtitle:
        'Descubre casas, apartamentos y experiencias únicas alrededor del mundo',
    color: AppColors.primary,
  ),
  OnboardingPage(
    emoji: '🗺️',
    title: 'Explora a donde quieras',
    subtitle:
        'Busca por ubicación, fechas y huéspedes para encontrar exactamente lo que necesitas',
    color: AppColors.secondary,
  ),
  OnboardingPage(
    emoji: '🐝',
    title: 'Reserva con confianza',
    subtitle:
        'Pagos seguros, anfitriones verificados y soporte 24/7 en cada estadía',
    color: AppColors.beeYellow,
  ),
];

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  Future<void> _finish() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(StorageKeys.onboardingComplete, true);
    if (mounted) context.go('/login');
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _controller,
            onPageChanged: (i) => setState(() => _currentPage = i),
            itemCount: pages.length,
            itemBuilder: (context, index) {
              final page = pages[index];
              return AnimatedContainer(
                duration: const Duration(milliseconds: 400),
                color: page.color,
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(),
                        Text(page.emoji, style: const TextStyle(fontSize: 100)),
                        const SizedBox(height: 40),
                        Text(
                          page.title,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'Nunito',
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          page.subtitle,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.85),
                            fontSize: 16,
                            fontFamily: 'Nunito',
                            height: 1.5,
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),

          // Controles inferiores
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(32),
              child: SafeArea(
                child: Column(
                  children: [
                    // Puntos indicadores
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(pages.length, (i) {
                        return AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          width: _currentPage == i ? 24 : 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(
                              _currentPage == i ? 1 : 0.4,
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        );
                      }),
                    ),
                    const SizedBox(height: 32),

                    // Botón
                    SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_currentPage < pages.length - 1) {
                            _controller.nextPage(
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeInOut,
                            );
                          } else {
                            _finish();
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: pages[_currentPage].color,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: Text(
                          _currentPage < pages.length - 1
                              ? 'Siguiente'
                              : 'Comenzar',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'Nunito',
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 16),

                    // Omitir
                    if (_currentPage < pages.length - 1)
                      TextButton(
                        onPressed: _finish,
                        child: Text(
                          'Omitir',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                            fontFamily: 'Nunito',
                            fontSize: 14,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

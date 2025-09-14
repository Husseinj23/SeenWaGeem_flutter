import 'dart:async';

import 'package:flutter/material.dart';

import '../../../core/di/injection_container.dart';
import '../../../core/session/session_manager.dart';
import '../../../core/session/session_timeout_handler.dart';
import '../../../core/theme/app_colors.dart';
import '../home/home_page.dart';
import '../onboarding_page/onboarding_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late final SessionManager _sessionManager;

  @override
  void initState() {
    super.initState();
    _sessionManager = sl<SessionManager>();
    SessionTimeoutHandler().initialize(context);
    _checkLoginStatus();
  }

  Future<void> _checkLoginStatus() async {
    // Show splash for at least 2 seconds
    await Future.delayed(const Duration(seconds: 2));
    
    if (!mounted) return;
    
    final hasValidSession = await _sessionManager.hasValidSession();
    
    if (hasValidSession) {
      // User has valid session, go directly to home
      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
      }
    } else {
      // No valid session, go to onboarding
      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const OnboardingPage()),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png', width: 180),
            const SizedBox(height: 32),
            Text(
              'تطبيق الاختبارات الممتعة\nوالتعلم الفعال',
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 64),
            CircularProgressIndicator(color: theme.colorScheme.primary),
          ],
        ),
      ),
    );
  }
}

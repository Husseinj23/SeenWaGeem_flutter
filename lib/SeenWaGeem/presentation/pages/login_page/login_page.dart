import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/di/injection_container.dart';
import '../../../core/theme/app_colors.dart';
import '../../../presentation/pages/choose_avatar_page/choose_avatar_page.dart';
import '../../bloc/auth_bloc/auth_bloc.dart';
import '../../bloc/auth_bloc/auth_event.dart';
import '../../bloc/auth_bloc/auth_state.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<AuthBloc>(),
      child: const LoginView(),
    );
  }
}

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.whenOrNull(
            success: (user) {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const ChooseAvatarPage(),
                ),
              );
            },
            failure: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message), backgroundColor: Colors.red),
              );
            },
          );
        },
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset('assets/images/logo.png', height: 150),
                const SizedBox(height: 80),
                BlocBuilder<AuthBloc, AuthState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      loading: () =>
                          const Center(child: CircularProgressIndicator()),
                      orElse: () => Column(
                        children: [
                          _SocialSignInButton(
                            assetName: 'assets/images/login/twitter.png',
                            text: 'Sign in with X',
                            onPressed: () => context.read<AuthBloc>().add(
                              const AuthEvent.signInWithTwitterRequested(),
                            ),
                          ),
                          const SizedBox(height: 16),
                          _SocialSignInButton(
                            assetName: 'assets/images/login/facebook.png',
                            text: 'Sign in with Facebook',
                            onPressed: () => context.read<AuthBloc>().add(
                              const AuthEvent.signInWithFacebookRequested(),
                            ),
                          ),
                          const SizedBox(height: 16),
                          _SocialSignInButton(
                            assetName: 'assets/images/login/google.png',
                            text: 'Sign in with Google',
                            onPressed: () => context.read<AuthBloc>().add(
                              const AuthEvent.signInWithGoogleRequested(),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SocialSignInButton extends StatelessWidget {
  final String assetName;
  final String text;
  final VoidCallback onPressed;

  const _SocialSignInButton({
    required this.assetName,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: theme.textTheme.bodyLarge?.color,
        backgroundColor: AppColors.white,
        elevation: 1,
        padding: const EdgeInsets.symmetric(vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide(color: Colors.grey.shade300),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(assetName, height: 24, width: 24),
          const SizedBox(width: 16),
          Text(text),
        ],
      ),
    );
  }
}

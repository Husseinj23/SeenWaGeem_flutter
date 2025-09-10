import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/di/injection_container.dart';
import '../../../core/theme/app_colors.dart';
import '../../../presentation/bloc/avatar_bloc/avatar_bloc.dart';
import '../../../presentation/bloc/avatar_bloc/avatar_event.dart';
import '../../../presentation/bloc/avatar_bloc/avatar_state.dart';
import '../../../presentation/bloc/Auth_bloc/auth_bloc.dart';
import '../../../presentation/bloc/Auth_bloc/auth_event.dart';
import '../../../presentation/bloc/Auth_bloc/auth_state.dart';
import '../home/home_page.dart';

class ChooseAvatarPage extends StatelessWidget {
  const ChooseAvatarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              sl<AvatarBloc>()..add(const AvatarEvent.fetchAvatars()),
        ),
        BlocProvider(
          create: (context) => sl<AuthBloc>(),
        ),
      ],
      child: const ChooseAvatarView(),
    );
  }
}

class ChooseAvatarView extends StatelessWidget {
  const ChooseAvatarView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          child: Column(
            children: [
              // Header Area
              Text(
                'حدد الصورة الرمزية',
                style: theme.textTheme.headlineMedium?.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                'أظهر شخصيتك الافتراضية!',
                style: theme.textTheme.titleMedium?.copyWith(
                  color: Colors.grey[600],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              
              // Current Avatar Placeholder
              BlocBuilder<AvatarBloc, AvatarState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    success: (urls, selectedIndex, avatarUpdated) =>
                        _buildSelectedAvatar(urls, selectedIndex),
                    orElse: () => _buildSelectedAvatar([], null),
                  );
                },
              ),
              const SizedBox(height: 32),
              
              // Avatar Selection Grid
              Expanded(
                child: BlocBuilder<AvatarBloc, AvatarState>(
                  builder: (context, state) {
                    return state.when(
                      initial: () =>
                          const Center(child: CircularProgressIndicator()),
                      loading: () =>
                          const Center(child: CircularProgressIndicator()),
                      updating: () =>
                          const Center(child: CircularProgressIndicator()),
                      failure: (message) => Center(child: Text(message)),
                      success: (urls, selectedIndex, avatarUpdated) {
                        return GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 16,
                                mainAxisSpacing: 16,
                                childAspectRatio: 1.0,
                              ),
                          itemCount: urls.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                context.read<AvatarBloc>().add(
                                  AvatarEvent.avatarSelected(index),
                                );
                              },
                              child: _AvatarGridItem(
                                imageUrl: urls[index],
                                isSelected: selectedIndex == index,
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
                ),
              ),
              const SizedBox(height: 24),
              
              // Done Button
              BlocConsumer<AuthBloc, AuthState>(
                listener: (context, state) {
                  state.whenOrNull(
                    avatarUpdated: (user) {
                      // Show success message
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('تم تحديث الصورة الرمزية بنجاح!'),
                          backgroundColor: Colors.green,
                          duration: Duration(seconds: 2),
                        ),
                      );
                      // Navigate to home page after a short delay
                      final navigator = Navigator.of(context);
                      Future.delayed(Duration(seconds: 2), () {
                        navigator.pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        );
                      });
                    },
                    failure: (message) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('فشل في تحديث الصورة الرمزية: $message'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    },
                  );
                },
                builder: (context, authState) {
                  // Get avatar state for button enabling
                  final avatarState = context.watch<AvatarBloc>().state;
                  final bool isButtonEnabled = avatarState.maybeWhen(
                    success: (urls, selectedIndex, avatarUpdated) => selectedIndex != null,
                    orElse: () => false,
                  );

                  final bool isLoading = authState.maybeWhen(
                    loading: () => true,
                    orElse: () => false,
                  );

                  return SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: isButtonEnabled
                            ? AppColors.primary
                            : Colors.grey[300],
                        foregroundColor: isButtonEnabled
                            ? Colors.white
                            : Colors.grey[600],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        elevation: 0,
                      ),
                      onPressed: (!isButtonEnabled || isLoading)
                          ? null
                          : () {
                              final currentState = context.read<AvatarBloc>().state;
                              currentState.maybeWhen(
                                success: (urls, selectedIndex, avatarUpdated) {
                                  if (selectedIndex != null) {
                                    // Extract just the filename from the URL
                                    final avatarUrl = urls[selectedIndex];
                                    final avatarFilename = avatarUrl.split('/').last;
                                    context.read<AuthBloc>().add(
                                      AuthEvent.updateAvatarRequested(avatarFilename),
                                    );
                                  }
                                },
                                orElse: () {},
                              );
                            },
                      child: isLoading
                          ? SizedBox(
                              width: 24,
                              height: 24,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                              ),
                            )
                          : Text(
                              'تم',
                              style: theme.textTheme.titleLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSelectedAvatar(List<String> urls, int? selectedIndex) {
    if (selectedIndex == null || urls.isEmpty) {
      return Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.primary.withValues(alpha: 0.1),
        ),
        child: Icon(
          Icons.person,
          size: 60,
          color: AppColors.primary,
        ),
      );
    }
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColors.primary,
          width: 3,
        ),
      ),
      child: ClipOval(
        child: _AvatarImage(imageUrl: urls[selectedIndex]),
      ),
    );
  }
}

class _AvatarGridItem extends StatelessWidget {
  final String imageUrl;
  final bool isSelected;
  const _AvatarGridItem({required this.imageUrl, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: isSelected
            ? Border.all(color: AppColors.primary, width: 3)
            : null,
      ),
      child: ClipOval(
        child: _AvatarImage(imageUrl: imageUrl, isSelected: isSelected),
      ),
    );
  }
}

class _AvatarImage extends StatelessWidget {
  final String imageUrl;
  final bool isSelected;
  const _AvatarImage({required this.imageUrl, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.cover,
          placeholder: (context, url) =>
              const Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) =>
              const Icon(Icons.error, color: Colors.red),
        ),
        if (isSelected)
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.primary.withValues(alpha: 0.3),
            ),
            child: Icon(
              Icons.check_circle,
              color: AppColors.primary,
              size: 32,
            ),
          ),
      ],
    );
  }
}

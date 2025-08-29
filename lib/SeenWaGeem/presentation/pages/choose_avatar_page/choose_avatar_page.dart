import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/di/injection_container.dart';
import '../../../core/theme/app_colors.dart';
import '../../../presentation/bloc/avatar_bloc/avatar_bloc.dart';
import '../../../presentation/bloc/avatar_bloc/avatar_event.dart';
import '../../../presentation/bloc/avatar_bloc/avatar_state.dart';
import '../../../presentation/pages/home/home_page.dart';

class ChooseAvatarPage extends StatelessWidget {
  const ChooseAvatarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          sl<AvatarBloc>()..add(const AvatarEvent.fetchAvatars()),
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
      backgroundColor: AppColors.splashBackground,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          child: Column(
            children: [
              Text(
                'حدد الصورة الرمزية',
                style: theme.textTheme.titleMedium?.copyWith(
                  color: AppColors.primary,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'أظهر شخصيتك الافتراضية!',
                style: theme.textTheme.headlineMedium,
              ),
              const SizedBox(height: 24),
              BlocBuilder<AvatarBloc, AvatarState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    success: (urls, selectedIndex) =>
                        _buildSelectedAvatar(urls, selectedIndex),
                    orElse: () => _buildSelectedAvatar([], null),
                  );
                },
              ),
              const SizedBox(height: 24),
              Expanded(
                child: BlocBuilder<AvatarBloc, AvatarState>(
                  builder: (context, state) {
                    return state.when(
                      initial: () =>
                          const Center(child: CircularProgressIndicator()),
                      loading: () =>
                          const Center(child: CircularProgressIndicator()),
                      failure: (message) => Center(child: Text(message)),
                      success: (urls, selectedIndex) {
                        return GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4,
                                crossAxisSpacing: 16,
                                mainAxisSpacing: 16,
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
              BlocBuilder<AvatarBloc, AvatarState>(
                builder: (context, state) {
                  final bool isButtonEnabled = state.maybeWhen(
                    success: (urls, selectedIndex) => selectedIndex != null,
                    orElse: () => false,
                  );

                  return ElevatedButton(
                    style: theme.elevatedButtonTheme.style?.copyWith(
                      backgroundColor: MaterialStateProperty.all(
                        isButtonEnabled
                            ? AppColors.secondary
                            : Colors.grey.shade300,
                      ),
                    ),
                    onPressed: !isButtonEnabled
                        ? null
                        : () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => const HomePage(),
                              ),
                            );
                          },
                    child: const Text('تم'),
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
    if (selectedIndex == null) {
      return CircleAvatar(
        radius: 50,
        backgroundColor: AppColors.primary.withOpacity(0.1),
        child: const Icon(Icons.person, size: 60, color: AppColors.primary),
      );
    }
    return CircleAvatar(
      radius: 50,
      child: _AvatarImage(imageUrl: urls[selectedIndex]),
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
            ? Border.all(color: Theme.of(context).colorScheme.primary, width: 3)
            : null,
      ),
      child: _AvatarImage(imageUrl: imageUrl, isSelected: isSelected),
    );
  }
}

class _AvatarImage extends StatelessWidget {
  final String imageUrl;
  final bool isSelected;
  const _AvatarImage({required this.imageUrl, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ClipOval(
      child: Stack(
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
                color: theme.colorScheme.primary.withOpacity(0.5),
              ),
              child: const Icon(Icons.check, color: Colors.white, size: 40),
            ),
        ],
      ),
    );
  }
}

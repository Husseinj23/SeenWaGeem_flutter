import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection_container.dart';
import '../../../../domain/entities/leaderboard_user.dart';
import '../../../../presentation/bloc/home_bloc/home_bloc.dart';
import '../../../../presentation/bloc/home_bloc/home_event.dart';
import '../../../../presentation/bloc/home_bloc/home_state.dart';
import '../../../../presentation/bloc/leaderboard_bloc/leaderboard_bloc.dart';
import '../../../../presentation/bloc/leaderboard_bloc/leaderboard_event.dart';
import '../../../../presentation/bloc/leaderboard_bloc/leaderboard_state.dart';
import '../../../../presentation/bloc/multiplayer_bloc/multiplayer_bloc.dart';
import '../../../../presentation/bloc/multiplayer_bloc/multiplayer_event.dart';
import '../../../../presentation/bloc/multiplayer_bloc/multiplayer_state.dart';
import '../../multiplayer_waiting_page/multiplayer_waiting_page.dart';

class MainTab extends StatelessWidget {
  const MainTab({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<HomeBloc>()..add(const HomeEvent.fetchData()),
        ),
        BlocProvider(
          create: (context) =>
              sl<LeaderboardBloc>()
                ..add(const LeaderboardEvent.fetchTopUsers(limit: 10)),
        ),
        BlocProvider(create: (context) => sl<MultiplayerBloc>()),
      ],
      child: const MainTabView(),
    );
  }
}

class MainTabView extends StatelessWidget {
  const MainTabView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Column(
            children: [
              _buildLeaderboardSection(context, theme),
              const SizedBox(height: 16),
              _buildMultiplayerButton(context, theme),
              const SizedBox(height: 24),
              _buildAchievementCardsSection(context, theme),
              const SizedBox(height: 24),
              _buildContinueChallengesSection(context, theme),
              const SizedBox(height: 24),
              _buildChallengesSection(context, theme),
              const SizedBox(height: 24),
              _buildAdditionalChallengesSection(context, theme),
              const SizedBox(
                height: 20,
              ), // Add bottom padding to prevent overflow
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLeaderboardSection(BuildContext context, ThemeData theme) {
    return Container(
      height: 250, // Reduced height to prevent overflow
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFE3F2FD), // Light blue gradient
            Color(0xFFF8F9FA),
          ],
        ),
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: BlocBuilder<LeaderboardBloc, LeaderboardState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loading: () => const Center(child: CircularProgressIndicator()),
            failure: (message) => Center(child: Text(message)),
            success: (users, isTopUsers) => _build3DPodium(users, theme),
          );
        },
      ),
    );
  }

  Widget _build3DPodium(List<LeaderboardUser> users, ThemeData theme) {
    if (users.isEmpty) return const SizedBox.shrink();

    // Get top 3 users
    final topUsers = users.take(3).toList();
    final firstPlace = topUsers.isNotEmpty ? topUsers[0] : null;
    final secondPlace = topUsers.length > 1 ? topUsers[1] : null;
    final thirdPlace = topUsers.length > 2 ? topUsers[2] : null;

    return Column(
      children: [
        // Title
        Padding(
          padding: const EdgeInsets.only(top: 12, bottom: 8),
          child: Text(
            'أفضل اللاعبين',
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ),
        // Podium
        Expanded(
          child: Stack(
            children: [
              // Podium base
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 30,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFFE0E0E0), Color(0xFFBDBDBD)],
                    ),
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
              ),
              // 3D Podium bars
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // Third place (left)
                  if (thirdPlace != null)
                    _buildPodiumBar(
                      user: thirdPlace,
                      rank: 3,
                      height: 50,
                      color: const Color(0xFF2196F3), // Blue
                      theme: theme,
                    ),
                  // First place (center)
                  if (firstPlace != null)
                    _buildPodiumBar(
                      user: firstPlace,
                      rank: 1,
                      height: 70,
                      color: const Color(0xFFFF9800), // Orange
                      theme: theme,
                      isFirst: true,
                    ),
                  // Second place (right)
                  if (secondPlace != null)
                    _buildPodiumBar(
                      user: secondPlace,
                      rank: 2,
                      height: 60,
                      color: const Color(0xFF2196F3), // Blue
                      theme: theme,
                    ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPodiumBar({
    required LeaderboardUser user,
    required int rank,
    required double height,
    required Color color,
    required ThemeData theme,
    bool isFirst = false,
  }) {
    return Column(
      children: [
        // Crown for first place
        if (isFirst) ...[
          const Icon(Icons.emoji_events, color: Color(0xFFFFD700), size: 20),
          const SizedBox(height: 2),
        ],
        // Avatar
        Stack(
          children: [
            CircleAvatar(
              radius: 32,
              backgroundColor: const Color(0xFFE0E0E0),
              backgroundImage: user.avatar.isNotEmpty
                  ? CachedNetworkImageProvider(
                      'https://appswg.com/app/download?foldername=avatar&filename=${user.avatar}',
                    )
                  : null,
              child: user.avatar.isEmpty
                  ? const Icon(Icons.person, color: Colors.grey, size: 32)
                  : null,
            ),
            // Rank badge
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: rank == 1
                      ? const Color(0xFF4CAF50) // Green for 1st
                      : rank == 2
                      ? const Color(0xFFFF9800) // Orange for 2nd
                      : const Color(0xFFF44336), // Red for 3rd
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: Center(
                  child: Text(
                    '$rank',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        // Username
        Text(
          user.username,
          style: theme.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 2),
        // Podium bar
        Container(
          width: 60,
          height: height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [color.withOpacity(0.8), color],
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
            boxShadow: [
              BoxShadow(
                color: color.withOpacity(0.3),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMultiplayerButton(BuildContext context, ThemeData theme) {
    return BlocConsumer<MultiplayerBloc, MultiplayerState>(
      listener: (context, state) {
        state.whenOrNull(
          gameFound: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('تم العثور على خصم!'),
                backgroundColor: Colors.green,
              ),
            );
          },
          gameCancelled: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('تم إلغاء البحث'),
                backgroundColor: Colors.orange,
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
      builder: (context, state) {
        final isSearching = state.maybeWhen(
          searching: () => true,
          orElse: () => false,
        );

        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(30),
              onTap: isSearching
                  ? () => context.read<MultiplayerBloc>().add(
                      const MultiplayerEvent.stopSearch(),
                    )
                  : () {
                      // Start search and navigate to waiting page
                      context.read<MultiplayerBloc>().add(
                        const MultiplayerEvent.startSearch(),
                      );
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const MultiplayerWaitingPage(),
                        ),
                      );
                    },
              child: Container(
                height: 60,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 16,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: const Color(0xFFE0E0E0), width: 1),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 10,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    isSearching ? 'البحث عن خصم...' : 'ابدأ اللعب الجماعي',
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: const Color(0xFF8D6E63), // Brown color
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildAchievementCardsSection(BuildContext context, ThemeData theme) {
    final achievements = [
      {
        'title': 'قمة البراعة',
        'subtitle': 'بداية المغامرة',
        'color': const Color(0xFFFF9800), // Orange
        'hasStar': true,
      },
      {
        'title': 'ميلاد العبقرية',
        'subtitle': 'بداية المغامرة',
        'color': const Color(0xFF9C27B0), // Purple
        'hasStar': true,
      },
    ];

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Column(
        children: achievements
            .map(
              (achievement) => Padding(
                padding: const EdgeInsets.only(
                  bottom: 16,
                ), // Increased spacing to match image
                child: _buildAchievementCard(
                  theme,
                  achievement['title'] as String,
                  achievement['subtitle'] as String,
                  achievement['color'] as Color,
                  achievement['hasStar'] as bool,
                ),
              ),
            )
            .toList(),
      ),
    );
  }

  Widget _buildAchievementCard(
    ThemeData theme,
    String title,
    String subtitle,
    Color color,
    bool hasStar,
  ) {
    return GestureDetector(
      onTap: () {
        // TODO: Navigate to specific achievement page
        print('Tapped on achievement: $title');
      },
      child: Container(
        height: 125, // Fixed height to match the image
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: const Color(
            0xFFFFF8F0,
          ), // Light peach/off-white background to match image
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 12,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            // Circular progress indicator - sized to fit
            SizedBox(
              width: 60,
              height: 60,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircularProgressIndicator(
                    value: 0.0, // 0% progress
                    strokeWidth: 6,
                    valueColor: AlwaysStoppedAnimation<Color>(color),
                    backgroundColor: color.withOpacity(0.3),
                  ),
                  Text(
                    '0%',
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            // Text content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: theme.textTheme.titleSmall?.copyWith(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Row(
                    children: [
                      if (hasStar) ...[
                        Icon(
                          Icons.star,
                          color: const Color(0xFFFFD700), // Gold star
                          size: 14,
                        ),
                        const SizedBox(width: 3),
                      ],
                      Text(
                        subtitle,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: Colors.black54,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChallengesSection(BuildContext context, ThemeData theme) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return state.when(
          initial: () => const Center(child: CircularProgressIndicator()),
          loading: () => const Center(child: CircularProgressIndicator()),
          failure: (message) => Center(child: Text(message)),
          success: (topCategories) {
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'أهم التحديات',
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 16),
                  GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                          childAspectRatio: 1.15,
                        ),
                    itemCount: topCategories.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      final category = topCategories[index];
                      return _buildChallengeGridItem(
                        theme,
                        category.name,
                        "${category.questionCount ?? '...'} سؤال",
                        Color(
                          int.parse(
                            category.color?.replaceFirst('#', '0xFF') ??
                                '0xFFB9A2D8',
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildChallengeGridItem(
    ThemeData theme,
    String title,
    String subtitle,
    Color color,
  ) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.3),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            title,
            style: theme.textTheme.titleMedium?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            subtitle,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: Colors.white.withOpacity(0.9),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContinueChallengesSection(
    BuildContext context,
    ThemeData theme,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'مواصلة التحديات',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 16),
          _buildContinueChallengeCard(
            theme,
            'علوم',
            'استكشف علوم!',
            const Color(0xFFFF9800), // Orange
            Icons.science,
          ),
          const SizedBox(height: 8),
          _buildContinueChallengeCard(
            theme,
            'تاريخ',
            'استكشف تاريخ!',
            const Color(0xFF9C27B0), // Purple
            Icons.mosque,
          ),
          const SizedBox(height: 8),
          _buildContinueChallengeCard(
            theme,
            'جغرافيا',
            'استكشف جغرافيا!',
            const Color(0xFF2196F3), // Blue
            Icons.map,
          ),
        ],
      ),
    );
  }

  Widget _buildContinueChallengeCard(
    ThemeData theme,
    String title,
    String subtitle,
    Color color,
    IconData icon,
  ) {
    return GestureDetector(
      onTap: () {
        // TODO: Navigate to specific challenge page
        // This will be implemented later when you tell me the pages
        print('Tapped on continue challenge: $title');
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            // Circular progress indicator
            SizedBox(
              width: 50,
              height: 50,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircularProgressIndicator(
                    value: 0.0, // 0% progress
                    strokeWidth: 4,
                    valueColor: AlwaysStoppedAnimation<Color>(color),
                    backgroundColor: color.withOpacity(0.2),
                  ),
                  Text(
                    '0%',
                    style: TextStyle(
                      color: color,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            // Text content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: Colors.black54,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            // Icon
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: color.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(icon, color: color, size: 20),
            ),
          ],
        ),
      ),
    );
  }

  Color _getCategoryColor(String categoryName) {
    switch (categoryName.toLowerCase()) {
      case 'علوم':
        return const Color(0xFFFF9800); // Orange
      case 'تاريخ':
        return const Color(0xFF9C27B0); // Purple
      case 'جغرافيا':
        return const Color(0xFF2196F3); // Blue
      default:
        return const Color(0xFFB9A2D8); // Default purple
    }
  }

  IconData _getCategoryIcon(String categoryName) {
    switch (categoryName.toLowerCase()) {
      case 'علوم':
        return Icons.science; // Test tube icon
      case 'تاريخ':
        return Icons.mosque; // Mosque icon
      case 'جغرافيا':
        return Icons.map; // Map icon
      default:
        return Icons.category; // Default icon
    }
  }

  Widget _buildAdditionalChallengesSection(
    BuildContext context,
    ThemeData theme,
  ) {
    // Static data for the additional challenges section
    final additionalChallenges = [
      {
        'name': 'جغرافيا',
        'questionCount': '6 سؤال',
        'color': const Color(0xFFFF9800), // Orange
        'hasIcon': false,
      },
      {
        'name': 'اقتصاد',
        'questionCount': '3 سؤال',
        'color': const Color(0xFF9C27B0), // Purple
        'hasIcon': false,
      },
      {
        'name': 'القرآن وعلومه',
        'questionCount': '4 سؤال',
        'color': const Color(0xFF673AB7), // Dark purple
        'hasIcon': false,
      },
      {
        'name': 'اختراعات واكتشافات',
        'questionCount': '5 سؤال',
        'color': const Color(0xFFE91E63), // Pink
        'hasIcon': true,
        'icon': Icons.biotech, // Microscope icon
      },
    ];

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'أهم التحديات',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 16),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio:
                  1.4, // Increased aspect ratio to make cards shorter
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
            ),
            itemCount: additionalChallenges.length,
            itemBuilder: (context, index) {
              final challenge = additionalChallenges[index];
              return _buildAdditionalChallengeCard(
                theme,
                challenge['name'] as String,
                challenge['questionCount'] as String,
                challenge['color'] as Color,
                challenge['hasIcon'] as bool,
                challenge['icon'] as IconData?,
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildAdditionalChallengeCard(
    ThemeData theme,
    String title,
    String questionCount,
    Color color,
    bool hasIcon,
    IconData? icon,
  ) {
    return GestureDetector(
      onTap: () {
        // TODO: Navigate to specific challenge page
        // This will be implemented later when you tell me the pages
        print('Tapped on: $title');
      },
      child: Container(
        padding: const EdgeInsets.all(12), // Reduced padding
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.3),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            if (hasIcon && icon != null) ...[
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 20, // Reduced size
                  height: 20, // Reduced size
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Icon(
                    icon,
                    color: Colors.white,
                    size: 12, // Reduced icon size
                  ),
                ),
              ),
              const SizedBox(height: 4), // Reduced spacing
            ],
            Text(
              title,
              style: theme.textTheme.titleSmall?.copyWith(
                // Changed to titleSmall
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4), // Reduced spacing
            Text(
              questionCount,
              style: theme.textTheme.bodySmall?.copyWith(
                // Changed to bodySmall
                color: Colors.white.withOpacity(0.9),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

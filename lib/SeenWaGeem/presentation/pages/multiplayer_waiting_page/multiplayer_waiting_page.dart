import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/di/injection_container.dart';
import '../../bloc/multiplayer_bloc/multiplayer_bloc.dart';
import '../../bloc/multiplayer_bloc/multiplayer_event.dart';
import '../../bloc/multiplayer_bloc/multiplayer_state.dart';

class MultiplayerWaitingPage extends StatelessWidget {
  const MultiplayerWaitingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<MultiplayerBloc>(),
      child: Builder(
        builder: (context) => Scaffold(
          backgroundColor: const Color(0xFFF5F8FA),
          body: SafeArea(
            child: BlocListener<MultiplayerBloc, MultiplayerState>(
              listener: (context, state) {
                // Handle state changes without showing notifications
                state.whenOrNull(
                  gameFound: () {
                    // Game found - just go back to main screen
                    Navigator.of(context).pop();
                  },
                  gameCancelled: () {
                    // Game cancelled - go back to main screen
                    Navigator.of(context).pop();
                  },
                  failure: (message) {
                    // If there's an error, just go back
                    Navigator.of(context).pop();
                  },
                );
              },
              child: Column(
                children: [
                  // Header with close button
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            // Stop search and go back
                            context.read<MultiplayerBloc>().add(
                              const MultiplayerEvent.stopSearch(),
                            );
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(
                            Icons.close,
                            color: Colors.black,
                            size: 24,
                          ),
                        ),
                        const SizedBox(width: 24), // Spacer to center the title
                      ],
                    ),
                  ),

              // Main content
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Circular logo with app name
                      Container(
                        width: 120,
                        height: 120,
                        decoration: const BoxDecoration(
                          color: Color(0xFF2196F3), // Blue color
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: const Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'سين',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      color: Colors.black26,
                                      offset: Offset(1, 1),
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                'وجيم',
                                style: TextStyle(
                                  color: Color(0xFFFF9800), // Orange color
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      color: Colors.black26,
                                      offset: Offset(1, 1),
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 32),

                      // Loading text
                      const Text(
                        'تحميل...',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      const SizedBox(height: 24),

                      // Loading indicator
                      Container(
                        width: 60,
                        height: 4,
                        decoration: BoxDecoration(
                          color: const Color(0xFF00BCD4), // Teal color
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    ),
    );
  }
}

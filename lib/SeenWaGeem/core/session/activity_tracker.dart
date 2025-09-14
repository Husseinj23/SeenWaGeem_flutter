import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'session_manager.dart';

class ActivityTracker extends StatefulWidget {
  final Widget child;
  
  const ActivityTracker({
    super.key,
    required this.child,
  });

  @override
  State<ActivityTracker> createState() => _ActivityTrackerState();
}

class _ActivityTrackerState extends State<ActivityTracker> with WidgetsBindingObserver {
  late final SessionManager _sessionManager;

  @override
  void initState() {
    super.initState();
    _sessionManager = GetIt.instance<SessionManager>();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    
    switch (state) {
      case AppLifecycleState.resumed:
        // App came to foreground, update activity
        _sessionManager.updateActivity();
        break;
      case AppLifecycleState.paused:
      case AppLifecycleState.inactive:
      case AppLifecycleState.detached:
        // App went to background or is inactive
        break;
      case AppLifecycleState.hidden:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Update activity on any tap
        _sessionManager.updateActivity();
      },
      onPanStart: (_) {
        // Update activity on any pan gesture
        _sessionManager.updateActivity();
      },
      child: widget.child,
    );
  }
}

import 'package:flutter/material.dart';

import '../../presentation/pages/login_page/login_page.dart';

class SessionTimeoutHandler {
  static final SessionTimeoutHandler _instance = SessionTimeoutHandler._internal();
  factory SessionTimeoutHandler() => _instance;
  SessionTimeoutHandler._internal();

  BuildContext? _context;

  void initialize(BuildContext context) {
    _context = context;
  }

  void handleSessionTimeout() {
    if (_context != null && _context!.mounted) {
      // Clear any existing routes and navigate to login
      Navigator.of(_context!).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const LoginPage()),
        (route) => false,
      );
    }
  }

  void dispose() {
    _context = null;
  }
}

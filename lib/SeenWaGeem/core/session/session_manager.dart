import 'dart:async';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import 'session_timeout_handler.dart';

@LazySingleton()
class SessionManager {
  final FlutterSecureStorage _secureStorage;
  static const String _tokenKey = 'auth_token';
  static const String _loginTimeKey = 'login_time';
  static const String _userDataKey = 'user_data';
  static const int _sessionTimeoutMinutes = 10;

  Timer? _sessionTimer;
  DateTime? _lastActivityTime;

  SessionManager(this._secureStorage);

  /// Initialize session manager and start monitoring
  Future<void> initialize() async {
    _lastActivityTime = DateTime.now();
    await _startSessionTimer();
  }

  /// Save user session data
  Future<void> saveSession({
    required String token,
    required Map<String, dynamic> userData,
  }) async {
    await Future.wait([
      _secureStorage.write(key: _tokenKey, value: token),
      _secureStorage.write(key: _loginTimeKey, value: DateTime.now().toIso8601String()),
      _secureStorage.write(key: _userDataKey, value: userData.toString()),
    ]);
    _lastActivityTime = DateTime.now();
    await _startSessionTimer();
  }

  /// Check if user has valid session
  Future<bool> hasValidSession() async {
    final token = await _secureStorage.read(key: _tokenKey);
    if (token == null) return false;

    final loginTimeStr = await _secureStorage.read(key: _loginTimeKey);
    if (loginTimeStr == null) return false;

    try {
      final loginTime = DateTime.parse(loginTimeStr);
      final now = DateTime.now();
      final sessionDuration = now.difference(loginTime);
      
      // Check if session is still valid (within 10 minutes)
      return sessionDuration.inMinutes < _sessionTimeoutMinutes;
    } catch (e) {
      return false;
    }
  }

  /// Get stored token
  Future<String?> getToken() async {
    return await _secureStorage.read(key: _tokenKey);
  }

  /// Get stored user data
  Future<Map<String, dynamic>?> getUserData() async {
    final userDataStr = await _secureStorage.read(key: _userDataKey);
    if (userDataStr == null) return null;
    
    try {
      // For now, return a simple map - in production, use proper JSON parsing
      return {'userData': userDataStr};
    } catch (e) {
      return null;
    }
  }

  /// Update last activity time
  void updateActivity() {
    _lastActivityTime = DateTime.now();
  }

  /// Clear session data
  Future<void> clearSession() async {
    await Future.wait([
      _secureStorage.delete(key: _tokenKey),
      _secureStorage.delete(key: _loginTimeKey),
      _secureStorage.delete(key: _userDataKey),
    ]);
    _sessionTimer?.cancel();
    _sessionTimer = null;
  }

  /// Start session timeout timer
  Future<void> _startSessionTimer() async {
    _sessionTimer?.cancel();
    _sessionTimer = Timer.periodic(const Duration(minutes: 1), (timer) async {
      if (_lastActivityTime != null) {
        final now = DateTime.now();
        final inactiveDuration = now.difference(_lastActivityTime!);
        
        if (inactiveDuration.inMinutes >= _sessionTimeoutMinutes) {
          await clearSession();
          // Emit session expired event or handle logout
          _onSessionExpired();
        }
      }
    });
  }

  /// Handle session expiration
  void _onSessionExpired() {
    // This will be handled by the app's navigation logic
    print('Session expired - user needs to re-login');
    SessionTimeoutHandler().handleSessionTimeout();
  }

  /// Dispose resources
  void dispose() {
    _sessionTimer?.cancel();
  }
}

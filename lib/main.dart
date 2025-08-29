import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'SeenWaGeem/core/di/injection_container.dart';
import 'SeenWaGeem/core/theme/app_theme.dart';
import 'SeenWaGeem/presentation/pages/splash_page/splash_page.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seen Wa Geem',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const SplashPage(),
    );
  }
}

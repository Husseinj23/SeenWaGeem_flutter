import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class TestsTab extends StatelessWidget {
  const TestsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.splashBackground,
      body: Center(child: Text('الاختبارات')),
    );
  }
}

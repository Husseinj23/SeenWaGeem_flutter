import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/theme/app_colors.dart';
import 'tabs/account_tab.dart';
import 'tabs/leaderboard_tab.dart';
import 'tabs/main_tab.dart';
import 'tabs/tests_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    MainTab(),
    TestsTab(),
    LeaderboardTab(),
    AccountTab(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectedIndex, children: _widgetOptions),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 10.0,
        showUnselectedLabels: true,
        selectedItemColor: AppColors.accent,
        unselectedItemColor: AppColors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          _buildNavItem(
            iconAsset: 'assets/images/icons/home-icon.svg',
            label: 'الرئيسية',
          ),
          _buildNavItem(
            iconAsset: 'assets/images/icons/challenges-icon.svg',
            label: 'الاختبارات',
          ),
          _buildNavItem(
            iconAsset: 'assets/images/icons/leaderboard-icon.svg',
            label: 'المتصدرين',
          ),
          _buildNavItem(
            iconAsset: 'assets/images/icons/profile-icon.svg',
            label: 'الحساب',
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem({
    required String iconAsset,
    required String label,
  }) {
    return BottomNavigationBarItem(
      label: label,
      icon: Padding(
        padding: const EdgeInsets.only(bottom: 4.0, top: 4.0),
        child: SvgPicture.asset(
          iconAsset,
          height: 24,
          width: 24,
          colorFilter: const ColorFilter.mode(AppColors.grey, BlendMode.srcIn),
        ),
      ),
      activeIcon: Padding(
        padding: const EdgeInsets.only(bottom: 4.0, top: 4.0),
        child: SvgPicture.asset(
          iconAsset,
          height: 24,
          width: 24,
          colorFilter: const ColorFilter.mode(
            AppColors.accent,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}

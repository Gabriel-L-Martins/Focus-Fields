import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:focus_fields/components/custom_bottom_navigation_bar.dart';
import 'package:focus_fields/pages/challenge_tab.dart';
import 'package:focus_fields/pages/chart.dart';
import 'package:focus_fields/pages/farm.dart';
import 'package:focus_fields/pages/profile.dart';
import 'package:focus_fields/pages/tools.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 2;
  final List<Widget> _screens = const [
    ChallengeTab(),
    Tools(),
    Farm(),
    Chart(),
    Profile(),
  ];

  // List of icon paths used in the custom navigation bar.
  final List<String> _iconPaths = const [
    'assets/icons/list-todo.svg',
    'assets/icons/hammer.svg',
    'assets/icons/farm.svg',
    'assets/icons/chart-spline.svg',
    'assets/icons/user.svg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Focus Fields'),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/coins.svg',
              height: 24,
              width: 24,
              colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/clover.svg',
              height: 24,
              width: 24,
              colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        iconPaths: _iconPaths,
      ),
    );
  }
}

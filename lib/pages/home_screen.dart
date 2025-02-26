import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
              colorFilter: ColorFilter.mode(Colors.white70, BlendMode.srcIn),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/clover.svg',
              height: 24,
              width: 24,
              colorFilter: ColorFilter.mode(Colors.white70, BlendMode.srcIn),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[900],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/list-todo.svg',
              colorFilter: ColorFilter.mode(Colors.white70, BlendMode.srcIn),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/hammer.svg',
              colorFilter: ColorFilter.mode(Colors.white70, BlendMode.srcIn),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/farm.svg',
              colorFilter: ColorFilter.mode(Colors.white70, BlendMode.srcIn),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/chart-spline.svg',
              colorFilter: ColorFilter.mode(Colors.white70, BlendMode.srcIn),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/user.svg',
              colorFilter: ColorFilter.mode(Colors.white70, BlendMode.srcIn),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}

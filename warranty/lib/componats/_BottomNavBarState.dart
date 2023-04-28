import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:warranty/pages/home_page.dart';
import 'package:warranty/pages/notification_page.dart';
import 'package:warranty/pages/profile_page.dart';
import 'package:warranty/pages/scan_page.dart';
import 'package:warranty/pages/warranties_page.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  /// Controller to handle PageView and also handles initial page
  final _pageController = PageController(initialPage: 2);

  int maxCount = 5;

  /// widget list
  final List<Widget> bottomBarPages = [
    const HomePage(),
    const WarrantiesPage(),
    const ScanPage(),
    const NotificationPage(),
    const ProfilePage(),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
        pageController: _pageController,
        color: Colors.black,
        showLabel: false,
        notchColor: Colors.black,
        bottomBarItems: const [
          BottomBarItem(
            inActiveItem: Icon(
              Icons.home_filled,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.home_filled,
              color: Color(0xff5B42D1),
            ),
          ),
          BottomBarItem(
            inActiveItem: Icon(
              Icons.library_books,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.library_books,
              color: Color(0xff5B42D1),
            ),
            itemLabel: 'Page 2',
          ),
          BottomBarItem(
            inActiveItem: Icon(
              Icons.document_scanner,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.document_scanner,
              color: Color(0xff5B42D1),
            ),
            itemLabel: 'Page 3',
          ),
          BottomBarItem(
            inActiveItem: Icon(
              Icons.notifications,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.notifications,
              color: Color(0xff5B42D1),
            ),
            itemLabel: 'Page 4',
          ),
          BottomBarItem(
            inActiveItem: Icon(
              Icons.person,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.person,
              color: Color(0xff5B42D1),
            ),
            itemLabel: 'Page 5',
          ),
        ],
        onTap: (index) {
          /// control your animation using page controller
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 500),
            curve: Curves.fastOutSlowIn,
          );
        },
      )
          : null,
    );
  }
}
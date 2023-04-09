import 'package:clean/consts.dart';
import 'package:clean/features/presentation/page/activity/activity_page.dart';
import 'package:clean/features/presentation/page/home/home_page.dart';
import 'package:clean/features/presentation/page/post/upload_post_page.dart';
import 'package:clean/features/presentation/page/profile/profile_page.dart';
import 'package:clean/features/presentation/page/search/search_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_icons/flutter_icons.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void navigationTapped(int index) {
    pageController.jumpToPage(index);
  }

  void onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: backGroundColor,
        items: [
          BottomNavigationBarItem(
            icon:
                Icon(MaterialCommunityIcons.home_variant, color: primaryColor),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.md_search, color: primaryColor),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.md_add_circle, color: primaryColor),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, color: primaryColor),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined, color: primaryColor),
            label: "",
          ),
        ],
        onTap: navigationTapped,
      ),
      body: PageView(
        controller: pageController,
        children: [
        HomePage(), 
        SearchPage(), 
        UploadPostPage(), 
        ActivityPage(), 
        ProfilePage(),
        ],
        onPageChanged: onPageChanged,
      ),
    );
  }
}






import 'package:flutter/material.dart';
import 'package:three_scores_task/core/resources/colors.dart';
import 'package:three_scores_task/view/match_overview/match_overview.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final navigationBarKey = GlobalKey();
  int selectedIndex = 1;
  late MatchOverviewScreen matchOverviewScreen;
  late List<Widget> pages;
  late Widget currentPage;

  @override
  void initState() {
    matchOverviewScreen = const MatchOverviewScreen();
    pages = [
      matchOverviewScreen
    ];
    currentPage = const MatchOverviewScreen();
    super.initState();
  }

  void itemTapped(int index) {
    setState(() {
      selectedIndex = index;
      currentPage = pages[index];
      FocusScope.of(context).unfocus();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentPage,
      bottomNavigationBar: BottomNavigationBar(
          key: navigationBarKey,
          items: const  <BottomNavigationBarItem>  [
            BottomNavigationBarItem(icon: Icon(Icons.home, size: 20,),
                label: "Home", backgroundColor: AppColors.black),
            BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet_outlined, size: 20,),
                label: "Matches"),
            BottomNavigationBarItem(icon: Icon(Icons.bookmark_border, size: 20,),
                label: "Fantasy"),
            BottomNavigationBarItem(icon: Icon(Icons.youtube_searched_for_outlined, size: 20,),
              label: "Shop",),
            BottomNavigationBarItem(icon: Icon(Icons.more_horiz, size: 20,),
              label: "My Profile",),
          ],
          currentIndex: selectedIndex,
          onTap: itemTapped,
          type: BottomNavigationBarType.fixed,
          fixedColor: AppColors.black,
          elevation: 4,
          backgroundColor: Colors.grey[100],
      )
    );
  }
}
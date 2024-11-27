




import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:three_scores_task/core/resources/colors.dart';
import 'package:three_scores_task/core/resources/icons.dart';
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
     // currentPage = pages[index];
      FocusScope.of(context).unfocus();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentPage,
      bottomNavigationBar: BottomNavigationBar(
          key: navigationBarKey,
          items:  <BottomNavigationBarItem>  [
            BottomNavigationBarItem(icon: _bottomNavIcons(icon: SvgIcons.homeIcon,),
                label: "Home", activeIcon: _bottomNavIcons(icon:SvgIcons.homeIcon ,color: AppColors.primary,)),
            BottomNavigationBarItem(icon: _bottomNavIcons(icon:SvgIcons.matchesIcon, color: AppColors.black,),
                label: "Matches", activeIcon:  _bottomNavIcons(icon:SvgIcons.matchesIcon, color: AppColors.primary,)),
            BottomNavigationBarItem(icon: _bottomNavIcons(icon: SvgIcons.fantasyIcon,),
                label: "Fantasy", activeIcon:  _bottomNavIcons(icon: SvgIcons.fantasyIcon, color: AppColors.primary)),
            BottomNavigationBarItem(icon: _bottomNavIcons(icon: SvgIcons.shopIcon),
              label: "Shop", activeIcon: _bottomNavIcons(icon: SvgIcons.shopIcon, color: AppColors.primary)),
            BottomNavigationBarItem(icon: Image.asset(PngIcons.profileIcon, height: 23, width: 23,),
              label: "My Profile",),
          ],
          currentIndex: selectedIndex,
          onTap: itemTapped,
          type: BottomNavigationBarType.fixed,
          elevation: 4,
          selectedItemColor: AppColors.primary,
          unselectedItemColor: AppColors.black,
          unselectedLabelStyle: const TextStyle(
             color: AppColors.black,
            fontSize: 11,
            fontWeight: FontWeight.w500
          ),
          selectedLabelStyle: const TextStyle(
            color: AppColors.primary,
            fontSize: 11,
            fontWeight: FontWeight.w500
          ),
          backgroundColor: Colors.grey[100],
      )
    );
  }
  Widget _bottomNavIcons({required String icon, Color? color}){
    return SvgPicture.asset(
      icon,
      height: 23,
      width: 23,
      color: color
    );
  }
}
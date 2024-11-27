








import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:three_scores_task/core/extension/media.dart';
import 'package:three_scores_task/core/resources/colors.dart';
import 'package:three_scores_task/core/resources/strings.dart';
import 'package:three_scores_task/view/match_overview/past_matches.dart';
import '../../core/resources/images.dart';

class TabsIndicator extends StatelessWidget {
  final List<String> tabs;
  final List<Widget> tabsItems;
  const TabsIndicator({
    required this.tabs,
    required this.tabsItems,
    super.key});

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
            length: tabs.length,
            child: Column(
              children: [
                Container(
                  width: context.width(),
                  height: 44,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AppImages.tabsOverviewBackground)
                    )
                  ),
                  child: TabBar(
                    labelColor: AppColors.white,
                    unselectedLabelColor: AppColors.grey,
                    indicatorColor: AppColors.primary,
                    indicatorWeight: 3,
                    indicatorPadding: (const EdgeInsets.symmetric(horizontal: 0.0)),
                    isScrollable: false,
                    tabs: tabs.map((item) =>Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400, 
                          fontSize: 16
                          ),
                      ),
                    ),).toList()
                  ),
                ),
                const Gap(15),
                Container(
                  padding: const EdgeInsets.all(16),
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 0.0),
                    child: TabBarView(
                        children: tabsItems.map((element) => element).toList()
                    ),
                  ),
                ),
              ],
            ),
          );
      }
}


List<String> overviewTaps = [AppStrings.liveMatches, AppStrings.newMatches, AppStrings.postMatches];
List<String> detailsTabs = [AppStrings.overview, AppStrings.lineUp, AppStrings.statistices, AppStrings.matches];

List<Widget> overViewTabItems = [Container(height: 250, width: 10, color: AppColors.black,), Container(), const PastMatchesWidget()];
List<Widget> detailsTabItems = [Container(), Container(), Container(), Container()];
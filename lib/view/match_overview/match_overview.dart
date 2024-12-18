import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:three_scores_task/core/extension/media.dart';
import 'package:three_scores_task/core/resources/colors.dart';
import 'package:three_scores_task/core/resources/icons.dart';
import 'package:three_scores_task/core/resources/images.dart';
import 'package:three_scores_task/core/resources/strings.dart';
import 'package:three_scores_task/view/widgets/c_textform_field.dart';
import 'package:three_scores_task/view/widgets/horizontal_selector.dart';
import 'package:three_scores_task/view/widgets/tab_indicator.dart';

class MatchOverviewScreen extends StatefulWidget {
  const MatchOverviewScreen({super.key});

  @override
  State<MatchOverviewScreen> createState() => _MatchOverviewScreenState();
}

class _MatchOverviewScreenState extends State<MatchOverviewScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              width: context.width(),
              height: 260,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.backgroundImageOverview),
                  fit: BoxFit.fill
                ),
              ),
              child: Column(
                children: [
                  const Gap(60),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        Container(
                        height: 24,
                        width: 24,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(PngIcons.hamburgerIcon),
                            )
                        ),
                      ),
                      const Spacer(flex: 3),
                      Container(
                        height: 38,
                        width: 60,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(PngIcons.threeScoreIcon),
                            )
                        ),
                      ),
                      const Spacer(),
                      const SizedBox(
                        width: 132,
                        height: 34,
                        child: CTextFormField(
                          hintText: AppStrings.search,
                          prefixIcon: Icon(Icons.search, color: AppColors.grey, size: 18,),
                          hintStyle: TextStyle(
                            color: AppColors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w500
                          ),
                        )
                      )
                     ],
                    ),
                  ),
                  const Gap(30),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: List.generate(selector.length, (index) {
                            final item = selector[index];
                            final isSelected = selectedIndex == index;
                          return TextButton(
                            onPressed: (){
                              setState(() {
                                  selectedIndex = index;
                              });
                            },
                            child:HorizontalSelectorWidget(
                              title: item.title, 
                              image: item.image, 
                              isSelected: isSelected,
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned.fill(
            top: 215,
            child: TabsIndicator(
               tabs: overviewTaps, 
               tabsItems: overViewTabItems
            ),
          ),
        ],
      ),
    );
  }
}
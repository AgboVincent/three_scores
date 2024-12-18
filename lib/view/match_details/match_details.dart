import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:three_scores_task/core/extension/media.dart';
import 'package:three_scores_task/core/resources/colors.dart';
import 'package:three_scores_task/core/resources/icons.dart';
import 'package:three_scores_task/core/resources/strings.dart';
import '../../core/resources/images.dart';
import '../widgets/tab_indicator.dart';

class MatchDetailsScreen extends StatefulWidget {
  const MatchDetailsScreen({super.key});

  @override
  State<MatchDetailsScreen> createState() => _MatchDetailsScreenState();
}

class _MatchDetailsScreenState extends State<MatchDetailsScreen> {
  List<Scorers> homeScorers = [
    Scorers(name: 'R. Lewandoski', time: "11'"),
    Scorers(name: 'J. Felix', time: "25'"),
    Scorers(name: 'J. Cancelo', time: "33'")
  ];

  List<Scorers> awayScorers = [
    Scorers(name: 'Y. Couto', time: "4'"),
    Scorers(name: 'A. Garcia', time: "15'"),
    Scorers(name: 'I. Martin', time: "24'")
  ]; 
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
              height: 352,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.backgroundImageMatchDetails),
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
                      TextButton(
                        onPressed: (){
                          Navigator.of(context).pop();
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size.zero, 
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                      child: const Icon(Icons.arrow_back_ios_new_outlined, color: AppColors.white, size: 16,)),  
                      const Spacer(),
                      const Text(
                        AppStrings.matchDetails,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: AppColors.white
                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: 16,
                        width: 16,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(PngIcons.noteIcon),
                            )
                        ),
                      ),
                     ],
                    ),
                  ),
                  const Gap(30),
                   Expanded(
                     child: Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 25.0),
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Padding(
                               padding: const EdgeInsets.only(left: 4.0, bottom: 3),
                              child: _clubWidget(clubName: AppStrings.barcelona, clubImage: PngIcons.barcelonaIcon),
                            ),
                            ...List.generate(homeScorers.length, (index){
                              final scorer = homeScorers[index];
                              return Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: _scorereWidget(
                                  scorerName: scorer.name, 
                                  scoreTime: scorer.time
                                ),
                              );
                            })
                            ],
                          ),
                           _scoreWidget(),
                           Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                             Padding(
                               padding: const EdgeInsets.only(right: 4.0, bottom: 3),
                               child: _clubWidget(clubName: AppStrings.girona, clubImage: PngIcons.gironaIcon),
                             ),
                             ...List.generate(awayScorers.length, (index){
                              final scorer = awayScorers[index];
                              return Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: _scorereWidget(
                                  scorerName: scorer.name, 
                                  scoreTime: scorer.time
                                ),
                              );
                            })
                            ],
                           )
                        ],
                       ),
                     ),
                   )
                ],
              ),
            ),
          ),
          Positioned.fill(
            top: 315,
            child: TabsIndicator(
               tabs: detailsTabs, 
               tabsItems: detailsTabItems
            ),
          ),
        ],
      ),
    );
  }
   Widget _clubWidget({required String clubName, required String clubImage}){
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(clubImage)
            )
          ),
        ),
        const Gap(10),
        Text(
          clubName,
          style: const TextStyle(
            color: AppColors.white,
             fontSize: 16,
             fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
  Widget _scoreWidget(){
    return Column(
      children: [
        const Text(
          '3 - 3',
          style: TextStyle(
            color: AppColors.white,
            fontSize: 32,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Gap(5),
        const Text(
          '(4 - 2)',
          style: TextStyle(
            color: AppColors.grey,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Gap(5),
        const Text(
          AppStrings.penalty,
          style: TextStyle(
            color: AppColors.grey,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Gap(5),
        SvgPicture.asset(SvgIcons.matchesIcon, color: AppColors.greyFour, height: 13, width: 13,),
        const Gap(40),
        Container(
          padding: const EdgeInsets.only(left: 10),
          height: 24,
          width: 24,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage(PngIcons.pastMatchIcon)
            )
          ),
        ),
      ],
    );
  }
  Widget _scorereWidget({required String scorerName, required String scoreTime}){
    return RichText(
          text: TextSpan(
            text: '$scorerName  ', 
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.greyFour,
            ),
            children: [
              TextSpan(
                text: scoreTime,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.greyFour,
                ),
              ),
            ],
          ),
      );
  }
}


class Scorers{
  final String name;
  final String time;

  Scorers({
    required this.name,
    required this.time
  });
}
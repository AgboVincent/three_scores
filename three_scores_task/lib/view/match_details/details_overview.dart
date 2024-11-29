import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:three_scores_task/core/extension/media.dart';
import 'package:three_scores_task/core/resources/colors.dart';
import 'package:three_scores_task/core/resources/icons.dart';
import 'package:three_scores_task/core/resources/images.dart';
import 'package:three_scores_task/core/resources/strings.dart';
import 'package:three_scores_task/view/widgets/curreent_statistics.dart';
import 'package:three_scores_task/view/widgets/game_information.dart';
import 'package:three_scores_task/view/widgets/live_momentum.dart';
import 'package:three_scores_task/view/widgets/match_standings.dart';
import 'package:three_scores_task/view/widgets/player_of_match.dart';

class MatchDetailsOverview extends StatelessWidget {
  const MatchDetailsOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return
       SingleChildScrollView(
         child: Column(
          children: [
            Container(
              width: context.width(),
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.stadiumBackground)
                )
              ),
              child: Stack(
                children: [
                  const Positioned(
                    top: 30,
                    right: 20,
                    child: Text(
                      AppStrings.watchHighlight,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColors.white
                      ),
                    ),
                  ),
                  Positioned.fill(
                    top: 65,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _clubWidget(clubName: AppStrings.barcelona, clubImage: PngIcons.barcelonaIcon),
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              image: DecorationImage(image: AssetImage(PngIcons.playIcon))
                            ),
                          ),
                          _clubWidget(clubName: AppStrings.girona, clubImage: PngIcons.gironaIcon)
                        ],
                      ),
                    )
                  )
                ],
              ),
            ),
            const Gap(10),
            const PlayerOfMatchWidget(),
            const Gap(20),
            const LiveMomentumWidget(),
            const Gap(20),
            const MatchCurrentStatisticsWidget(),
            const Gap(20),
            const MatchStandingsWidget(),
            const Gap(20),
            const GameInformationWidget()
          ],
              ),
       );
  }
  Widget _clubWidget({required String clubName, required String clubImage}){
    return Column(
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(clubImage)
            )
          ),
        ),
        const Gap(5),
        Text(
          clubName,
          style: const TextStyle(
            color: AppColors.white,
             fontSize: 12,
             fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}
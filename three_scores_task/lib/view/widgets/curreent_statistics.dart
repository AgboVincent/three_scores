import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:three_scores_task/core/extension/media.dart';
import 'package:three_scores_task/core/resources/colors.dart';
import 'package:three_scores_task/core/resources/icons.dart';
import 'package:three_scores_task/core/resources/strings.dart';

class MatchCurrentStatisticsWidget extends StatefulWidget {
  const MatchCurrentStatisticsWidget({super.key});

  @override
  State<MatchCurrentStatisticsWidget> createState() => _MatchCurrentStatisticsWidgetState();
}

class _MatchCurrentStatisticsWidgetState extends State<MatchCurrentStatisticsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: context.width(),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.white,
            boxShadow: const [
              BoxShadow(
                color: AppColors.white,
                spreadRadius: 1,
                blurRadius: 10,
                offset: Offset(0, 1),
              )
            ]
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              width: context.width(),
              decoration: const BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15)
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _clubImage(image: PngIcons.barcelonaIcon),
                  const Text(
                    AppStrings.matchCurrentStat,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.1,
                      color: AppColors.white,
                    ),
                  ),
                   _clubImage(image: PngIcons.gironaIcon),
                ],
              ),
            ),
            const Gap(15),
            const CurrentStatistics()
          ],
        ),
      );
  }
  Widget _clubImage({required String image}){
    return Container(
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image))
      ),
    );
  }
}



class MatchEvents {
  final String playerName;
  final String playerImage;
  final String? action;
  final bool? isHomeTeam;
  final bool? isSubstitution;
  final String actionIcon;
  final String time;
  final String? playerOff;
  final String? playerOn;

  MatchEvents({
    required this.playerName,
    required this.playerImage,
    this.action,
    this.isHomeTeam,
    this.isSubstitution,
    required this.actionIcon,
    required this.time,
    this.playerOff,
    this.playerOn
  });

}

List<MatchEvents> penaltyTakersHome = [
  MatchEvents(playerName:'R. Lewandowski', playerImage: PngIcons.lewandowski , actionIcon: PngIcons.goalScore, time: '5'),
  MatchEvents(playerName:'R. Lewandowski', playerImage: PngIcons.lewandowski , actionIcon: PngIcons.goalScore, time: '4'),
  MatchEvents(playerName:'R. Lewandowski', playerImage: PngIcons.lewandowski , actionIcon: PngIcons.goalScore, time: '3'),
  MatchEvents(playerName:'j. Cancelo', playerImage: PngIcons.cancelo , actionIcon: PngIcons.goalScore, time: '2'),
  MatchEvents(playerName:'j. Cancelo', playerImage: PngIcons.cancelo , actionIcon: PngIcons.goalScore, time: '1')
];

List<MatchEvents> penaltyTakersAway = [
  MatchEvents(playerName:'A. Garcia', playerImage: PngIcons.garcia , actionIcon: PngIcons.goalMissed, time: '5'),
  MatchEvents(playerName:'A. Garcia', playerImage: PngIcons.garcia , actionIcon: PngIcons.goalScore, time: '4'),
  MatchEvents(playerName:'A. Garcia', playerImage: PngIcons.garcia , actionIcon: PngIcons.goalMissed, time: '3'),
  MatchEvents(playerName:'A. Garcia', playerImage: PngIcons.garcia , actionIcon: PngIcons.goalScore, time: '2'),
  MatchEvents(playerName:'A. Garcia', playerImage: PngIcons.garcia , actionIcon: PngIcons.goalMissed, time: '1')
];

List<MatchEvents> toExtraTime = [
  MatchEvents(playerName:'Y. Couto', playerImage: PngIcons.garcia , actionIcon: PngIcons.goalScore, time: '118', isHomeTeam: false),
  MatchEvents(playerName:'j. Cancelo', playerImage: PngIcons.cancelo , actionIcon: PngIcons.redYellowCard, time: '115', action: 'Foul', isHomeTeam: true),
  MatchEvents(playerName:'Y. Couto', playerImage: PngIcons.garcia , actionIcon: PngIcons.varIcon, time: '105', action: 'Goal Canceled', isHomeTeam: false),
];

List<MatchEvents> toFullTime = [
  MatchEvents(playerName:'J. Cancelo', playerImage: PngIcons.cancelo , actionIcon: PngIcons.goalBall, time: '90+5', isHomeTeam: true, action: 'Assit: L Yamal'),
  MatchEvents(playerName:'Y. Couto', playerImage: PngIcons.garcia , actionIcon: PngIcons.varIcon, time: '88', action: 'Goal Canceled', isHomeTeam: false),
  MatchEvents(playerName:'Y. Couto', playerImage: PngIcons.garcia , actionIcon: PngIcons.varIcon, time: '75', action: 'Goal Canceled', isHomeTeam: true, isSubstitution: true, playerOff: 'J. Cancelo', playerOn: 'R. Lewandoski'),
  MatchEvents(playerName:'Y. Couto', playerImage: PngIcons.garcia , actionIcon: PngIcons.ownGoal, time: '63', action: 'Goal Canceled', isHomeTeam: false),
  MatchEvents(playerName:'R. Lewandowski', playerImage: PngIcons.lewandowski , actionIcon: PngIcons.goalBall, time: '57', action: 'Assit: L Yamal', isHomeTeam: true),
];

List<MatchEvents> toHalfTime = [
  MatchEvents(playerName:'Y. Couto', playerImage: PngIcons.garcia , actionIcon: PngIcons.goalScore, time: '118', isHomeTeam: false),
  MatchEvents(playerName:'j. Cancelo', playerImage: PngIcons.cancelo , actionIcon: PngIcons.redYellowCard, time: '115', action: 'Foul', isHomeTeam: true),
  MatchEvents(playerName:'Y. Couto', playerImage: PngIcons.garcia , actionIcon: PngIcons.varIcon, time: '105', action: 'Goal Canceled', isHomeTeam: false),
];

class CurrentStatistics extends StatelessWidget {
  const CurrentStatistics({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 20,
          width: 20,
          decoration:const BoxDecoration(
            image: DecorationImage(image: AssetImage(PngIcons.timerIcon))
          ),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 0.0),
            child: SizedBox(
              height: 2,
              width: 1,
              child: CustomPaint(
                painter: DottedLinePainter(color: AppColors.primary),
              ),
            ),
        ),
        Container(
          padding: const EdgeInsets.all(4),
          width: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.greyFour
          ),
          child: const Text(
            'Penalties (4 - 2)',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 11, 
              color: Color(0xFF4F4F4F)
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 0.0),
            child: SizedBox(
              height: 2,
              width: 1,
              child: CustomPaint(
                painter: DottedLinePainter(color: AppColors.primary),
              ),
            ),
        ),
        ListView.builder(
            itemCount: 5,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final homeTaker = penaltyTakersHome[index];
              final awayTaker = penaltyTakersAway[index];
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Expanded(child: _homePenaltyTaker(name: homeTaker.playerName, image: homeTaker.playerImage, actionIcon: homeTaker.actionIcon)),
                         const Gap(25),
                         Center(
                           child: Column(
                             children: [
                               Padding(
                                padding: const EdgeInsets.symmetric(vertical: 0.0),
                                child: SizedBox(
                                  height: 2,
                                  width: 1,
                                  child: CustomPaint(
                                    painter: DottedLinePainter(color: AppColors.primary),
                                  ),
                                ),
                              ),
                              Container(
                                height: 20,
                                width: 20,
                                decoration: const  BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.primary
                                ),
                                child: Center(
                                  child: Text(
                                    homeTaker.time,
                                    style: const TextStyle(
                                      color: AppColors.white,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700
                                    ),
                                  ),
                                ),
                              )
                             ],
                           ),
                         ),
                         const Gap(25),
                         Expanded(child: _awayPenaltyTaker(name: awayTaker.playerName, image: awayTaker.playerImage, actionIcon: awayTaker.actionIcon))
                      ],
                    ),
                  ),
                 
                ],
              );
            },
        ),
         Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.greyFour
          ),
          child: const Text(
            'Extra Time (0 - 0)',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 11, 
              color: Color(0xFF4F4F4F)
            ),
          ),
        ),
         SizedBox(
            height: 2,
            width: 1,
            child: CustomPaint(
              painter: DottedLinePainter(color: AppColors.primary),
            ),
          ),
        ListView.builder(
          itemCount: 3,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final taker = toExtraTime[index];
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      taker.isHomeTeam == true ?
                         Expanded(child: _homePenaltyTaker(name: taker.playerName, image: taker.playerImage, actionIcon: taker.actionIcon, action: taker.action))
                      : const Expanded(child: SizedBox()),
                        const Gap(25),
                        Center(
                          child: Column(
                            children: [
                              Padding(
                              padding: const EdgeInsets.symmetric(vertical: 0.0),
                              child: SizedBox(
                                height: 2,
                                width: 1,
                                child: CustomPaint(
                                  painter: DottedLinePainter(color: AppColors.primary),
                                ),
                              ),
                            ),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: const  BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.primary
                              ),
                              child: Center(
                                child: Text(
                                  taker.time,
                                  style: const TextStyle(
                                    color: AppColors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                              ),
                            )
                            ],
                          ),
                        ),
                        const Gap(25),
                        taker.isHomeTeam ==  false ?
                        Expanded(child: _awayPenaltyTaker(name: taker.playerName, image: taker.playerImage, actionIcon: taker.actionIcon, action: taker.action))
                        : const Expanded(child: SizedBox())
                    ],
                  ),
                ),
                
              ],
            );
          },
        ), 
        Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.greyFour
          ),
          child: const Text(
            'End of 90 mins (0 - 0)',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 11, 
              color: Color(0xFF4F4F4F)
            ),
          ),
        ),
         SizedBox(
            height: 2,
            width: 1,
            child: CustomPaint(
              painter: DottedLinePainter(color: AppColors.primary),
            ),
          ),
          ListView.builder(
          itemCount: toFullTime.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final taker = toFullTime[index];
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      taker.isHomeTeam == true ?
                      taker.isSubstitution == true ?
                      Expanded(child: _substituteWidget(playerOn: taker.playerOn.toString(), playerOff: taker.playerOff.toString())):
                      Expanded(child: _homePenaltyTaker(name: taker.playerName, image: taker.playerImage, actionIcon: taker.actionIcon, action: taker.action))
                      : const Expanded(child: SizedBox()),
                        const Gap(25),
                        Center(
                          child: Column(
                            children: [
                              Padding(
                              padding: const EdgeInsets.symmetric(vertical: 0.0),
                              child: SizedBox(
                                height: 2,
                                width: 1,
                                child: CustomPaint(
                                  painter: DottedLinePainter(color: AppColors.primary),
                                ),
                              ),
                            ),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: const  BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.primary
                              ),
                              child: Center(
                                child: Text(
                                  taker.time,
                                  style: const TextStyle(
                                    color: AppColors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                              ),
                            )
                            ],
                          ),
                        ),
                        const Gap(25),
                        taker.isHomeTeam == false? 
                        Expanded(child: _awayPenaltyTaker(name: taker.playerName, image: taker.playerImage, actionIcon: taker.actionIcon, action: taker.action))
                        : const Expanded(child: SizedBox())
                    ],
                  ),
                ),
                
              ],
            );
          },
        ), 
         Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.greyFour
          ),
          child: const Text(
            'Half Time (0 - 0)',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 11, 
              color: Color(0xFF4F4F4F)
            ),
          ),
        ),
         SizedBox(
            height: 2,
            width: 1,
            child: CustomPaint(
              painter: DottedLinePainter(color: AppColors.primary),
            ),
          ),
          ListView.builder(
          itemCount: 5,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final homeTaker = penaltyTakersHome[index];
            final awayTaker = penaltyTakersAway[index];
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Expanded(child: _homePenaltyTaker(name: homeTaker.playerName, image: homeTaker.playerImage, actionIcon: homeTaker.actionIcon)),
                        const Gap(25),
                        Center(
                          child: Column(
                            children: [
                              Padding(
                              padding: const EdgeInsets.symmetric(vertical: 0.0),
                              child: SizedBox(
                                height: 2,
                                width: 1,
                                child: CustomPaint(
                                  painter: DottedLinePainter(color: AppColors.primary),
                                ),
                              ),
                            ),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: const  BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.primary
                              ),
                              child: Center(
                                child: Text(
                                  homeTaker.time,
                                  style: const TextStyle(
                                    color: AppColors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                              ),
                            )
                            ],
                          ),
                        ),
                        const Gap(25),
                        Expanded(child: _awayPenaltyTaker(name: awayTaker.playerName, image: awayTaker.playerImage, actionIcon: awayTaker.actionIcon))
                    ],
                  ),
                ),
                
              ],
            );
          },
        ),
      ],
    );
  }
  Widget _homePenaltyTaker({required String name, required String image, required String actionIcon, String? action }){
    return Row(
      children: [
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image))
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black
                ),
              ),
              action != null ? 
              Text(
                '($action)',
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColors.grey
                ),
              ): const SizedBox(),
            ],
          ),
        ),
        const Gap(3),
         Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(actionIcon))
          ),
        ),
      ],
    );
  }
  Widget _awayPenaltyTaker({required String name, required String image, required String actionIcon, String? action}){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
         Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(actionIcon))
          ),
        ),
        const Gap(10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black
                ),
              ),
               action != null ? 
              Text(
              '($action)',
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColors.grey
                ),
              ): const SizedBox(),
            ],
          ),
        ),
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image))
          ),
        ),
      ],
    );
  }
  Widget _substituteWidget({required String playerOn, required String playerOff}){
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.arrow_forward, color: AppColors.gree, size: 13,),
                Text(
                  playerOn,
                  style: const TextStyle(
                    fontSize:  14, 
                    fontWeight: FontWeight.w400,
                    color: AppColors.gree
                  ),
                )
              ],
            ),
            Row(
              children: [
               const Icon(Icons.arrow_back, color: AppColors.red, size: 13,),
                Text(
                  playerOff,
                  style: const TextStyle(
                    fontSize:  14, 
                    fontWeight: FontWeight.w400,
                    color: AppColors.red
                  ),
                )
              ],
            )
          ],
        ),
        const Spacer(),
        Container(
          height: 20,
          width: 20,
          decoration: const  BoxDecoration(
            image: DecorationImage(image: AssetImage(PngIcons.substitutionIcon))
          ),
        )
      ],
    );
  }
}

class DottedLinePainter extends CustomPainter {
  final Color color;

  DottedLinePainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    double dashWidth = 2.0;
    double dashSpace = 1.0;
    double lineHeight = 10.0; 
    int numberOfLines = 7; 

    for (int i = 0; i < numberOfLines; i++) {
      double startX = 0;
      double yOffset = i * lineHeight;

      while (startX < size.width) {
        canvas.drawLine(
          Offset(startX, yOffset), 
          Offset(startX + dashWidth, yOffset), 
          paint,
        );
        startX += dashWidth + dashSpace;
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

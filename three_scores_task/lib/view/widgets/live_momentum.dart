import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:three_scores_task/core/extension/media.dart';
import 'package:three_scores_task/core/resources/colors.dart';
import 'package:three_scores_task/core/resources/icons.dart';
import 'package:three_scores_task/core/resources/strings.dart';
import 'package:fl_chart/fl_chart.dart';

class LiveMomentumWidget extends StatelessWidget {
  const LiveMomentumWidget({super.key});

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
              child: const Text(
                AppStrings.matchMomentum,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.1,
                  color: AppColors.white,
                ),
              ),
            ),
            const Gap(15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '60%',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.black
                        ),
                      ),
                      Text(
                        AppStrings.ballPossession,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.greyFive
                        ),
                      ),
                      Text(
                        '40%',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.black
                        ),
                      )
                    ],
                  ),
                  const Gap(15),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 6,
                          decoration: const BoxDecoration(
                            color: AppColors.yellow,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              bottomLeft: Radius.circular(5)
                            )
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 6,
                          decoration: const  BoxDecoration(
                            color: AppColors.red,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(5),
                              bottomRight: Radius.circular(5)
                            )
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Gap(18),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Gap(5),
                      _clubImage(image: PngIcons.goalBall),
                         const Gap(5),
                      _clubImage(image: PngIcons.goalBall),
                         const Gap(10),
                      _clubImage(image: PngIcons.redYellowCard),
                         const Gap(8),
                       _clubImage(image: PngIcons.goalBall),
                          const Gap(6),
                       _clubImage(image: PngIcons.goalMissed),
                          const Gap(9),
                       _clubImage(image: PngIcons.redCard)
                    ],
                  ),
                  const Gap(5),
                  Row(
                    children: [
                      _clubImage(image: PngIcons.barcelonaIcon),
                      const Gap(10),
                      Expanded(
                        child: Container(
                          height: 50,
                          color: const Color(0xFFFFF4CE),
                          child: const HomePossessionBarChartUi(),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                       _clubImage(image: PngIcons.gironaIcon),
                      const Gap(10),
                      Expanded(
                        child: Container(
                          height: 50,
                          color: const Color(0xFFFFBDC7),
                          child: const AwayPossessionBarChartUi(),
                        ),
                      ),
                    ],
                  ),
                  const Gap(5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Gap(5),
                      _clubImage(image: PngIcons.goalBall),
                         const Gap(5),
                      _clubImage(image: PngIcons.goalBall),
                         const Gap(10),
                      _clubImage(image: PngIcons.redYellowCard),
                         const Gap(8),
                       _clubImage(image: PngIcons.goalBall),
                          const Gap(6),
                       _clubImage(image: PngIcons.goalScore),
                          const Gap(9),
                       _clubImage(image: PngIcons.ownGoal)
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
  }
  Widget _clubImage({required String image}){
    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image))
      ),
    );
  }
}


class HomePossessionBarChartUi extends StatelessWidget {
  const HomePossessionBarChartUi({super.key});


  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        gridData: const FlGridData(show: false),
        barGroups: [
          BarChartGroupData(
              x: 0,
            barsSpace: 6,
            barRods: [
              BarChartRodData(
                  toY: 0.5,
                  color: AppColors.yellow,  
                  borderRadius: BorderRadius.zero,     
              )
            ]
          ),
          BarChartGroupData(
              x: 1,
              barsSpace: 6,
              barRods: [
                BarChartRodData(
                    toY: 0.7,
                    color: AppColors.yellow,
                    borderRadius: BorderRadius.zero,
                ),
              ]
          ),
          BarChartGroupData(
              x: 2,
              barsSpace: 6,
              barRods: [
                BarChartRodData(
                    toY: 0.5,
                    color: AppColors.yellow,
                    borderRadius: BorderRadius.zero,
                ),
              ],
          ),
          BarChartGroupData(
              x: 3,
              barsSpace: 6,
              barRods: [
                BarChartRodData(
                    toY: 0.9,
                    color: AppColors.yellow,
                    borderRadius: BorderRadius.zero,
                ),
              ]
          ),
          BarChartGroupData(
              x: 4,
              barsSpace: 6,
              barRods: [
                BarChartRodData(
                    toY: 0.3,
                    color: AppColors.yellow,
                    borderRadius: BorderRadius.zero,
                ),
              ]
          ),
          BarChartGroupData(
              x: 5,
              barsSpace: 6,
              barRods: [
                BarChartRodData(
                    toY: 8,
                    color: AppColors.yellow,
                    borderRadius: BorderRadius.zero,
                ),
              ]
          ),
          BarChartGroupData(
              x: 6,
              barsSpace: 6,
              barRods: [
                BarChartRodData(
                    toY: 5,
                    color: AppColors.yellow,
                    borderRadius: BorderRadius.zero,
                ),
              ]
          ),
          BarChartGroupData(
              x: 0,
            barsSpace: 6,
            barRods: [
              BarChartRodData(
                  toY: 5,
                  color: AppColors.yellow,  
                  borderRadius: BorderRadius.zero,     
              )
            ]
          ),
          BarChartGroupData(
              x: 1,
              barsSpace: 6,
              barRods: [
                BarChartRodData(
                    toY: 7,
                    color: AppColors.yellow,
                    borderRadius: BorderRadius.zero,
                ),
              ]
          ),
          BarChartGroupData(
              x: 2,
              barsSpace: 6,
              barRods: [
                BarChartRodData(
                    toY: 5,
                    color: AppColors.yellow,
                    borderRadius: BorderRadius.zero,
                ),
              ],
          ),
          BarChartGroupData(
              x: 3,
              barsSpace: 6,
              barRods: [
                BarChartRodData(
                    toY: 9,
                    color: AppColors.yellow,
                    borderRadius: BorderRadius.zero,
                ),
              ]
          ),
          BarChartGroupData(
              x: 4,
              barsSpace: 6,
              barRods: [
                BarChartRodData(
                    toY: 3,
                    color: AppColors.yellow,
                    borderRadius: BorderRadius.zero,
                ),
              ]
          ),
          BarChartGroupData(
              x: 5,
              barsSpace: 6,
              barRods: [
                BarChartRodData(
                    toY: 8,
                    color: AppColors.yellow,
                    borderRadius: BorderRadius.zero,
                ),
              ]
          ),
          BarChartGroupData(
              x: 6,
              barsSpace: 6,
              barRods: [
                BarChartRodData(
                    toY: 5,
                    color: AppColors.yellow,
                    borderRadius: BorderRadius.zero,
                ),
              ]
          ),
          BarChartGroupData(
              x: 0,
            barsSpace: 6,
            barRods: [
              BarChartRodData(
                  toY: 5,
                  color: AppColors.yellow,  
                  borderRadius: BorderRadius.zero,     
              )
            ]
          ),
          BarChartGroupData(
              x: 1,
              barsSpace: 6,
              barRods: [
                BarChartRodData(
                    toY: 7,
                    color: AppColors.yellow,
                    borderRadius: BorderRadius.zero,
                ),
              ]
          ),
          BarChartGroupData(
              x: 2,
              barsSpace: 6,
              barRods: [
                BarChartRodData(
                    toY: 5,
                    color: AppColors.yellow,
                    borderRadius: BorderRadius.zero,
                ),
              ],
          ),
          BarChartGroupData(
              x: 3,
              barsSpace: 6,
              barRods: [
                BarChartRodData(
                    toY: 9,
                    color: AppColors.yellow,
                    borderRadius: BorderRadius.zero,
                ),
              ]
          ),
          BarChartGroupData(
              x: 4,
              barsSpace: 6,
              barRods: [
                BarChartRodData(
                    toY: 3,
                    color: AppColors.yellow,
                    borderRadius: BorderRadius.zero,
                ),
              ]
          ),
          BarChartGroupData(
              x: 5,
              barsSpace: 6,
              barRods: [
                BarChartRodData(
                    toY: 8,
                    color: AppColors.yellow,
                    borderRadius: BorderRadius.zero,
                ),
              ]
          ),
          BarChartGroupData(
              x: 6,
              barsSpace: 6,
              barRods: [
                BarChartRodData(
                    toY: 5,
                    color: AppColors.yellow,
                    borderRadius: BorderRadius.zero,
                ),
              ]
          ),
          BarChartGroupData(
              x: 0,
            barsSpace: 6,
            barRods: [
              BarChartRodData(
                  toY: 5,
                  color: AppColors.yellow,  
                  borderRadius: BorderRadius.zero,     
              )
            ]
          ),
          BarChartGroupData(
              x: 1,
              barsSpace: 6,
              barRods: [
                BarChartRodData(
                    toY: 7,
                    color: AppColors.yellow,
                    borderRadius: BorderRadius.zero,
                ),
              ]
          ),
          BarChartGroupData(
              x: 2,
              barsSpace: 6,
              barRods: [
                BarChartRodData(
                    toY: 5,
                    color: AppColors.yellow,
                    borderRadius: BorderRadius.zero,
                ),
              ],
          ),
          BarChartGroupData(
              x: 3,
              barsSpace: 6,
              barRods: [
                BarChartRodData(
                    toY: 9,
                    color: AppColors.yellow,
                    borderRadius: BorderRadius.zero,
                ),
              ]
          ),
          BarChartGroupData(
              x: 4,
              barsSpace: 6,
              barRods: [
                BarChartRodData(
                    toY: 3,
                    color: AppColors.yellow,
                    borderRadius: BorderRadius.zero,
                ),
              ]
          ),
          BarChartGroupData(
              x: 5,
              barsSpace: 6,
              barRods: [
                BarChartRodData(
                    toY: 8,
                    color: AppColors.yellow,
                    borderRadius: BorderRadius.zero,
                ),
              ]
          ),
          BarChartGroupData(
              x: 6,
              barsSpace: 6,
              barRods: [
                BarChartRodData(
                    toY: 5,
                    color: AppColors.yellow,
                    borderRadius: BorderRadius.zero,
                ),
              ]
          ),
          BarChartGroupData(
              x: 0,
            barsSpace: 6,
            barRods: [
              BarChartRodData(
                  toY: 0.5,
                  color: AppColors.yellow,  
                  borderRadius: BorderRadius.zero,     
              )
            ]
          ),
          BarChartGroupData(
              x: 1,
              barsSpace: 6,
              barRods: [
                BarChartRodData(
                    toY: 0.5,
                    color: AppColors.yellow,
                    borderRadius: BorderRadius.zero,
                ),
              ]
          ),
          BarChartGroupData(
              x: 2,
              barsSpace: 6,
              barRods: [
                BarChartRodData(
                    toY: 0.5,
                    color: AppColors.yellow,
                    borderRadius: BorderRadius.zero,
                ),
              ],
          ),
          BarChartGroupData(
              x: 3,
              barsSpace: 6,
              barRods: [
                BarChartRodData(
                    toY: 0.5,
                    color: AppColors.yellow,
                    borderRadius: BorderRadius.zero,
                ),
              ]
          ),
          BarChartGroupData(
              x: 4,
              barsSpace: 6,
              barRods: [
                BarChartRodData(
                    toY: 0.6,
                    color: AppColors.yellow,
                    borderRadius: BorderRadius.zero,
                ),
              ]
          ),
          BarChartGroupData(
              x: 5,
              barsSpace: 6,
              barRods: [
                BarChartRodData(
                    toY: 0.5,
                    color: AppColors.yellow,
                    borderRadius: BorderRadius.zero,
                ),
              ]
          ),
          BarChartGroupData(
              x: 6,
              barsSpace: 6,
              barRods: [
                BarChartRodData(
                    toY: 0.6,
                    color: AppColors.yellow,
                    borderRadius: BorderRadius.zero,
                ),
              ]
          ),
        ],
        borderData: FlBorderData(show: false),
        groupsSpace: 10,
        titlesData: const FlTitlesData(
          show: false,
          leftTitles:  AxisTitles(
              axisNameSize: 100,
              sideTitles: SideTitles(
                  showTitles: false,
              )
          ),
          topTitles:  AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          rightTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
        ),
      ),
    );
  }
}


class AwayPossessionBarChartUi extends StatelessWidget {
  const AwayPossessionBarChartUi({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Transform.flip(
      child: BarChart(
        BarChartData(
          baselineY: 20,
          gridData: const FlGridData(show: false),
          barGroups: [
            BarChartGroupData(
                x: 0,
              barRods: [
                BarChartRodData(
                    toY: -0.5,
                   color: AppColors.red,
                    borderRadius: BorderRadius.zero,
                ),
              ]
            ),
            BarChartGroupData(
                x: 1,
                barsSpace: 4,
                barRods: [
                  BarChartRodData(
                      toY: -0.5,
                      color: AppColors.red,
                      borderRadius: BorderRadius.zero,
                  ),
                ]
            ),
            BarChartGroupData(
                x: 2,
                barsSpace: 6,
                barRods: [
                  BarChartRodData(
                      toY: -0.5,
                      color: AppColors.red,
                     borderRadius: BorderRadius.zero,
                  ),
                ],
            ),
            BarChartGroupData(
                x: 3,
                barsSpace: 6,
                barRods: [
                  BarChartRodData(
                      toY: -0.5,
                      color: AppColors.red,
                      borderRadius: BorderRadius.zero,
                  ),
                ]
            ),
            BarChartGroupData(
                x: 4,
                barsSpace: 6,
                barRods: [
                  BarChartRodData(
                      toY: -3,
                      color: AppColors.red,
                      borderRadius: BorderRadius.zero,
                  ),
                ]
            ),
            BarChartGroupData(
                x: 5,
                barsSpace: 6,
                barRods: [
                  BarChartRodData(
                      toY: -8,
                      color: AppColors.red,
                      borderRadius: BorderRadius.zero,
                  ),
                ]
            ),
            BarChartGroupData(
                x: 6,
                barsSpace: -6,
                barRods: [
                  BarChartRodData(
                      toY: -5,
                      color: AppColors.red,
                      borderRadius: BorderRadius.zero,
                  ),
                ]
            ),
            BarChartGroupData(
                x: 0,
              barRods: [
                BarChartRodData(
                    toY: -5,
                   color: AppColors.red,
                    borderRadius: BorderRadius.zero,
                ),
              ]
            ),
            BarChartGroupData(
                x: 1,
                barsSpace: 4,
                barRods: [
                  BarChartRodData(
                      toY: -7,
                      color: AppColors.red,
                      borderRadius: BorderRadius.zero,
                  ),
                ]
            ),
            BarChartGroupData(
                x: 2,
                barsSpace: 6,
                barRods: [
                  BarChartRodData(
                      toY: -5,
                      color: AppColors.red,
                     borderRadius: BorderRadius.zero,
                  ),
                ],
            ),
            BarChartGroupData(
                x: 3,
                barsSpace: 6,
                barRods: [
                  BarChartRodData(
                      toY: -9,
                      color: AppColors.red,
                      borderRadius: BorderRadius.zero,
                  ),
                ]
            ),
            BarChartGroupData(
                x: 4,
                barsSpace: 6,
                barRods: [
                  BarChartRodData(
                      toY: -3,
                      color: AppColors.red,
                      borderRadius: BorderRadius.zero,
                  ),
                ]
            ),
            BarChartGroupData(
                x: 5,
                barsSpace: 6,
                barRods: [
                  BarChartRodData(
                      toY: -8,
                      color: AppColors.red,
                      borderRadius: BorderRadius.zero,
                  ),
                ]
            ),
            BarChartGroupData(
                x: 6,
                barsSpace: 6,
                barRods: [
                  BarChartRodData(
                      toY: -5,
                      color: AppColors.red,
                      borderRadius: BorderRadius.zero,
                  ),
                ]
            ),
            BarChartGroupData(
                x: 0,
              barRods: [
                BarChartRodData(
                    toY: -5,
                   color: AppColors.red,
                    borderRadius: BorderRadius.zero,
                ),
              ]
            ),
            BarChartGroupData(
                x: 1,
                barsSpace: 4,
                barRods: [
                  BarChartRodData(
                      toY: -7,
                      color: AppColors.red,
                      borderRadius: BorderRadius.zero,
                  ),
                ]
            ),
            BarChartGroupData(
                x: 2,
                barsSpace: 6,
                barRods: [
                  BarChartRodData(
                      toY: -0.5,
                      color: AppColors.red,
                     borderRadius: BorderRadius.zero,
                  ),
                ],
            ),
            BarChartGroupData(
                x: 3,
                barsSpace: 6,
                barRods: [
                  BarChartRodData(
                      toY: -1,
                      color: AppColors.red,
                      borderRadius: BorderRadius.zero,
                  ),
                ]
            ),
            BarChartGroupData(
                x: 4,
                barsSpace: 6,
                barRods: [
                  BarChartRodData(
                      toY: -0.5,
                      color: AppColors.red,
                      borderRadius: BorderRadius.zero,
                  ),
                ]
            ),
            BarChartGroupData(
                x: 5,
                barsSpace: 6,
                barRods: [
                  BarChartRodData(
                      toY: -0.5,
                      color: AppColors.red,
                      borderRadius: BorderRadius.zero,
                  ),
                ]
            ),
            BarChartGroupData(
                x: 6,
                barsSpace: 6,
                barRods: [
                  BarChartRodData(
                      toY: -1,
                      color: AppColors.red,
                      borderRadius: BorderRadius.zero,
                  ),
                ]
            ),
            BarChartGroupData(
                x: 0,
              barRods: [
                BarChartRodData(
                    toY: -5,
                   color: AppColors.red,
                    borderRadius: BorderRadius.zero,
                ),
              ]
            ),
            BarChartGroupData(
                x: 1,
                barsSpace: 4,
                barRods: [
                  BarChartRodData(
                      toY: -7,
                      color: AppColors.red,
                      borderRadius: BorderRadius.zero,
                  ),
                ]
            ),
            BarChartGroupData(
                x: 2,
                barsSpace: 6,
                barRods: [
                  BarChartRodData(
                      toY: -5,
                      color: AppColors.red,
                     borderRadius: BorderRadius.zero,
                  ),
                ],
            ),
            BarChartGroupData(
                x: 3,
                barsSpace: 6,
                barRods: [
                  BarChartRodData(
                      toY: -9,
                      color: AppColors.red,
                      borderRadius: BorderRadius.zero,
                  ),
                ]
            ),
            BarChartGroupData(
                x: 4,
                barsSpace: 6,
                barRods: [
                  BarChartRodData(
                      toY: -3,
                      color: AppColors.red,
                      borderRadius: BorderRadius.zero,
                  ),
                ]
            ),
            BarChartGroupData(
                x: 5,
                barsSpace: 6,
                barRods: [
                  BarChartRodData(
                      toY: -8,
                      color: AppColors.red,
                      borderRadius: BorderRadius.zero,
                  ),
                ]
            ),
            BarChartGroupData(
                x: 6,
                barsSpace: 6,
                barRods: [
                  BarChartRodData(
                      toY: -5,
                      color: AppColors.red,
                      borderRadius: BorderRadius.zero,
                  ),
                ]
            ),
            BarChartGroupData(
                x: 0,
              barRods: [
                BarChartRodData(
                    toY: -5,
                   color: AppColors.red,
                    borderRadius: BorderRadius.zero,
                ),
              ]
            ),
            BarChartGroupData(
                x: 1,
                barsSpace: 4,
                barRods: [
                  BarChartRodData(
                      toY: -7,
                      color: AppColors.red,
                      borderRadius: BorderRadius.zero,
                  ),
                ]
            ),
            BarChartGroupData(
                x: 2,
                barsSpace: 6,
                barRods: [
                  BarChartRodData(
                      toY: -5,
                      color: AppColors.red,
                     borderRadius: BorderRadius.zero,
                  ),
                ],
            ),
            BarChartGroupData(
                x: 3,
                barsSpace: 6,
                barRods: [
                  BarChartRodData(
                      toY: -9,
                      color: AppColors.red,
                      borderRadius: BorderRadius.zero,
                  ),
                ]
            ),
            BarChartGroupData(
                x: 4,
                barsSpace: 6,
                barRods: [
                  BarChartRodData(
                      toY: -3,
                      color: AppColors.red,
                      borderRadius: BorderRadius.zero,
                  ),
                ]
            ),
            BarChartGroupData(
                x: 5,
                barsSpace: 6,
                barRods: [
                  BarChartRodData(
                      toY: -8,
                      color: AppColors.red,
                      borderRadius: BorderRadius.zero,
                  ),
                ]
            ),
            BarChartGroupData(
                x: 6,
                barsSpace: 6,
                barRods: [
                  BarChartRodData(
                      toY: -5,
                      color: AppColors.red,
                      borderRadius: BorderRadius.zero,
                  ),
                ]
            ),
          ],
          borderData: FlBorderData(show: false),
          groupsSpace: 10,
          titlesData:const FlTitlesData(
            show: false,
            leftTitles: AxisTitles(
                axisNameSize: 100,
                sideTitles: SideTitles(
                    showTitles: false,
                    reservedSize: 20
                )
            ),
            topTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false, reservedSize: 20),
            ),
            rightTitles: const  AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
          ),
        ),
      ),
    );
  }
}

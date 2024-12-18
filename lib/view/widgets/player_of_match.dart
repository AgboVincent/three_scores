















import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:three_scores_task/core/extension/media.dart';
import 'package:three_scores_task/core/resources/colors.dart';
import 'package:three_scores_task/core/resources/icons.dart';
import 'package:three_scores_task/core/resources/images.dart';
import 'package:three_scores_task/core/resources/strings.dart';

class PlayerOfMatchWidget extends StatelessWidget {
  const PlayerOfMatchWidget({super.key});

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
                AppStrings.playerOfMatch,
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
              padding: const  EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Container(
                    height: 65,
                    width: 65,
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage(AppImages.matchPlayer))
                    ),
                  ),
                  const Gap(10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'F.Dejong',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColors.black
                        ),
                      ),
                      const Gap(3),
                      Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: const  BoxDecoration(
                              image: DecorationImage(image: AssetImage(PngIcons.barcelonaIcon))
                            ),
                          ),
                          const Gap(5),
                          const Text(
                            AppStrings.barcelona,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF4F4F4F)
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 8),
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(6)
                    ),
                    child: const Text(
                      '8.0',
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 11,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Gap(8),
          ],
        ),
      );
  }
}
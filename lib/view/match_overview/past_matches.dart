














import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:three_scores_task/core/extension/media.dart';
import 'package:three_scores_task/core/resources/colors.dart';
import 'package:three_scores_task/core/resources/icons.dart';
import 'package:three_scores_task/core/resources/strings.dart';

class PastMatchesWidget extends StatelessWidget {
  const PastMatchesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){
         Navigator.pushNamed(context, '/match-details', );
      },
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: Size.zero, 
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Container(
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
              decoration: const BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15)
                )
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    height: 24,
                    width: 24,
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage(PngIcons.pastMatchIcon)
                      )
                    ),
                  ),
                  const Gap(10),
                  const Text(
                    AppStrings.laliga,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.1,
                      color: AppColors.white,
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    AppStrings.gameWeek5,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.1,
                      color: AppColors.white,
                    ),
                  )
                ],
              ),
            ),
            const Gap(15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _clubWidget(clubName: AppStrings.barcelona, clubImage: PngIcons.barcelonaIcon),
                  _scoreWidget(),
                  _clubWidget(clubName: AppStrings.girona, clubImage: PngIcons.gironaIcon)
                ],
              ),
            ),
            const Gap(8),
            const Divider(height: 1, color: AppColors.greyFour,)
          ],
        ),
      ),
    );
  }
  Widget _clubWidget({required String clubName, required String clubImage}){
    return Column(
      children: [
        Container(
          height: 20,
          width: 20,
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
            color: AppColors.greyThree,
             fontSize: 14,
             fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
  Widget _scoreWidget(){
    return const Column(
      children: [
        Text(
          'May 21, 2024',
          style: TextStyle(
            color: AppColors.grey,
            fontSize: 11,
            fontWeight: FontWeight.w500,
          ),
        ),
        Gap(5),
        Text(
          '3 - 3',
          style: TextStyle(
            color: AppColors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        Gap(5),
        Text(
          'Full-time',
          style: TextStyle(
            color: AppColors.grey,
            fontSize: 11,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
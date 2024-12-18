


import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:three_scores_task/core/resources/colors.dart';
import 'package:three_scores_task/core/resources/icons.dart';
import 'package:three_scores_task/core/resources/strings.dart';

class HorizontalSelectorWidget extends StatelessWidget {
  final String title;
  final String image;
  final bool isSelected;
  const HorizontalSelectorWidget({
    required this.title,
    required this.image,
    required this.isSelected,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: isSelected? AppColors.primary : AppColors.black,
            shape: BoxShape.circle
          ),
          child:FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.center, 
            child: Container(
              height: 27,
              width: 27,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(image))
              ),
            ),
          ),
        ),
        const Gap(6),
        Text(
          title,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: isSelected? AppColors.white : AppColors.greyTwo
          ),
        )
      ],
    );
  }
}

class HorizontalSelector {
  final String image;
  final String title;
  final Widget page;

  HorizontalSelector({
    required this.image,
    required this.title,
    required this.page
  });
}


List<HorizontalSelector> selector = [
  HorizontalSelector(image: PngIcons.allIcon, title: AppStrings.all, page: const SizedBox()),
  HorizontalSelector(image: PngIcons.eplIcon, title: AppStrings.epl, page: const SizedBox()),
  HorizontalSelector(image: PngIcons.laligaIcon, title: AppStrings.laliga, page: const SizedBox()),
  HorizontalSelector(image: PngIcons.seriaIcon, title: AppStrings.seriaA, page: const SizedBox()),
  HorizontalSelector(image: PngIcons.bundesligaIcon, title: AppStrings.bundesliga, page: const SizedBox()),
  HorizontalSelector(image: PngIcons.ligue1Icon, title: AppStrings.ligue1, page: const SizedBox())
];
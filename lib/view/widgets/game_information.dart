









import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:three_scores_task/core/extension/media.dart';
import 'package:three_scores_task/core/resources/icons.dart';
import '../../core/resources/colors.dart';
import '../../core/resources/strings.dart';

class GameInformationWidget extends StatelessWidget {
  const GameInformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
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
                AppStrings.gameinfo,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.1,
                  color: AppColors.white,
                ),
              ),
            ),
            const Gap(15),
            _gameInfo(image: PngIcons.venueIcon, title: 'Venue', value: 'Camp Nou'),
                _gameInfo(image: PngIcons.calendarIcon, title: 'Date', value: 'March 4, 2024'),
                    _gameInfo(image: PngIcons.clockIcon, title: 'Time', value: '21;1'),
                        _gameInfo(image: PngIcons.refreeIcon, title: 'Refree', value: 'Stephen Hosea'),
                            _gameInfo(image: PngIcons.stadiumCapacityIcon, title: 'Stadium Capacity', value: '91,4004')
          ],
        ),
      );
  }
  Widget _gameInfo({required String image, required String title, required String value}){
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(image))
            ),
          ),
          const Gap(10),
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.greyFive
            ),
          ),
          const Spacer(),
          Text(
            value,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.black
            ),
          ),
        ],
      ),
    );
  }
}
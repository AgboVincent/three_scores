







import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:three_scores_task/core/extension/media.dart';
import 'package:three_scores_task/core/resources/colors.dart';
import 'package:three_scores_task/core/resources/icons.dart';
import 'package:three_scores_task/core/resources/strings.dart';

class MatchStandingsWidget extends StatefulWidget {
  const MatchStandingsWidget({super.key});

  @override
  State<MatchStandingsWidget> createState() => _MatchStandingsWidgetState();
}

class _MatchStandingsWidgetState extends State<MatchStandingsWidget> {

  List<MatchStandings> matchStandings = [
    MatchStandings(clubName: 'Girona', clubImage: PngIcons.gironaIcon, matchPlayed: '18', wins: '18', lose: '10', draw: '10', goalsAgainst: '11', goalsFor: '19', points: '24'),
    MatchStandings(clubName: 'Barcelona', clubImage: PngIcons.barcelonaIcon, matchPlayed: '18', wins: '12', lose: '12', draw: '14', goalsAgainst: '41', goalsFor: '16', points: '20')
  ];

  List<String> header = [
    'MP', 'W', 'D', 'L', 'GA', 'GF', 'Pt'
  ];

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
              decoration: const BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15)
                )
              ),
              child: Row(
                children: [
                  const Text(
                    AppStrings.matchStandings,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.1,
                      color: AppColors.white,
                    ),
                  ),
                  const Spacer(),
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
                ],
              ),
            ),
            const Gap(15),
            Row(
              children: [
                const Spacer(),
                ...List.generate(header.length, (index){
                  final item = header[index];
                  return item == 'Pt' ? Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: _pointsText(points: 'Pt'),
                  ): _tableHeader(header: item);
                })
              ],
            ),
            const Gap(10),
            Column(
              children: List.generate(matchStandings.length, (index){
                final item = matchStandings[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      _serialNumber(number: '${index+1}'),
                      const Gap(5),
                      _clubImage(image: item.clubImage),
                      const Gap(5),
                      _clubName(name: item.clubName),
                      const Spacer(),
                      _tableHeader(header: item.matchPlayed),
                      _tableHeader(header: item.wins),
                      _tableHeader(header: item.draw),
                      _tableHeader(header: item.lose),
                      _tableHeader(header: item.goalsAgainst),
                      _tableHeader(header: item.goalsFor),
                      _pointsText(points: item.points)
                    ],
                  ),
                );
              })
            )
          ],
        ),
      ) ;
  }
  Widget _tableHeader({required String header}){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Text(
        header,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: AppColors.grey
        ),
      ),
    );
  }
   Widget _pointsText({required String points}){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Text(
        points,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: AppColors.black
        ),
      ),
    );
  }
  Widget _clubName({required String name}){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Text(
        name,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: AppColors.black
        ),
      ),
    );
  }
  Widget _serialNumber({required String number}){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Text(
        number,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: AppColors.black
        ),
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




class MatchStandings {
  final String clubName;
  final String clubImage;
  final String matchPlayed;
  final String wins;
  final String lose;
  final String draw;
  final String goalsAgainst;
  final String goalsFor;
  final String points;


  MatchStandings({
    required this.clubName,
    required this.clubImage,
    required this.matchPlayed,
    required this.wins,
    required this.lose,
    required this.draw,
    required this.goalsAgainst,
    required this.goalsFor,
    required this.points
  });

}
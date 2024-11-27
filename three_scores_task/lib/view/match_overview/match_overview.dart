




import 'package:flutter/material.dart';
import 'package:three_scores_task/core/extension/media.dart';
import 'package:three_scores_task/core/resources/images.dart';

class MatchOverviewScreen extends StatefulWidget {
  const MatchOverviewScreen({super.key});

  @override
  State<MatchOverviewScreen> createState() => _MatchOverviewScreenState();
}

class _MatchOverviewScreenState extends State<MatchOverviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: context.width(),
            height: 260,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.backgroundImageOverview),
                fit: BoxFit.fill
              ),
            ),
          )
        ],
      ),
    );
  }
}
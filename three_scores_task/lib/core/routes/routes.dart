import 'package:flutter/material.dart';
import 'package:three_scores_task/view/dashboard/dashboard.dart';
import 'package:three_scores_task/view/match_details/match_details.dart';
import 'package:three_scores_task/view/match_overview/match_overview.dart';



var customRoutes = <String, WidgetBuilder>{
  '/dashboard': (context) => const DashboardScreen(),
  '/match-overview': (context) => const MatchOverviewScreen(),
  '/match-details': (context) => const MatchDetailsScreen(),
};

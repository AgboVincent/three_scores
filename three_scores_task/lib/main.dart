import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:three_scores_task/core/routes/routes.dart';
import 'package:three_scores_task/view/dashboard/dashboard.dart';


GetIt getIt = GetIt.instance;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Sizer(
      builder: (context, p1, p2) {
        return MaterialApp(
            initialRoute: '/dashbord',
            routes: customRoutes,
            theme: ThemeData(
            textTheme: GoogleFonts.outfitTextTheme(textTheme).copyWith(
            bodyMedium: GoogleFonts.outfit(textStyle: textTheme.bodyMedium),
            bodyLarge: GoogleFonts.outfit(textStyle: textTheme.bodyLarge),
            bodySmall: GoogleFonts.outfit(textStyle: textTheme.bodySmall),
            ),
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: const DashboardScreen(),
          );
      },
    );
  }
}


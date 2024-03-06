import 'package:flutter/material.dart';
import 'pages/onboarding/onboarding_screen.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(const TravelApp());
}

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
      onGenerateRoute: AppRoutes.onGenerate,
      initialRoute: AppRoutes.initial,
    );
  }
}

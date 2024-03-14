import 'package:flutter/material.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(const TravelApp());
}

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Travel App',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoutes.onGenerate,
      initialRoute: AppRoutes.initial,
    );
  }
}

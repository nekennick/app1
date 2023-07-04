import 'package:app1/logic/boitoan.dart';
import 'package:app1/values/app_colors.dart';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bói theo tên',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: const BoiToan(),
    );
  }
}

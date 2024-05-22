import 'package:billgram/core/navigation_service.dart';
import 'package:billgram/features/auth/controller/auth_controller.dart';
import 'package:billgram/features/auth/screens/splash_screen.dart';
import 'package:billgram/features/home/screens/mainBottomNav_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/theme/theme.dart';
import 'features/auth/repository/auth_repository.dart';
import 'features/auth/screens/login_screen.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    return MaterialApp(
      theme: Palette.lightModeAppTheme,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/theme/theme.dart';
import 'features/salesEstimation/features/home/screens/mainBottomNav_SE.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Palette.lightModeAppTheme,
      debugShowCheckedModeBanner: false,
      home: const MainBottomNavSE(),
    );
  }
}

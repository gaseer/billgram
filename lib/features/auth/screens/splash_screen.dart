import 'package:billgram/features/auth/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/constants/appConstants.dart';
import '../../../core/navigation_service.dart';
import '../../../core/theme/theme.dart';
import '../../home/screens/mainBottomNav_screen.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() {
    Future.delayed(
      const Duration(seconds: 2),
      () async {
        await navigateUser();
      },
    );
  }

  navigateUser() async {
    await SharedPreferences.getInstance().then((prefs) async {
      final isLoggedIn = prefs.getBool("isAuthenticated");
      if (isLoggedIn != null && isLoggedIn == true) {
        NavigationService.navigateRemoveUntil(
            context: context, screen: const MainBottomNav());
      } else {
        NavigationService.navigateRemoveUntil(
            context: context, screen: const LoginScreen());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Palette.primaryColor,
      body: Center(
        child: SvgPicture.asset(
          color: Colors.lightBlue,
          AppConstants.billGramLogo,
          height: h * .15,
        ),
      ),
    );
  }
}

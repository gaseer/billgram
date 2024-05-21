import 'package:billgram/features/home/screens/mainBottomNav_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/theme/theme.dart';
import 'features/auth/repository/auth_repository.dart';
import 'features/auth/screens/login_screen.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerStatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  void initState() {
    super.initState();
    ref.read(authProvider.notifier).loadAuthState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);

    final authState = ref.watch(authProvider);
    return MaterialApp(
      theme: Palette.lightModeAppTheme,
      debugShowCheckedModeBanner: false,
      home: authState.isAuthenticated
          ? const MainBottomNav()
          : const LoginScreen(),
    );
  }
}

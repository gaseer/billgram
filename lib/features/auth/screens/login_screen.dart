import 'package:billgram/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../home/screens/mainBottomNav_screen.dart';
import '../repository/auth_repository.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authProvider);
    final authNotifier = ref.read(authProvider.notifier);

    // if (authState.isAuthenticated) {
    //   WidgetsBinding.instance.addPostFrameCallback((_) {
    //     Navigator.of(context).pushReplacement(
    //       MaterialPageRoute(builder: (context) => const MainBottomNav()),
    //     );
    //   });
    // }

    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      appBar: AppBar(
        title: const Text(
          'Login',
          style: Palette.customTextStyle,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (authState.isAuthenticating)
                const CircularProgressIndicator()
              else
                Column(
                  children: [
                    Text(
                      'YOU ARE : ${authState.statusMessage}',
                      style: Palette.customTextStyle,
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton.icon(
                      icon: const Icon(Icons.login),
                      label: const Text('GO'),
                      onPressed: authNotifier.authenticate,
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}

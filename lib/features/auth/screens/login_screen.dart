import 'package:billgram/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../home/screens/mainBottomNav_screen.dart';
import '../repository/auth_repository.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authProvider);
    final authNotifier = ref.read(authProvider.notifier);

    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Palette.backgroundColor,
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
                    SizedBox(
                        height: w * .325,
                        child: SvgPicture.asset('assets/icons/logo.svg')),
                    SizedBox(
                      height: w * .2,
                    ),
                    Text(
                      'YOU ARE : ${authState.statusMessage}',
                      style: Palette.customTextStyle,
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: authNotifier.authenticate,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                        decoration: BoxDecoration(
                          color: Palette.primaryColor,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                          border: Border.all(
                            color: Colors.blueAccent,
                            width: 2,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.login, color: Colors.white),
                            SizedBox(width: 10),
                            Text('Authenticate',
                                style: Palette.customTextStyle.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700)),
                          ],
                        ),
                      ),
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

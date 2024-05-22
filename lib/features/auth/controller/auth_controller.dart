import 'package:billgram/core/navigation_service.dart';
import 'package:billgram/features/auth/screens/login_screen.dart';
import 'package:billgram/features/home/screens/mainBottomNav_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/theme/theme.dart';
import '../../../core/utilities/custom_snackBar.dart';
import '../repository/auth_repository.dart';

final authControllerProvider = NotifierProvider<AuthController, bool>(
  () => AuthController(),
);

class AuthController extends Notifier<bool> {
  @override
  bool build() {
    return false;
  }

  Future<void> authenticate({required BuildContext context}) async {
    state = true;
    final res = await ref.read(authRepositoryProvider).authenticate(context);
    state = false;
    res.fold(
        (l) => showSnackBar(
            content: l.errMSg,
            context: context,
            color: Palette.snackBarErrorColor), (r) {
      NavigationService.navigateRemoveUntil(
          context: context, screen: const MainBottomNav());
      return showSnackBar(
          content: "Authenticated Successfully",
          context: context,
          color: Palette.snackBarSuccessColor);
    });
  }

  Future<void> logout({required BuildContext context}) async {
    final res = await ref.read(authRepositoryProvider).logout();
    res.fold(
        (l) => showSnackBar(
            content: l.errMSg,
            context: context,
            color: Palette.snackBarErrorColor), (r) {
      NavigationService.navigateRemoveUntil(
          context: context, screen: const LoginScreen());
      return showSnackBar(
          content: "Logged Out",
          context: context,
          color: Palette.snackBarSuccessColor);
    });
  }

  Future<bool> loadAuthState({required BuildContext context}) async {
    final res = await ref.read(authRepositoryProvider).loadAuthState();
    res.fold(
        (l) => showSnackBar(
            content: l.errMSg,
            context: context,
            color: Palette.snackBarErrorColor),
        (r) => r);
    return false;
  }
}

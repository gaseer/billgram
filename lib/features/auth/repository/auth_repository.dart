import 'package:billgram/core/error_handling/type_defs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:local_auth/local_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../core/error_handling/failure.dart';

final authRepositoryProvider =
    Provider<AuthRepository>((ref) => AuthRepository());

class AuthRepository {
  FutureVoid authenticate(BuildContext context) async {
    try {
      bool authenticated = await LocalAuthentication().authenticate(
        localizedReason: 'Please authenticate to continue',
        options: const AuthenticationOptions(stickyAuth: true),
      );
      if (authenticated) {
        await _saveAuthState(true);
      }
      return right(null);
    } catch (e) {
      return left(Failure(errMSg: e.toString()));
    }
  }

  FutureVoid _saveAuthState(bool isAuthenticated) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isAuthenticated', isAuthenticated);
    return right(null);
  }

  FutureEither<bool> loadAuthState() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      bool isAuthenticated = prefs.getBool('isAuthenticated') ?? false;
      return right(isAuthenticated);
    } catch (e) {
      return left(Failure(errMSg: e.toString()));
    }
  }

  FutureVoid logout() async {
    try {
      await _saveAuthState(false);
      return right(null);
    } catch (e) {
      return left(Failure(errMSg: e.toString()));
    }
  }
}

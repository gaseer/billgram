import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:local_auth/local_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

final authProvider = StateNotifierProvider<AuthNotifier, AuthModel>(
  (ref) => AuthNotifier(),
);

class AuthNotifier extends StateNotifier<AuthModel> {
  AuthNotifier()
      : super(AuthModel(
          isAuthenticated: false,
          isAuthenticating: false,
          statusMessage: 'Not Authorized',
        ));

  final LocalAuthentication auth = LocalAuthentication();

  Future<void> authenticate() async {
    try {
      state = state.copyWith(
          isAuthenticating: true, statusMessage: 'Authenticating');
      bool authenticated = await auth.authenticate(
        localizedReason: 'Please authenticate to continue',
        options: const AuthenticationOptions(stickyAuth: true),
      );
      if (authenticated) {
        await _saveAuthState(true);
        state = state.copyWith(
            isAuthenticated: true,
            isAuthenticating: false,
            statusMessage: 'Authorized');
      } else {
        state = state.copyWith(
            isAuthenticated: false,
            isAuthenticating: false,
            statusMessage: 'Not Authorized');
      }
    } catch (e) {
      state = state.copyWith(
          isAuthenticating: false, statusMessage: 'Error - ${e.toString()}');
    }
  }

  Future<void> _saveAuthState(bool isAuthenticated) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isAuthenticated', isAuthenticated);
  }

  Future<void> loadAuthState() async {
    final prefs = await SharedPreferences.getInstance();
    bool isAuthenticated = prefs.getBool('isAuthenticated') ?? false;
    state = state.copyWith(isAuthenticated: isAuthenticated);
  }

  Future<void> logout() async {
    await _saveAuthState(false);
    state =
        state.copyWith(isAuthenticated: false, statusMessage: 'Not Authorized');
  }
}

class AuthModel {
  final bool isAuthenticated;
  final bool isAuthenticating;
  final String statusMessage;

  AuthModel({
    required this.isAuthenticated,
    required this.isAuthenticating,
    required this.statusMessage,
  });

  AuthModel copyWith({
    bool? isAuthenticated,
    bool? isAuthenticating,
    String? statusMessage,
  }) {
    return AuthModel(
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
      isAuthenticating: isAuthenticating ?? this.isAuthenticating,
      statusMessage: statusMessage ?? this.statusMessage,
    );
  }
}

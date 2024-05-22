import 'package:flutter_riverpod/flutter_riverpod.dart';

final logoAnimationProvider = NotifierProvider<LogoAnimationNotifier, bool>(() {
  return LogoAnimationNotifier();
});

class LogoAnimationNotifier extends Notifier<bool> {
  void startAnimation() {
    Future.delayed(const Duration(milliseconds: 500), () {
      state = true;
    });
  }

  @override
  bool build() {
    return state;
  }
}

import 'package:flutter/material.dart';

import '../theme/theme.dart';

class Loader extends StatelessWidget {
  const Loader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: Palette.buttonColor,
      ),
    );
  }
}

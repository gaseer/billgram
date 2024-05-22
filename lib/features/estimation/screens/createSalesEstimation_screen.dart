import 'package:billgram/core/theme/theme.dart';
import 'package:flutter/material.dart';

class CreateSalesEstimation extends StatelessWidget {
  const CreateSalesEstimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Create Sales Estimation',
          style: Palette.customTextStyle,
        ),
        centerTitle: true,
      ),
    );
  }
}

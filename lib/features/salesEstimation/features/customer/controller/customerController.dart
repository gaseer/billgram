import 'package:billgram/features/salesEstimation/features/customer/repository/customerRepository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/theme/theme.dart';
import '../../../../../core/utilities/custom_snackBar.dart';

class CustomerController extends Notifier<bool> {
  @override
  bool build() {
    return false;
  }

  Future<void> createCustomer({required customerData, required context}) async {
    state = true;
    final res = await ref
        .read(customerRepositoryProvider)
        .createCustomer(customerData: customerData);
    state = false;
    return res.fold(
        (l) => showSnackBar(
            content: l.errMSg, context: context, color: Colors.grey),
        (r) => showSnackBar(
            content: "Customer Created Successfully",
            context: context,
            color: Palette.snackBarSuccessColor));
  }
}

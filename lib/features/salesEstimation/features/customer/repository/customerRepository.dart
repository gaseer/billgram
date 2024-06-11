import 'package:billgram/core/constants/apiConstants/apis_customer/customerApis.dart';
import 'package:billgram/core/error_handling/type_defs.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../../core/error_handling/failure.dart';

final customerRepositoryProvider = StateProvider<CustomerRepository>((ref) {
  return CustomerRepository();
});

class CustomerRepository {
  final dio = Dio();

  FutureVoid createCustomer({required customerData}) async {
    try {
      final response =
          await dio.post(CustomerApis.createCustomer, data: customerData);

      if (response.statusCode == 201) {
        return right(null);
      } else {
        throw "Something went wrong!";
      }
    } catch (e) {
      return left(Failure(errMSg: e.toString()));
    }
  }
}

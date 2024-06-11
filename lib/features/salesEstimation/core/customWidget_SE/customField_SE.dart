import 'package:flutter/material.dart';

class CustomFieldSE extends StatelessWidget {
  final String head;
  final String amount;

  const CustomFieldSE({
    super.key,
    required this.head,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SizedBox(
      height: h * 0.04,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            head,
            style: TextStyle(
              fontFamily: 'Urbanist',
              fontWeight: FontWeight.w400,
              fontSize: w * 0.042,
            ),
          ),
          Text(
            "₹ ${amount}",
            style: TextStyle(
              fontFamily: 'Urbanist',
              fontWeight: FontWeight.w900,
              fontSize: w * 0.042,
            ),
          ),
        ],
      ),
    );
  }
}

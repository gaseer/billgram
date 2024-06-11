import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/navigation_service.dart';
import '../../../../core/theme/theme.dart';

class InvoiceScreenSE extends StatelessWidget {
  InvoiceScreenSE({super.key});

  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      appBar: AppBar(
        title: Text(
          'Invoices',
          style: TextStyle(
              fontSize: w * .05,
              fontWeight: FontWeight.w600,
              fontFamily: 'Urbanist'),
        ),
        centerTitle: false,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: w * 0.036),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: h * 0.06,
                  width: w * 0.76,
                  child: TextFormField(
                    controller: searchController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        CupertinoIcons.search,
                        size: w * 0.05,
                        color: Colors.black54,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(w * 0.03),
                        borderSide: BorderSide(
                            color: Palette.blackColor, width: w * 0.001),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(w * 0.03),
                        borderSide: BorderSide(
                            color: Palette.blackColor, width: w * 0.001),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(w * 0.03),
                        borderSide: BorderSide(
                            color: Palette.blackColor, width: w * 0.001),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(w * 0.03),
                        borderSide: BorderSide(
                            color: Palette.blackColor, width: w * 0.001),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(w * 0.03),
                        borderSide: BorderSide(
                            color: Palette.blackColor, width: w * 0.001),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(w * 0.03),
                        borderSide: BorderSide(
                            color: Palette.blackColor, width: w * 0.001),
                      ),
                      labelText: "Search",
                      labelStyle: TextStyle(
                          fontFamily: 'Urbanist',
                          fontSize: w * 0.036,
                          color: Palette.blackColor),
                    ),
                    style: TextStyle(
                        fontFamily: 'Urbanist',
                        fontSize: w * 0.036,
                        color: Palette.blackColor),
                  ),
                ),
                Container(
                  height: h * 0.06,
                  width: w * 0.13,
                  padding: EdgeInsets.all(w * 0.036),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(w * 0.03),
                    border: Border.all(color: Colors.black, width: w * 0.001),
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/Filter.svg',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: w * .05),
          ListTile(
            title: Text(
              'Invoice No',
              style: Palette.customTextStyle.copyWith(
                  fontSize: w * .035,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              '12 Sep 2023 \nCustomer : Rahul Ramesh',
              style: Palette.customTextStyle
                  .copyWith(color: Colors.black, fontSize: w * .025),
            ),
            leading: CircleAvatar(
              child: SvgPicture.asset('assets/icons/rate.svg'),
            ),
            trailing: Text(
              'Amount \n₹ 23000/-',
              style: Palette.customTextStyle.copyWith(
                  color: Colors.black,
                  fontSize: w * .032,
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }
}

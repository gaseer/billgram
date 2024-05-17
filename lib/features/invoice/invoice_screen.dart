import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/theme/theme.dart';

class InvoiceScreen extends StatelessWidget {
  InvoiceScreen({super.key});
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Palette.backgroundColor,
      appBar: AppBar(
        title: Text(
          'Invoices',
          style: TextStyle(
              fontSize: w * .05,
              fontWeight: FontWeight.w600,
              fontFamily: 'Urbanist'),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: w * .05),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: w * 0.15,
                width: w * 0.7,
                child: TextFormField(
                  controller: searchController,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        CupertinoIcons.search,
                        size: w * 0.07,
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
                      hintText: "Search",
                      hintStyle: TextStyle(
                          fontFamily: 'Urbanist',
                          fontSize: w * 0.038,
                          color: Palette.blackColor)),
                ),
              ),
              Container(
                  height: w * 0.15,
                  width: w * 0.16,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(w * 0.03),
                    border: Border.all(color: Colors.black, width: w * 0.001),
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/slider-vertical.svg',
                    fit: BoxFit.contain,
                    alignment: Alignment.center,
                  )),
            ],
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
    ));
  }
}

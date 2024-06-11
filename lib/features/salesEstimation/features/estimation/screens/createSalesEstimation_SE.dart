import 'package:billgram/core/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../core/customWidget_SE/customDropdown_SE.dart';
import '../../../core/customWidget_SE/customField_SE.dart';

class CreateSalesEstimationSE extends StatefulWidget {
  const CreateSalesEstimationSE({super.key});

  @override
  State<CreateSalesEstimationSE> createState() =>
      _CreateSalesEstimationSEState();
}

class _CreateSalesEstimationSEState extends State<CreateSalesEstimationSE> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Create Sales Estimation',
          style: Palette.customTextStyle,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: w * 0.04),
              child: SizedBox(
                width: w,
                height: h * 0.07,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Invoice No",
                          style: TextStyle(fontSize: w * 0.036),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.pending_actions_sharp,
                              size: w * 0.04,
                            ),
                            SizedBox(width: w * 0.01),
                            Text(
                              "345",
                              style: TextStyle(
                                  fontSize: w * 0.045,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Invoice Date",
                          style: TextStyle(fontSize: w * 0.036),
                        ),
                        Row(
                          children: [
                            Text(
                              "21 Sep 2024",
                              style: TextStyle(
                                  fontSize: w * 0.045,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(width: w * 0.01),
                            Icon(
                              CupertinoIcons.calendar,
                              size: w * 0.04,
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: h * 0.02),
            Container(
              width: w,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: w * 0.04),
                child: Column(
                  children: [
                    SizedBox(height: h * 0.01),
                    CustomDropDownSE(
                      head: "Salesman",
                      items: [],
                      hint: "Select Salesman here",
                      onChanged: (p0) {},
                    ),
                    Divider(
                      color: Colors.black,
                      thickness: w * 0.001,
                    ),
                    CustomDropDownSE(
                      head: "Customer",
                      items: [],
                      hint: "Select Customer here",
                      onChanged: (p0) {},
                    ),
                    Divider(
                      color: Colors.black,
                      thickness: w * 0.001,
                    ),
                    CustomDropDownSE(
                      head: "Gold",
                      items: [],
                      hint: "4579.78",
                      onChanged: (p0) {},
                    ),
                    Divider(
                      color: Colors.black,
                      thickness: w * 0.001,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                        height: h * 0.04,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Settings",
                              style: TextStyle(
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.bold,
                                fontSize: w * 0.045,
                              ),
                            ),
                            Text(
                              "Invoice Type, Rate,... ",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: w * 0.045,
                                color: Colors.black,
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: h * 0.014),
                  ],
                ),
              ),
            ),
            SizedBox(height: h * 0.02),
            Container(
              width: w,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(w * 0.04),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: h * 0.055,
                          width: w * 0.74,
                          decoration: BoxDecoration(
                            color: Palette.backgroundColor,
                            borderRadius: BorderRadius.circular(w * 0.03),
                          ),
                          child: Center(
                            child: Text(
                              "+ Add Item to Cart",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: w * 0.042,
                                color: Colors.black,
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: h * 0.055,
                          width: w * 0.14,
                          decoration: BoxDecoration(
                            color: Palette.backgroundColor,
                            borderRadius: BorderRadius.circular(w * 0.03),
                          ),
                          child: Icon(
                            CupertinoIcons.qrcode,
                            size: w * 0.06,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: h * 0.01),
                    Divider(
                      color: Colors.black,
                      thickness: w * 0.001,
                    ),
                    CustomFieldSE(amount: "45678", head: "Sub Total:"),
                    CustomFieldSE(amount: "654", head: "Tax: (18.00%)"),
                    Divider(
                      color: Colors.black,
                      thickness: w * 0.001,
                    ),
                    CustomFieldSE(amount: "345657", head: "TOTAL:"),
                  ],
                ),
              ),
            ),
            SizedBox(height: h * 0.01),
            Padding(
              padding: EdgeInsets.only(left: w * 0.04),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "ITEMS LIST :",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: w * 0.03,
                    color: Colors.black,
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(height: h * 0.01),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Container(
                    height: h * 0.08,
                    width: w,
                    color: Colors.red,
                  ),
                );
              },
            ),
            SizedBox(height: h * 0.1),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: h * 0.06,
            width: w * 0.36,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(w * 0.03),
              color: Palette.backgroundColor,
              border: Border.all(color: Palette.primaryColor, width: w * 0.003),
            ),
            child: Center(
              child: Text(
                "Share",
                style: TextStyle(
                  fontSize: w * 0.05,
                  color: Palette.primaryColor,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Container(
            height: h * 0.06,
            width: w * 0.53,
            decoration: BoxDecoration(
              color: Palette.primaryColor,
              borderRadius: BorderRadius.circular(w * 0.03),
            ),
            child: Center(
              child: Text(
                "Save",
                style: TextStyle(
                  fontSize: w * 0.05,
                  color: Colors.white,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

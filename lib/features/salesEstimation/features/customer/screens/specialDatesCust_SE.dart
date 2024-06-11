import 'package:billgram/features/salesEstimation/features/customer/screens/addSpecialDate_SE.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/theme/theme.dart';

class SpecialDatesCustomerSE extends StatefulWidget {
  const SpecialDatesCustomerSE({super.key});

  @override
  State<SpecialDatesCustomerSE> createState() => _SpecialDatesCustomerSEState();
}

class _SpecialDatesCustomerSEState extends State<SpecialDatesCustomerSE> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Special Dates',
          style: Palette.customTextStyle.copyWith(fontWeight: FontWeight.w700),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, size: w * 0.06),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: w * 0.05),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: h * 0.02),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const CreateSpecialDatesSE(),
                    ),
                  );
                },
                child: Container(
                  height: h * 0.06,
                  width: w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(w * 0.03),
                    color: Colors.white,
                    border: Border.all(
                        color: Colors.grey.shade300, width: w * 0.001),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(w * 0.03),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          CupertinoIcons.calendar_badge_plus,
                          size: w * 0.05,
                          color: Colors.black,
                        ),
                        SizedBox(width: w * 0.02),
                        Text(
                          "Add Special Date",
                          style: Palette.customTextStyle.copyWith(
                              fontWeight: FontWeight.w800,
                              fontSize: w * 0.045,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: h * 0.03),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: h * 0.013),
                    child: Container(
                      height: h * 0.16,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(w * 0.03),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(w * 0.04),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: w * 0.28,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(w * 0.03),
                                  border: Border.all(
                                      color: Colors.grey, width: w * 0.001)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(height: h * 0.01),
                                  Text(
                                    "September",
                                    style: Palette.customTextStyle.copyWith(
                                        fontWeight: FontWeight.w800,
                                        fontSize: w * 0.05,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    "28",
                                    style: Palette.customTextStyle.copyWith(
                                        fontWeight: FontWeight.w800,
                                        fontSize: w * 0.12,
                                        color: Colors.black),
                                  ),
                                  SizedBox(height: h * 0.01),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: w * 0.5,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Birth Day",
                                    style: Palette.customTextStyle.copyWith(
                                        fontWeight: FontWeight.w800,
                                        fontSize: w * 0.05,
                                        color: Colors.black),
                                  ),
                                  SizedBox(height: h * 0.01),
                                  Text(
                                    "Name : Rahul",
                                    style: Palette.customTextStyle.copyWith(
                                        fontWeight: FontWeight.w500,
                                        fontSize: w * 0.045,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    "Relation : Self",
                                    style: Palette.customTextStyle.copyWith(
                                        fontWeight: FontWeight.w500,
                                        fontSize: w * 0.045,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    "Date : 28 Sep 2002",
                                    style: Palette.customTextStyle.copyWith(
                                        fontWeight: FontWeight.w500,
                                        fontSize: w * 0.045,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

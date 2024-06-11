import 'package:billgram/core/customCommon/customSearch_common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/theme/theme.dart';

class SearchCustomerSE extends StatefulWidget {
  const SearchCustomerSE({super.key});

  @override
  State<SearchCustomerSE> createState() => _SearchCustomerSEState();
}

class _SearchCustomerSEState extends State<SearchCustomerSE> {
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      appBar: AppBar(
        title: Text(
          'Search Customer',
          style: TextStyle(
              fontSize: w * .05,
              fontWeight: FontWeight.w600,
              fontFamily: 'Urbanist'),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: w * 0.036),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: h * 0.02),
              CustomSearchField(
                controller: searchController,
                labelText: "Search Customer...",
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
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(w * 0.03),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(w * 0.04),
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: w * 0.6,
                                      child: Text(
                                        "Rahul A",
                                        style: Palette.customTextStyle.copyWith(
                                            fontWeight: FontWeight.w800,
                                            fontSize: w * 0.05,
                                            color: Colors.black),
                                      ),
                                    ),
                                    Text(
                                      "CR2345Y",
                                      style: Palette.customTextStyle.copyWith(
                                          fontWeight: FontWeight.w600,
                                          fontSize: w * 0.05,
                                          color: Colors.red),
                                    ),
                                  ],
                                ),
                                Text(
                                  "+91 9744 930917",
                                  style: Palette.customTextStyle.copyWith(
                                      fontSize: w * 0.04, color: Colors.black),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: w * 0.6,
                                      child: Text(
                                        "Last time they bargained a bit and argued for a higher price for their old gold",
                                        style: Palette.customTextStyle.copyWith(
                                            fontWeight: FontWeight.w800,
                                            fontSize: w * 0.04,
                                            color: Colors.black),
                                      ),
                                    ),
                                    Text(
                                      "- ₹6000",
                                      style: Palette.customTextStyle.copyWith(
                                          fontWeight: FontWeight.w600,
                                          fontSize: w * 0.04,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                              ],
                            )
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

import 'package:billgram/core/customCommon/CustomFloatingButton.dart';
import 'package:billgram/core/customCommon/customTextField_common.dart';
import 'package:billgram/features/salesEstimation/features/customer/screens/contactDetailsCust_SE.dart';
import 'package:billgram/features/salesEstimation/features/customer/screens/personalDetailsCust_SE.dart';
import 'package:billgram/features/salesEstimation/features/customer/screens/searchCustomerSE.dart';
import 'package:billgram/features/salesEstimation/features/customer/screens/specialDatesCust_SE.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/theme/theme.dart';
import '../../../../../core/customCommon/customDropdown_common.dart';

class AddCustomerSE extends StatefulWidget {
  const AddCustomerSE({super.key});

  @override
  State<AddCustomerSE> createState() => _AddCustomerSEState();
}

class _AddCustomerSEState extends State<AddCustomerSE> {
  final customerCodeController = TextEditingController();
  final customerNameController = TextEditingController();
  final careOfController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final placeController = TextEditingController();
  final landmarkController = TextEditingController();
  final emailController = TextEditingController();
  final panNumberController = TextEditingController();

  String selectedRole = "Choose Customer Type";

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Customer',
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
                      builder: (context) => const SearchCustomerSE(),
                    ),
                  );
                },
                child: Container(
                  height: h * 0.06,
                  width: w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(w * 0.03),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: w * 0.04),
                      Icon(
                        CupertinoIcons.search,
                        size: w * 0.05,
                        color: Colors.black,
                      ),
                      SizedBox(width: w * 0.013),
                      Text(
                        'Search here...',
                        style: Palette.customTextStyle.copyWith(
                            fontWeight: FontWeight.w300,
                            fontSize: w * 0.05,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: h * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        showDragHandle: true,
                        enableDrag: true,
                        isScrollControlled: true,
                        builder: (context) {
                          return Padding(
                            padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Customize Customer Code",
                                  style: Palette.customTextStyle.copyWith(
                                      fontWeight: FontWeight.w900,
                                      fontSize: w * 0.05,
                                      color: Colors.black),
                                ),
                                SizedBox(height: h * 0.03),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: w * 0.04),
                                  child: CustomTextField(
                                    controller: customerCodeController,
                                    labelText: "Customer Code...",
                                    keyboardType: TextInputType.none,
                                  ),
                                ),
                                SizedBox(height: h * 0.01),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: w * 0.04),
                                  child: Container(
                                    height: h * 0.066,
                                    width: w,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(w * 0.03),
                                        color: Palette.primaryColor),
                                    child: Center(
                                      child: Center(
                                        child: Text(
                                          "Customize",
                                          style: Palette.customTextStyle
                                              .copyWith(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: w * 0.05,
                                                  color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: h * 0.06),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Customer Code",
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
                              "DF345T",
                              style: TextStyle(
                                  fontSize: w * 0.045,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Reg Date",
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
                          SizedBox(width: w * 0.013),
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
              SizedBox(height: h * 0.03),
              CustomTextField(
                controller: customerNameController,
                labelText: "Customer Name...",
                keyboardType: TextInputType.none,
              ),
              SizedBox(height: h * 0.02),
              CustomTextField(
                controller: phoneNumberController,
                labelText: "Customer Number...",
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: h * 0.02),
              CustomDropdown(
                items: const [
                  DropdownMenuItem(
                    value: "Choose Customer Type",
                    child: Text("Choose Customer Type"),
                  ),
                  DropdownMenuItem(
                    value: "retailer",
                    child: Text("Retailer"),
                  ),
                  DropdownMenuItem(
                    value: "wholesaler",
                    child: Text("Wholesaler"),
                  ),
                ],
                selectedValue: selectedRole,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedRole = newValue ?? "Choose Customer Type";
                  });
                },
                title: 'Customer Type',
              ),
              SizedBox(height: h * 0.02),
              const SectionBox(
                tileName: "Contact Details",
                tileIcon: Icon(CupertinoIcons.xmark_circle),
                iconColor: Colors.red,
                destinationPage: ContactDetailCustomerSE(),
              ),
              SizedBox(height: h * 0.02),
              const SectionBox(
                tileName: "Personal Details",
                tileIcon: Icon(CupertinoIcons.chevron_right_circle),
                iconColor: Colors.orange,
                destinationPage: PersonalDetailCustomerSE(),
              ),
              SizedBox(height: h * 0.02),
              const SectionBox(
                tileName: "Special Dates",
                tileIcon: Icon(CupertinoIcons.checkmark_circle),
                iconColor: Colors.green,
                destinationPage: SpecialDatesCustomerSE(),
              ),
              SizedBox(height: h * 0.1),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingButton(
        text: 'Create Customer',
        onPressed: () {},
      ),
    );
  }
}

class SectionBox extends StatelessWidget {
  final String tileName;
  final Icon tileIcon;
  final Color iconColor;
  final Widget destinationPage;

  const SectionBox({
    super.key,
    required this.tileName,
    required this.tileIcon,
    required this.iconColor,
    required this.destinationPage,
  });

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => destinationPage,
          ),
        );
      },
      child: Container(
        height: h * 0.06,
        width: w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(w * 0.03),
          border: Border.all(color: Colors.black, width: w * 0.001),
        ),
        child: Padding(
          padding: EdgeInsets.all(w * 0.03),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                tileName,
                style: Palette.customTextStyle.copyWith(
                    fontWeight: FontWeight.w300,
                    fontSize: w * 0.05,
                    color: Colors.black),
              ),
              Icon(
                tileIcon.icon,
                size: w * 0.06,
                color: iconColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}

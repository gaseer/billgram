import 'package:billgram/core/customCommon/customTextField_common.dart';
import 'package:flutter/material.dart';

import '../../../../../core/customCommon/CustomFloatingButton.dart';
import '../../../../../core/theme/theme.dart';

class ContactDetailCustomerSE extends StatefulWidget {
  const ContactDetailCustomerSE({super.key});

  @override
  State<ContactDetailCustomerSE> createState() =>
      _PersonalDetailsCustmerSEState();
}

class _PersonalDetailsCustmerSEState extends State<ContactDetailCustomerSE> {
  final houseNameController = TextEditingController();
  final areaController = TextEditingController();
  final landMarkController = TextEditingController();
  final pinCodeController = TextEditingController();
  final panchayathController = TextEditingController();
  final districtController = TextEditingController();
  final stateController = TextEditingController();
  final countryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Personal Details',
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
              SizedBox(height: h * 0.03),
              CustomTextField(
                controller: houseNameController,
                labelText: "House Name",
                keyboardType: TextInputType.none,
              ),
              SizedBox(height: h * 0.02),
              CustomTextField(
                controller: areaController,
                labelText: "Area",
                keyboardType: TextInputType.none,
              ),
              SizedBox(height: h * 0.02),
              CustomTextField(
                controller: landMarkController,
                labelText: "Landmark",
                keyboardType: TextInputType.none,
              ),
              SizedBox(height: h * 0.02),
              CustomTextField(
                controller: panchayathController,
                labelText: "Panchaayath",
                keyboardType: TextInputType.none,
              ),
              SizedBox(height: h * 0.02),
              CustomTextField(
                controller: districtController,
                labelText: "District",
                keyboardType: TextInputType.none,
              ),
              SizedBox(height: h * 0.02),
              CustomTextField(
                controller: stateController,
                labelText: "State",
                keyboardType: TextInputType.none,
              ),
              SizedBox(height: h * 0.02),
              CustomTextField(
                controller: countryController,
                labelText: "Country",
                keyboardType: TextInputType.none,
              ),
              SizedBox(height: h * 0.02),
              CustomTextField(
                controller: pinCodeController,
                labelText: "Postel Code",
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: h * 0.15)
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingButton(
        text: 'Save',
        onPressed: () {},
      ),
    );
  }
}

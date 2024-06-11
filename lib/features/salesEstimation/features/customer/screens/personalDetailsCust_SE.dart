import 'package:billgram/core/customCommon/customTextField_common.dart';
import 'package:flutter/material.dart';

import '../../../../../core/customCommon/CustomFloatingButton.dart';
import '../../../../../core/customCommon/customDropdown_common.dart';
import '../../../../../core/theme/theme.dart';

class PersonalDetailCustomerSE extends StatefulWidget {
  const PersonalDetailCustomerSE({super.key});

  @override
  State<PersonalDetailCustomerSE> createState() =>
      _PersonalDetailsCustmerSEState();
}

class _PersonalDetailsCustmerSEState extends State<PersonalDetailCustomerSE> {
  String selectedRole = "Choose Gender";
  String selectedReligion = "Choose Religion";
  final emailController = TextEditingController();
  final careOfController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final panCardController = TextEditingController();
  final adhaarController = TextEditingController();
  final gstNumberController = TextEditingController();

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
              SizedBox(height: h * 0.02),
              CustomDropdown(
                items: const [
                  DropdownMenuItem(
                    value: "Choose Gender",
                    child: Text("Choose Gender"),
                  ),
                  DropdownMenuItem(
                    value: "Male",
                    child: Text("Male"),
                  ),
                  DropdownMenuItem(
                    value: "Female",
                    child: Text("Female"),
                  ),
                  DropdownMenuItem(
                    value: "Other",
                    child: Text("Other"),
                  ),
                  DropdownMenuItem(
                    value: "Organization",
                    child: Text("Organization"),
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
              CustomDropdown(
                items: const [
                  DropdownMenuItem(
                    value: "Choose Religion",
                    child: Text("Choose Religion"),
                  ),
                  DropdownMenuItem(
                    value: "Hindu",
                    child: Text("Hindu"),
                  ),
                  DropdownMenuItem(
                    value: "Muslim",
                    child: Text("Muslim"),
                  ),
                  DropdownMenuItem(
                    value: "Christian",
                    child: Text("Christian"),
                  ),
                  DropdownMenuItem(
                    value: "Other",
                    child: Text("other"),
                  ),
                ],
                selectedValue: selectedReligion,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedReligion = newValue ?? "Choose Religion";
                  });
                },
                title: 'Customer Type',
              ),
              SizedBox(height: h * 0.02),
              CustomTextField(
                controller: emailController,
                labelText: "Email Address",
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: h * 0.02),
              CustomTextField(
                controller: careOfController,
                labelText: "Care of Person",
                keyboardType: TextInputType.name,
              ),
              SizedBox(height: h * 0.02),
              CustomTextField(
                controller: adhaarController,
                labelText: "Adhaar Number",
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: h * 0.02),
              CustomTextField(
                controller: panCardController,
                labelText: "Pan Number",
                keyboardType: TextInputType.none,
              ),
              SizedBox(height: h * 0.02),
              CustomTextField(
                controller: gstNumberController,
                labelText: "GST Number",
                keyboardType: TextInputType.none,
              ),
              SizedBox(
                height: h * 0.1,
              )
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

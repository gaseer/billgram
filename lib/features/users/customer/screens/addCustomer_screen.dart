import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/theme.dart';

class AddCustomerPage extends StatelessWidget {
  AddCustomerPage({super.key});

  final customerNameController = TextEditingController();
  final careOfController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final placeController = TextEditingController();
  final landmarkController = TextEditingController();
  final emailController = TextEditingController();
  final panNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final w = mediaQuery.size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Customer',
          style: Palette.customTextStyle.copyWith(fontWeight: FontWeight.w700),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: w * 0.05),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Customer Code \nCR568H',
                    style: Palette.customTextStyle
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                  Spacer(),
                  Text(
                    'Date\n12 March, 2024',
                    style: Palette.customTextStyle
                        .copyWith(fontWeight: FontWeight.w700),
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
              SizedBox(height: 16),
              CustomTextFormField(
                label: 'Customer Name',
                controller: customerNameController,
              ),
              CustomTextFormField(
                label: 'Care of',
                controller: careOfController,
              ),
              CustomTextFormField(
                label: 'Phone Number',
                controller: phoneNumberController,
              ),
              CustomTextFormField(
                label: 'Place',
                controller: placeController,
              ),
              CustomTextFormField(
                label: 'Landmark',
                controller: landmarkController,
              ),
              CustomDropDown(w: w),
              CustomDropDown(w: w),
              CustomDropDown(w: w),
              CustomTextFormField(
                label: 'Email Address',
                controller: emailController,
              ),
              CustomTextFormField(
                label: 'Pan Number',
                controller: panNumberController,
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Submit action
                  },
                  child: Text('Create'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomDropDown extends StatelessWidget {
  const CustomDropDown({
    super.key,
    required this.w,
  });

  final double w;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: w * .15,
      child: DropdownButtonFormField<String>(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        items: [
          DropdownMenuItem(value: 'Area1', child: Text('Area1')),
          DropdownMenuItem(value: 'Area2', child: Text('Area2')),
        ],
        onChanged: (value) {},
        decoration: InputDecoration(
          labelText: 'Area',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  final String label;
  // final IconData icon;
  final TextEditingController controller;

  const CustomTextFormField(
      {Key? key, required this.label, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        height: w * .125,
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(w * 0.03),
                borderSide:
                    BorderSide(color: Palette.blackColor, width: w * 0.001),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(w * 0.03),
                borderSide:
                    BorderSide(color: Palette.blackColor, width: w * 0.001),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(w * 0.03),
                borderSide:
                    BorderSide(color: Palette.blackColor, width: w * 0.001),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(w * 0.03),
                borderSide:
                    BorderSide(color: Palette.blackColor, width: w * 0.001),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(w * 0.03),
                borderSide:
                    BorderSide(color: Palette.blackColor, width: w * 0.001),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(w * 0.03),
                borderSide:
                    BorderSide(color: Palette.blackColor, width: w * 0.001),
              ),
              hintText: label,
              hintStyle: TextStyle(
                  fontFamily: 'Urbanist',
                  fontSize: w * 0.038,
                  color: Palette.blackColor)),
        ),
      ),
    );
  }
}

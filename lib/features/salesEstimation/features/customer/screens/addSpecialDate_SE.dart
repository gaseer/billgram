import 'package:billgram/core/customCommon/customTextField_common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/customCommon/CustomFloatingButton.dart';
import '../../../../../core/customCommon/customDropdown_common.dart';
import '../../../../../core/theme/theme.dart';

class CreateSpecialDatesSE extends StatefulWidget {
  const CreateSpecialDatesSE({super.key});

  @override
  State<CreateSpecialDatesSE> createState() => _AddSpecialDatesState();
}

class _AddSpecialDatesState extends State<CreateSpecialDatesSE> {
  String selectedRelation = "Choose Relation";
  String selectedSpeciality = "Choose Speciality";
  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create Special Date',
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
              CustomTextField(controller: nameController, labelText: "Name..."),
              SizedBox(height: h * 0.02),
              CustomDropdown(
                items: const [
                  DropdownMenuItem(
                    value: "Choose Relation",
                    child: Text("Choose Relation"),
                  ),
                  DropdownMenuItem(
                    value: "Self",
                    child: Text("Self"),
                  ),
                  DropdownMenuItem(
                    value: "Father",
                    child: Text("Father"),
                  ),
                  DropdownMenuItem(
                    value: "Mother",
                    child: Text("Mother"),
                  ),
                  DropdownMenuItem(
                    value: "Bother",
                    child: Text("Bother"),
                  ),
                  DropdownMenuItem(
                    value: "Sister",
                    child: Text("Sister"),
                  ),
                  DropdownMenuItem(
                    value: "Wife",
                    child: Text("Wife"),
                  ),
                  DropdownMenuItem(
                    value: "Daughter",
                    child: Text("Daughter"),
                  ),
                  DropdownMenuItem(
                    value: "Son",
                    child: Text("Son"),
                  ),
                ],
                selectedValue: selectedRelation,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedRelation = newValue ?? "Choose Relation";
                  });
                },
                title: 'Customer Type',
              ),
              SizedBox(height: h * 0.02),
              CustomDropdown(
                items: const [
                  DropdownMenuItem(
                    value: "Choose Speciality",
                    child: Text("Choose Speciality"),
                  ),
                  DropdownMenuItem(
                    value: "Birth Day",
                    child: Text("Birth Day"),
                  ),
                  DropdownMenuItem(
                    value: "Wedding Day",
                    child: Text("Wedding Day"),
                  ),
                  DropdownMenuItem(
                    value: "Engagement",
                    child: Text("Engagement"),
                  ),
                ],
                selectedValue: selectedSpeciality,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedSpeciality = newValue ?? "Choose Speciality";
                  });
                },
                title: 'Customer Type',
              ),
              SizedBox(height: h * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: h * 0.06,
                    width: w * 0.73,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(w * 0.03),
                      border: Border.all(
                          color: Colors.grey.shade800, width: w * 0.001),
                    ),
                    child: Center(
                      child: Text(
                        "28 September 2002",
                        style: Palette.customTextStyle.copyWith(
                            fontWeight: FontWeight.w800,
                            fontSize: w * 0.045,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: h * 0.06,
                      width: w * 0.15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(w * 0.03),
                        border: Border.all(
                            color: Colors.grey.shade800, width: w * 0.001),
                      ),
                      child: Center(
                        child: Icon(
                          CupertinoIcons.calendar_today,
                          size: w * 0.06,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingButton(
        text: 'Save Date',
        onPressed: () {},
      ),
    );
  }
}

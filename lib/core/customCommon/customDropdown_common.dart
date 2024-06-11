import 'package:flutter/material.dart';

import '../theme/theme.dart';

class CustomDropdown extends StatelessWidget {
  final String title;
  final List<DropdownMenuItem<String>> items;
  final String? selectedValue;
  final void Function(String?) onChanged;

  const CustomDropdown(
      {Key? key,
      required this.items,
      required this.selectedValue,
      required this.onChanged,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Container(
      height: h * 0.065,
      decoration: BoxDecoration(
        color: Palette.backgroundColor,
        borderRadius: BorderRadius.circular(w * 0.03),
        border: Border.all(color: Colors.grey),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: w * 0.03),
        child: DropdownButton<String>(
          isExpanded: true,
          padding: const EdgeInsets.symmetric(horizontal: 3),
          hint: Text(
            title,
            style: TextStyle(
              fontFamily: 'Urbanist',
              fontSize: w * 0.04,
              color: Palette.blackColor,
            ),
          ),
          items: items,
          style: TextStyle(
            fontFamily: 'Urbanist',
            fontSize: w * 0.045,
            color: Palette.blackColor,
          ),
          value: selectedValue,
          onChanged: onChanged,
          underline: Container(),
          dropdownColor: Palette.backgroundColor,
        ),
      ),
    );
  }
}

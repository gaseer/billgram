import 'package:flutter/material.dart';

class CustomDropDownSE extends StatelessWidget {
  final String hint;
  final String head;
  final List<DropdownMenuItem<String>> items;
  final Function(String?)? onChanged;

  const CustomDropDownSE({
    super.key,
    required this.hint,
    required this.head,
    required this.items,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SizedBox(
      height: h * 0.04,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            head,
            style: TextStyle(
              fontFamily: 'Urbanist',
              fontWeight: FontWeight.bold,
              fontSize: w * 0.042,
            ),
          ),
          SizedBox(
            width: w * 0.5,
            child: DropdownButton<String>(
              isExpanded: true,
              hint: Text(
                hint,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: w * 0.042,
                  color: Colors.black,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w400,
                ),
              ),
              items: items,
              style: TextStyle(
                overflow: TextOverflow.ellipsis,
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: w * 0.045,
              ),
              icon: Icon(
                Icons.keyboard_arrow_down_sharp,
                size: w * 0.06,
              ),
              underline: Container(),
              dropdownColor: Colors.white,
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}

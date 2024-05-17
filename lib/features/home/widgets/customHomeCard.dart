import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/appTheme_widgets.dart';
import '../../../core/theme/theme.dart';

class CustomHomeCard extends StatelessWidget {
  final String title, subtitle, total, add;
  const CustomHomeCard(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.total,
      required this.add});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(left: w * .05),
      height: h * .11,
      width: w * .52,
      padding: EdgeInsets.all(w * .02).copyWith(left: w * .035, right: w * .05),
      decoration: BoxDecoration(
          color: Palette.backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Palette.customTextStyle.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: w * .04,
                        color: Colors.black),
                  ),
                  Text(
                    subtitle,
                    style: Palette.customTextStyle.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: w * .0275,
                        color: Colors.black),
                  ),
                ],
              ),
              const Icon(CupertinoIcons.list_bullet_below_rectangle)
            ],
          ),
          CustomPaint(
            size: Size(200, 5),
            painter: DottedDivider(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                total,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                add,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.green),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

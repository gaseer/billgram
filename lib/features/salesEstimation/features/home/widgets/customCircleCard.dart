import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/theme/theme.dart';

class CustomCircleCard extends StatelessWidget {
  final String title, iconPath;
  final Widget pageName;

  const CustomCircleCard({
    super.key,
    required this.title,
    required this.w,
    required this.iconPath,
    required this.pageName,
  });

  final double w;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => pageName,
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.only(left: w * .06),
        child: Column(
          children: [
            CircleAvatar(
              maxRadius: w * .085,
              backgroundColor: Colors.white,
              child: SvgPicture.asset(iconPath),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: Palette.customTextStyle
                  .copyWith(color: Colors.black, fontSize: w * .03),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/theme/appTheme_widgets.dart';
import '../../core/theme/theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Palette.backgroundColor,
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
              fontSize: w * .05,
              fontWeight: FontWeight.w600,
              fontFamily: 'Urbanist'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          profileHeaderSection(w),
          Container(
            margin: EdgeInsets.all(w * .05),
            height: w * .5,
            width: w * .9,
            decoration: BoxDecoration(
                // color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(w * .07))),
            child: Image.asset('assets/profileFigm.png'),
          ),
          CustomPaint(
            size: Size(w * 1, 5),
            painter: DottedDivider(),
          ),
          bottomRowTile(
              w: w, title: 'Notifications', icon: CupertinoIcons.bell),
          CustomPaint(
            size: Size(w * 1, 5),
            painter: DottedDivider(),
          ),
          bottomRowTile(w: w, title: 'Settings', icon: CupertinoIcons.settings),
          CustomPaint(
            size: Size(w * 1, 5),
            painter: DottedDivider(),
          ),
          bottomRowTile(
              w: w,
              title: 'Logout',
              icon: CupertinoIcons.arrow_right_arrow_left_square),
          CustomPaint(
            size: Size(w * 1, 5),
            painter: DottedDivider(),
          ),
        ],
      ),
    ));
  }

  Padding bottomRowTile(
      {required double w, required String title, required IconData icon}) {
    return Padding(
      padding: EdgeInsets.only(
          top: w * .03, right: w * .07, left: w * .075, bottom: w * .05),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: w * .065,
            color: Colors.black87,
          ),
          SizedBox(width: w * .03),
          Text(
            title,
            style: Palette.customTextStyle
                .copyWith(fontWeight: FontWeight.bold, color: Colors.black87),
          ),
          const Spacer(),
          Icon(
            CupertinoIcons.right_chevron,
            size: w * .05,
            color: Colors.black54,
          )
        ],
      ),
    );
  }

  Row profileHeaderSection(double w) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: w * .07),
            const Text('ID : 1212', style: Palette.customTextStyle),
            Text('GASEER MOHAMMED',
                style: Palette.customTextStyle
                    .copyWith(fontWeight: FontWeight.w700)),
            const Text('Salesman', style: Palette.customTextStyle),
            Container(
              margin: EdgeInsets.only(top: w * .02),
              height: w * .09,
              width: w * .6,
              decoration: BoxDecoration(
                color: Palette.primaryColor,
                border: Border.all(
                  color: Colors.black,
                  width: .5,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Center(
                child: Text(
                  'Edit Profile',
                  style: TextStyle(
                      fontSize: w * .03,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
        CircleAvatar(
          radius: 35,
          child: Image.asset(
            'assets/icons/staticProfile.png',
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}

import 'package:billgram/core/constants/appConstants.dart';
import 'package:billgram/features/auth/controller/auth_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/appTheme_widgets.dart';
import '../../../../core/theme/theme.dart';

class ProfileScreenSE extends StatelessWidget {
  const ProfileScreenSE({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
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
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            profileHeaderSection(w),
            Container(
              margin: EdgeInsets.all(w * .05),
              padding: EdgeInsets.all(w * .075),
              height: w * .5,
              width: w * .9,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage(AppConstants.profileCard)),
                  // color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(w * .1))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'LEVEL 3',
                        style: Palette.customTextStyle.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: w * .045,
                            color: Colors.white),
                      ),
                      Text(
                        'TOTAL ESTIMATED \n296',
                        style: Palette.customTextStyle.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: w * .032,
                            color: Colors.white),
                      ),
                      Text(
                        'TOTAL SALES \n87',
                        style: Palette.customTextStyle.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: w * .032,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'TARGET \n300',
                        style: Palette.customTextStyle.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: w * .03,
                            color: Colors.white),
                      ),
                      Text(
                        'From \n03/24',
                        style: Palette.customTextStyle.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: w * .03,
                            color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: h * 0.01),
            bottomRowTile(
                w: w, title: 'Notifications', icon: CupertinoIcons.bell),
            Center(
              child: CustomPaint(
                size: Size(w * 0.84, 1),
                painter: DottedDivider(),
              ),
            ),
            bottomRowTile(
                w: w, title: 'Settings', icon: CupertinoIcons.settings),
            Center(
              child: CustomPaint(
                size: Size(w * 0.84, 1),
                painter: DottedDivider(),
              ),
            ),
            bottomRowTile(
                w: w,
                title: 'Privacy Policy',
                icon: Icons.privacy_tip_outlined),
            Center(
              child: CustomPaint(
                size: Size(w * 0.84, 1),
                painter: DottedDivider(),
              ),
            ),
            Consumer(builder: (context, ref, child) {
              return bottomRowTile(
                onTap: () => ref
                    .read(authControllerProvider.notifier)
                    .logout(context: context),
                w: w,
                title: 'Logout',
                icon: Icons.logout_outlined,
              );
            }),
            // Center(
            //   child: CustomPaint(
            //     size: Size(w * 0.84, 1),
            //     painter: DottedDivider(),
            //   ),
            // ),
          ],
        ),
      ),
    ));
  }

  GestureDetector bottomRowTile(
      {required double w,
      required String title,
      required IconData icon,
      void Function()? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(
            top: w * .03, right: w * .07, left: w * .075, bottom: w * .05),
        child: Row(
          children: [
            SizedBox(width: w * 0.01),
            Icon(
              icon,
              size: w * 0.045,
            ),
            SizedBox(width: w * 0.03),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Urbanist',
                fontSize: w * 0.036,
                color: Colors.grey.shade800,
              ),
            ),
            const Spacer(),
            Icon(
              CupertinoIcons.right_chevron,
              size: w * 0.03,
            ),
            SizedBox(width: w * 0.02),
          ],
        ),
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
            SizedBox(height: w * .05),
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
            AppConstants.staticProfile,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}

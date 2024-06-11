import 'package:billgram/core/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/navigation_service.dart';
import 'customer/screens/addCustomer_SE.dart';

class UsersScreenSE extends StatelessWidget {
  UsersScreenSE({super.key});

  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      appBar: AppBar(
        title: Text(
          'Customers',
          style: TextStyle(
              fontSize: w * .05,
              fontWeight: FontWeight.w600,
              fontFamily: 'Urbanist'),
        ),
        actions: [
          GestureDetector(
            onTap: () => NavigationService.navigateToScreen(
                context: context, screen: AddCustomerSE()),
            child: SvgPicture.asset(
              'assets/icons/addCust.svg',
              fit: BoxFit.contain,
              width: w * 0.05,
              alignment: Alignment.center,
            ),
          ),
          SizedBox(width: w * .04)
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: h * .01),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: w * 0.036),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: h * 0.06,
                  width: w * 0.76,
                  child: TextFormField(
                    controller: searchController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        CupertinoIcons.search,
                        size: w * 0.05,
                        color: Colors.black54,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(w * 0.03),
                        borderSide: BorderSide(
                            color: Palette.blackColor, width: w * 0.001),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(w * 0.03),
                        borderSide: BorderSide(
                            color: Palette.blackColor, width: w * 0.001),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(w * 0.03),
                        borderSide: BorderSide(
                            color: Palette.blackColor, width: w * 0.001),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(w * 0.03),
                        borderSide: BorderSide(
                            color: Palette.blackColor, width: w * 0.001),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(w * 0.03),
                        borderSide: BorderSide(
                            color: Palette.blackColor, width: w * 0.001),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(w * 0.03),
                        borderSide: BorderSide(
                            color: Palette.blackColor, width: w * 0.001),
                      ),
                      labelText: "Search",
                      labelStyle: TextStyle(
                          fontFamily: 'Urbanist',
                          fontSize: w * 0.036,
                          color: Palette.blackColor),
                    ),
                    style: TextStyle(
                        fontFamily: 'Urbanist',
                        fontSize: w * 0.036,
                        color: Palette.blackColor),
                  ),
                ),
                Container(
                  height: h * 0.06,
                  width: w * 0.13,
                  padding: EdgeInsets.all(w * 0.036),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(w * 0.03),
                    border: Border.all(color: Colors.black, width: w * 0.001),
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/Filter.svg',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: h * .02),
          ListTile(
            title: Text(
              'Shahul Hakeem',
              style: Palette.customTextStyle.copyWith(
                  fontSize: w * .035,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              '+9302930300',
              style: Palette.customTextStyle
                  .copyWith(color: Colors.black, fontSize: w * .025),
            ),
            leading: CircleAvatar(
              radius: w * 0.05,
              backgroundImage: const AssetImage(
                'assets/icons/staticProfile.png',
              ),
            ),
            trailing: Container(
              height: h * .04,
              width: w * .18,
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
                  'View',
                  style: TextStyle(
                      fontSize: w * .03,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

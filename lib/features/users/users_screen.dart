import 'package:billgram/core/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UsersScreen extends StatelessWidget {
  UsersScreen({super.key});
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
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
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: w * .06,
            child: SvgPicture.asset(
              'assets/icons/addCust.svg',
              fit: BoxFit.contain,
              alignment: Alignment.center,
            ),
          ),
          SizedBox(width: w * .025)
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: w * .05),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: w * 0.15,
                width: w * 0.7,
                child: TextFormField(
                  controller: searchController,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        CupertinoIcons.search,
                        size: w * 0.07,
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
                      hintText: "Search",
                      hintStyle: TextStyle(
                          fontFamily: 'Urbanist',
                          fontSize: w * 0.038,
                          color: Palette.blackColor)),
                ),
              ),
              Container(
                  height: w * 0.15,
                  width: w * 0.16,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(w * 0.03),
                    border: Border.all(color: Colors.black, width: w * 0.001),
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/slider-vertical.svg',
                    fit: BoxFit.contain,
                    alignment: Alignment.center,
                  )),
            ],
          ),
          SizedBox(height: w * .05),
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
              child: Image.asset('assets/icons/staticProfile.png'),
            ),
            trailing: Container(
              height: w * .08,
              width: w * .2,
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
    ));
  }
}

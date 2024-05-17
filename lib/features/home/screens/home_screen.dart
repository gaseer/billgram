import 'package:billgram/core/navigation_service.dart';
import 'package:billgram/features/users/customer/screens/addCustomer_screen.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

import '../../../core/theme/theme.dart';
import '../widgets/customCircleCard.dart';
import '../widgets/customHomeCard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Palette.primaryColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: w * .08),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: w * .05),
                Text(
                  'Welcome,\nRahul Ramesh',
                  style: TextStyle(
                      fontFamily: 'Urbanist',
                      fontSize: w * .045,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                const Spacer(),
                CircleAvatar(
                  backgroundColor: Palette.backgroundColor,
                  radius: w * .06,
                  child: SvgPicture.asset(
                    'assets/icons/Group.svg',
                    fit: BoxFit.contain,
                    alignment: Alignment.center,
                  ),
                ),
                SizedBox(width: w * .05),
              ],
            ),
            SizedBox(
              height: w * .03,
            ),
            customCardSection(),
            SizedBox(
              height: w * .03,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Color(0xFFF3F3F3),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: w * .05, top: w * .025, bottom: w * .025),
                      child: Text(
                        'Add Quick',
                        style: Palette.customTextStyle.copyWith(
                            color: Colors.black, fontWeight: FontWeight.w700),
                      ),
                    ),
                    addQuickSection(w, context),
                    Padding(
                      padding: EdgeInsets.only(
                        left: w * .05,
                        top: w * .1,
                      ),
                      child: Text(
                        'Target 9676k',
                        style: Palette.customTextStyle.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Divider(
                      thickness: .5,
                      color: Colors.grey,
                      endIndent: w * .05,
                      indent: w * .05,
                    ),
                    Container(
                      height: w * 0.4,
                      // color: Colors.white,
                      child: LineChart(
                        LineChartData(
                          gridData: FlGridData(show: false),
                          titlesData: FlTitlesData(show: false),
                          borderData: FlBorderData(show: false),
                          lineBarsData: [
                            LineChartBarData(
                              isCurved: true,
                              color: Colors.indigo,
                              barWidth: 2,
                              isStrokeCapRound: true,
                              dotData: FlDotData(show: false),
                              belowBarData: BarAreaData(show: false),
                              spots: [
                                FlSpot(0, 1),
                                FlSpot(1, 1.5),
                                FlSpot(2, 1.4),
                                FlSpot(3, 3.4),
                                FlSpot(4, 2),
                                FlSpot(5, 2.2),
                                FlSpot(6, 1.8),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: .5,
                      height: 20,
                      color: Colors.grey,
                      endIndent: w * .05,
                      indent: w * .05,
                    ),
                    featureSection(w)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Row addQuickSection(double w, BuildContext context) {
    return Row(
      children: [
        // InkWell(
        //   onTap: NavigationService.navigateToScreen(
        //       context: context, screen: matAddCustomerPage()),
        //   child: CustomCircleCard(
        //       title: 'Create\nCustomers',
        //       w: w,
        //       iconPath: 'assets/icons/addCust.svg'),
        // ),
        CustomCircleCard(
          title: 'View\nScheme',
          w: w,
          iconPath: 'assets/icons/saleman.svg',
        ),
        CustomCircleCard(
          title: 'View\nStock',
          w: w,
          iconPath: 'assets/icons/stock.svg',
        ),
        CustomCircleCard(
          title: 'View\nRates',
          w: w,
          iconPath: 'assets/icons/rate.svg',
        ),
      ],
    );
  }

  Row featureSection(double w) {
    return Row(
      children: [
        CustomCircleCard(title: 'new', w: w, iconPath: 'assets/icons/card.svg'),
        CustomCircleCard(
          title: 'product',
          w: w,
          iconPath: 'assets/icons/product.svg',
        ),
        CustomCircleCard(
          title: 'Report',
          w: w,
          iconPath: 'assets/icons/report.svg',
        ),
        CustomCircleCard(
          title: 'new',
          w: w,
          iconPath: 'assets/icons/rate.svg',
        ),
      ],
    );
  }

  SingleChildScrollView customCardSection() {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CustomHomeCard(
            title: 'Estimations ',
            subtitle: 'This Week',
            add: '+32',
            total: '2118',
          ),
          CustomHomeCard(
            title: 'Billed Items ',
            subtitle: 'This Week',
            add: '+32',
            total: '347',
          ),
          CustomHomeCard(
            title: 'Total Items ',
            subtitle: 'This Week',
            add: '+32',
            total: '56',
          ),
          CustomHomeCard(
            title: 'Pending Items ',
            subtitle: 'This Week',
            add: '+32',
            total: '65464',
          )
        ],
      ),
    );
  }
}

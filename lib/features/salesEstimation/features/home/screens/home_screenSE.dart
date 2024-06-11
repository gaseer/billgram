import 'package:billgram/core/navigation_service.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

import '../../../../../core/theme/theme.dart';
import '../../estimation/screens/createSalesEstimation_SE.dart';
import '../../users/customer/screens/addCustomer_SE.dart';
import '../widgets/customCircleCard.dart';
import '../widgets/customHomeCard.dart';

class HomeScreenSE extends StatelessWidget {
  const HomeScreenSE({super.key});

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
            SizedBox(height: h * .03),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: w * .05),
                RichText(
                  text: TextSpan(
                    text: 'Welcome,\n',
                    style: TextStyle(
                        fontFamily: 'Urbanist',
                        fontSize: w * .036,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Rahul Ramesh',
                        style: TextStyle(
                            fontFamily: 'Urbanist',
                            fontSize: w * .045,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ],
                  ),
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
            SizedBox(height: h * .015),
            customCardSection(),
            SizedBox(height: h * .02),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Color(0xFFF3F3F3),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30))),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: h * .02),
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
                      SizedBox(
                        height: h * 0.2,
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
        InkWell(
          onTap: () => NavigationService.navigateToScreen(
              context: context, screen: AddCustomerSE()),
          child: CustomCircleCard(
            title: 'Create\nCustomers',
            w: w,
            iconPath: 'assets/icons/addCust.svg',
            pageName: AddCustomerSE(),
          ),
        ),
        CustomCircleCard(
          title: 'View\nScheme',
          w: w,
          iconPath: 'assets/icons/saleman.svg',
          pageName: CreateSalesEstimationSE(),
        ),
        CustomCircleCard(
          title: 'View\nStock',
          w: w,
          iconPath: 'assets/icons/stock.svg',
          pageName: CreateSalesEstimationSE(),
        ),
        CustomCircleCard(
          title: 'View\nRates',
          w: w,
          iconPath: 'assets/icons/rate.svg',
          pageName: CreateSalesEstimationSE(),
        ),
      ],
    );
  }

  Row featureSection(double w) {
    return Row(
      children: [
        CustomCircleCard(
          title: 'new',
          w: w,
          iconPath: 'assets/icons/card.svg',
          pageName: CreateSalesEstimationSE(),
        ),
        CustomCircleCard(
          title: 'product',
          w: w,
          iconPath: 'assets/icons/product.svg',
          pageName: CreateSalesEstimationSE(),
        ),
        CustomCircleCard(
          title: 'Report',
          w: w,
          iconPath: 'assets/icons/report.svg',
          pageName: CreateSalesEstimationSE(),
        ),
        CustomCircleCard(
          title: 'new',
          w: w,
          iconPath: 'assets/icons/rate.svg',
          pageName: CreateSalesEstimationSE(),
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
          ),
          SizedBox(width: 20)
        ],
      ),
    );
  }
}

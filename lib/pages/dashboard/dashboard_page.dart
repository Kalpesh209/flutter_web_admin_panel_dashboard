import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_web_admin_dashboard/common/app_colors.dart';
import 'package:flutter_web_admin_dashboard/common/app_responsive.dart';


import 'widget/bottom_widget.dart';
import 'widget/download_card_widget.dart';
import 'widget/my_card_widget.dart';
import 'widget/send_money_widget.dart';
import 'widget/statistic_widget.dart';
import 'widget/time_spend_widget.dart';
import 'widget/trafiic_source_widget.dart';
import 'widget/transaction_widget.dart';

/*
Title:DashboardPage 
Purpose:DashboardPage
Created By:Kalpesh Khandla
Created Date:20 Feb 2022
*/

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                TrafficSourceWidget(),
                                SizedBox(
                                  height: 20,
                                ),
                                TimeSpendWidget(),
                                if (AppResponsive.isMobile(context)) ...{
                                  SizedBox(
                                    height: 20,
                                  ),
                                  StatisticWidget(),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  SendMoneyWidget(),
                                }
                              ],
                            ),
                          ),
                        ),
                        if (!AppResponsive.isMobile(context))
                          Expanded(
                            flex: 2,
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                children: [
                                  StatisticWidget(),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  SendMoneyWidget(),
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                    BottomWidget(),
                    if (AppResponsive.isMobile(context)) ...{
                      TransactionWidget(),
                      SizedBox(
                        height: 20,
                      ),
                      MyCardWidget(),
                      SizedBox(
                        height: 20,
                      ),
                      DownloadCardWidget(),
                    }
                  ],
                ),
              ),
            ),
            if (!AppResponsive.isMobile(context))
              Expanded(
                child: Container(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      MyCardWidget(),
                      SizedBox(
                        height: 20,
                      ),
                      TransactionWidget(),
                      SizedBox(
                        height: 20,
                      ),
                      DownloadCardWidget(),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

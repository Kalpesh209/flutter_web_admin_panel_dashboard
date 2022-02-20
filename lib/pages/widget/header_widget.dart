import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_admin_dashboard/common/app_assets.dart';
import 'package:flutter_web_admin_dashboard/common/app_colors.dart';
import 'package:flutter_web_admin_dashboard/common/app_responsive.dart';
import 'package:flutter_web_admin_dashboard/controllers/menu_controller.dart';

import 'package:provider/provider.dart';

import 'chart/line_chart.dart';


/*
Title:HeaderWidget 
Purpose:HeaderWidget
Created By:Kalpesh Khandla
Created Date:20 Feb 2022
*/

class HeaderWidget extends StatefulWidget {
  @override
  _HeaderWidgetState createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (!AppResponsive.isDesktop(context))
            IconButton(
              icon: Icon(
                Icons.menu,
                color: AppColors.white,
              ),
              onPressed: Provider.of<MenuController>(context, listen: false)
                  .controlMenu,
            ),
          logoWidget(),
          if (!AppResponsive.isMobile(context))
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                bitcoinWidget(),
                SizedBox(
                  width: 20,
                ),
                searchWidget(),
              ],
            ),
          notificationThemeProfileIcon(),
        ],
      ),
    );
  }

  Widget notificationThemeProfileIcon() {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (MediaQuery.of(context).size.width > 1180) ...{
            roundedIcon(icon: Icons.nightlight_round),
            SizedBox(
              width: 20,
            ),
            roundedIcon(
                icon: Icons.notifications,
                color: Color(0xff33b6e0),
                isNewNotification: true),
            SizedBox(
              width: 20,
            ),
          },
          Stack(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Colors.pink,
                      Colors.blue,
                    ],
                  ),
                ),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(10),
                child: Image.asset(
                  AppAssets.apple,
                  height: 20,
                ),
              ),
              Positioned(
                bottom: 5,
                right: 5,
                child: Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.bitcoinBgColor,
                  ),
                  child: Icon(
                    Icons.add_circle_outlined,
                    color: AppColors.white,
                    size: 10,
                  ),
                ),
              )
            ],
          ),
          if (!AppResponsive.isMobile(context)) ...{
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: AppColors.txtGry,
              size: 15,
            ),
            SizedBox(
              width: 20,
            ),
          },
          if (MediaQuery.of(context).size.width > 1180) ...{
            SizedBox(
              width: 20,
            ),
            roundedIcon(icon: Icons.account_balance_wallet),
            SizedBox(
              width: 20,
            ),
            Text(
              "Balance",
              style: TextStyle(color: AppColors.txtGry),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "\$ 56000.00",
              style: TextStyle(color: AppColors.white),
            ),
          },
          if (!AppResponsive.isMobile(context)) ...{
            SizedBox(
              width: 20,
            ),
            roundedIcon(icon: Icons.highlight_remove_rounded),
          }
        ],
      ),
    );
  }

  Widget roundedIcon(
      {IconData? icon, Color? color, bool isNewNotification = false}) {
    return Stack(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: AppColors.txtGry,
            ),
          ),
          child: Icon(
            icon,
            color: color ?? AppColors.txtGry,
            size: 20,
          ),
        ),
        if (isNewNotification)
          Positioned(
              right: 2,
              top: 2,
              child: Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                  color: color ?? Color(0xff33b6e0),
                  shape: BoxShape.circle,
                ),
              ))
      ],
    );
  }

  Widget bitcoinWidget() {
    return Container(
      child: Row(
        children: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.bitcoinBgColor,
            ),
            padding: EdgeInsets.all(5),
            child: Image.asset(
              AppAssets.bitcoin,
              color: AppColors.white,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            "Bitcoin",
            style: TextStyle(
              color: AppColors.white,
              fontSize: 14,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          SizedBox(
            height: 50,
            width: 80,
            child: AppLineChart(
              barColor: AppColors.bitcoinBgColor.withOpacity(0.7),
              spots: [
                FlSpot(1, 2.4),
                FlSpot(3, 1.5),
                FlSpot(5, 1.4),
                FlSpot(7, 2.4),
                FlSpot(10, 2),
                FlSpot(12, 2.2),
                FlSpot(13, 2.8),
              ],
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            "+3.05%",
            style: TextStyle(
              color: AppColors.white,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget searchWidget() {
    return Container(
      width: 200,
      child: TextFormField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Search Here ...",
            hintStyle: TextStyle(
              color: AppColors.txtGry,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
            suffixIcon: Icon(
              Icons.search,
              color: AppColors.txtGry,
              size: 18,
            )),
      ),
    );
  }

  Widget logoWidget() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (!AppResponsive.isMobile(context))...{
          Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.interComeBgColor,
                  AppColors.slackBgColor,
                ],
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
        },
        Text(
          "Dashboard",
          style: TextStyle(color: AppColors.white),
        )
      ],
    );
  }
}

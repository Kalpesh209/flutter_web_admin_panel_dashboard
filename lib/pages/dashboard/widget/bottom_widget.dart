import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_admin_dashboard/common/app_colors.dart';
import 'package:flutter_web_admin_dashboard/common/app_responsive.dart';
import 'package:flutter_web_admin_dashboard/pages/widget/chart/line_chart.dart';

import 'package:percent_indicator/circular_percent_indicator.dart';

/*
Title:BottomWidget 
Purpose:BottomWidget
Created By:Kalpesh Khandla
Created Date:20 Feb 2022
*/

class BottomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: (!AppResponsive.isMobile(context))
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xff19253f), width: 2),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff19315d),
                        Color(0xff19253f),
                      ],
                    ),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.all(20),
                        child: CircularPercentIndicator(
                          radius: 130.0,
                          lineWidth: 8.0,
                          percent: 0.87,
                          center: CircularPercentIndicator(
                            radius: 70.0,
                            lineWidth: 8.0,
                            percent: 0.50,
                            circularStrokeCap: CircularStrokeCap.round,
                            backgroundColor: Color(0xff435273),
                            progressColor: Color(0xff4aeadc),
                          ),
                          circularStrokeCap: CircularStrokeCap.round,
                          backgroundColor: Color(0xff435273),
                          progressColor: Color(0xff4aeadc),
                        ),
                      ),
                      Positioned(
                        child: Text(
                          "87%",
                          style: TextStyle(
                            color: AppColors.white,
                            // fontSize: 16,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Text(
                          "50%",
                          style: TextStyle(
                            color: AppColors.white,
                            // fontSize: 16,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xff19253f), width: 2),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xff19315d),
                          Color(0xff19253f),
                        ],
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /// graph
                        Container(
                          height: 150,
                          width: 100,
                          child: BarChart(
                            mainBarData(),
                            // swapAnimationDuration: animDuration,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),

                        /// List
                        Expanded(
                          child: Column(
                            children: [
                              _listItem(
                                title: "Listing",
                                hours: "15",
                                color: Colors.pink,
                                graphColor: Colors.pink,
                              ),
                              _listItem(
                                title: "Writing",
                                hours: "18",
                                color: Colors.blue,
                                graphColor: Colors.blue,
                              ),
                              _listItem(
                                title: "Grammar",
                                hours: "16",
                                color: AppColors.yellow,
                                graphColor: AppColors.yellow,
                              ),
                              _listItem(
                                title: "Vocobulary",
                                hours: "12",
                                color: AppColors.slackBgColor,
                                graphColor: AppColors.slackBgColor,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          : Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0xff19253f), width: 2),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff19315d),
                    Color(0xff19253f),
                  ],
                ),
              ),
              child: (!AppResponsive.isMobile(context))
                  ? Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /// graph
                        Container(
                          height: 150,
                          width: 100,
                          child: BarChart(
                            mainBarData(),
                            // swapAnimationDuration: animDuration,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),

                        /// List
                        Expanded(
                          child: _textGraphValute(),
                        )
                      ],
                    )
                  : Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /// graph
                        Container(
                          height: 150,
                          width: 100,
                          child: BarChart(
                            mainBarData(),
                            // swapAnimationDuration: animDuration,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        /// List
                        _textGraphValute()
                      ],
                    ),
            ),
    );
  }

  Widget _textGraphValute() {
    return Column(
      children: [
        _listItem(
          title: "Listing",
          hours: "15",
          color: Colors.pink,
          graphColor: Colors.pink,
        ),
        _listItem(
          title: "Writing",
          hours: "18",
          color: Colors.blue,
          graphColor: Colors.blue,
        ),
        _listItem(
          title: "Grammar",
          hours: "16",
          color: AppColors.yellow,
          graphColor: AppColors.yellow,
        ),
        _listItem(
          title: "Vocobulary",
          hours: "12",
          color: AppColors.slackBgColor,
          graphColor: AppColors.slackBgColor,
        ),
      ],
    );
  }

  BarChartData mainBarData() {
    return BarChartData(
      alignment: BarChartAlignment.center,
      barTouchData: BarTouchData(
        enabled: false,
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: false,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTitles: (value) {
            return "";
          },
        //  getTextStyles: ,
          // ignore: prefer_const_constructors
          // getTextStyles: (value) =>  TextStyle(
          //   color: Color(
          //     0xff939393,
          //   ),
          //   fontSize: 10,
          // ),
          margin: 0,
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      groupsSpace: 4,
      barGroups: getData(),
    );
  }

  List<BarChartGroupData> getData() {
    return [
      BarChartGroupData(
        x: 0,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              y: 3,
              width: 10,
              rodStackItems: [
                BarChartRodStackItem(0, 3, Colors.pink),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
              y: 8,
              width: 10,
              rodStackItems: [
                BarChartRodStackItem(0, 8, Colors.blue),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
              y: 4,
              width: 10,
              rodStackItems: [
                BarChartRodStackItem(0, 4, AppColors.yellow),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
              y: 9,
              width: 10,
              rodStackItems: [
                BarChartRodStackItem(0, 9, AppColors.slackBgColor),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
    ];
  }

  Widget _listItem({
    Color? color,
    Color? graphColor,
    String? title,
    String? hours,
  }) {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        TableRow(children: [
          Row(
            children: [
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Flexible(
                child: Text(
                  "$title",
                  style: TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
              ),
            ],
          ),
          Center(
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                    color: AppColors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
                children: [
                  TextSpan(text: "$hours "),
                  TextSpan(
                    text: "hours",
                    style: TextStyle(
                      color: AppColors.txtGry,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50,
            width: 80,
            child: AppLineChart(
              barColor: graphColor!.withOpacity(0.7),
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
        ]),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_web_admin_dashboard/common/app_assets.dart';
import 'package:flutter_web_admin_dashboard/common/app_colors.dart';


/*
Title:TransactionWidget 
Purpose:TransactionWidget
Created By:Kalpesh Khandla
Created Date:20 Feb 2022
*/

class TransactionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Text(
                  "Transaction",
                  style: TextStyle(color: AppColors.white, fontSize: 18),
                ),
                Spacer(),
                Text(
                  "Recent",
                  style: TextStyle(color: AppColors.white),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.txtGry,
                  size: 20,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: AppColors.txtGry,
              ),
            ),
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                itemWidget(
                    bgColor: Color(0xfff4268a),
                    icon: AppAssets.dribble,
                    name: "Dribble Pro",
                    amount: "60.00"),
                itemWidget(
                    bgColor: Colors.black,
                    icon: AppAssets.apple,
                    name: "Apple Pro Pass",
                    amount: "60.00"),
                itemWidget(
                    bgColor: Color(0xff3376f9),
                    icon: AppAssets.facebook,
                    name: "Facebook Ads",
                    amount: "60.00"),
                itemWidget(
                    bgColor: Color(0xff30ba58),
                    icon: AppAssets.spotify,
                    name: "Spotify Susbs",
                    amount: "60.00"),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget itemWidget({
    Color? bgColor,
    String? icon,
    String? name,
    String? amount,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: bgColor,
            ),
            padding: EdgeInsets.all(10),
            child: Image.asset(
              icon!,
              color: AppColors.white,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$name",
                style: TextStyle(color: AppColors.white),
              ),
              Text(
                "Dec 26, 2021",
                style: TextStyle(color: AppColors.txtGry, fontSize: 12),
              ),
            ],
          )),
          Text(
            "\$$amount",
            style: TextStyle(color: AppColors.white),
          ),
        ],
      ),
    );
  }
}

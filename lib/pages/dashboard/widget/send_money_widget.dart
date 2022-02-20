import 'package:flutter/material.dart';
import 'package:flutter_web_admin_dashboard/common/app_assets.dart';
import 'package:flutter_web_admin_dashboard/common/app_colors.dart';
import 'package:flutter_web_admin_dashboard/common/common.dart';



/*
Title:SendMoneyWidget 
Purpose:SendMoneyWidget
Created By:Kalpesh Khandla
Created Date:20 Feb 2022
*/

class SendMoneyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: appContainerDecoration,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Send Money",
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
          SizedBox(
            height: 20,
          ),
          itemWidget(name: "Ravi Patel", amount: "480", icon: AppAssets.user1),
          itemWidget(
              name: "Nikunj Limbani", amount: "350", icon: AppAssets.user2),
          itemWidget(
              name: "Jinkal Nakrani", amount: "780", icon: AppAssets.user3),
          itemWidget(
              name: "Jinkal Nakrani", amount: "780", icon: AppAssets.user4),
        ],
      ),
    );
  }

  Widget itemWidget({
    String? icon,
    String? name,
    String? amount,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(1000),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.jiraBgColor,
              ),
              // padding: EdgeInsets.all(10),
              child: Image.asset(
                icon!,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Text(
              "$name",
              style: TextStyle(color: AppColors.white),
            ),
          ),
          Text(
            "\$$amount",
            style: TextStyle(color: AppColors.white),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: Color(0xfffffff),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.arrow_right_alt,
              color: AppColors.white,
            ),
          )
        ],
      ),
    );
  }
}

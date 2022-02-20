import 'package:flutter/material.dart';
import 'package:flutter_web_admin_dashboard/common/app_colors.dart';



/*
Title:DownloadCardWidget 
Purpose:DownloadCardWidget
Created By:Kalpesh Khandla
Created Date:20 Feb 2022
*/

class DownloadCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xff6010ed),
      ),
      height: 250,
      padding: EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deciphering\nMarketing Lingo For\nSmall Business\nOwners",
            style: TextStyle(
                color: AppColors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
          Spacer(),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color(0xff02c3fe)),
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Text(
              "Download",
              style: TextStyle(
                color: AppColors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}

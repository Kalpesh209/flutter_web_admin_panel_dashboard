import 'package:flutter/material.dart';
import 'package:flutter_web_admin_dashboard/common/app_colors.dart';


/*
Title:SettingButton 
Purpose:SettingButton
Created By:Kalpesh Khandla
Created Date:20 Feb 2022
*/


class SettingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      decoration: BoxDecoration(
        color: AppColors.txtGry,
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.settings,
      ),
    );
  }
}

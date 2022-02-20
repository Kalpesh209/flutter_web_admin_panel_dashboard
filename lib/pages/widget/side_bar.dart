import 'package:flutter/material.dart';
import 'package:flutter_web_admin_dashboard/common/app_assets.dart';
import 'package:flutter_web_admin_dashboard/common/app_colors.dart';


/*
Title:SideBar 
Purpose:SideBar
Created By:Kalpesh Khandla
Created Date:20 Feb 2022
*/

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        color: AppColors.primary,
        padding: EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: ListView(
          shrinkWrap: true,
          // mainAxisSize: MainAxisSize.min,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            menuItem(
              title: "Dashboard",
              logo: AppAssets.dashboard,
              isActive: true,
            ),
            menuItem(
              title: "Team Chat",
              logo: AppAssets.chat,
              notification: 2,
            ),
            menuItem(
              title: "Calender",
              logo: AppAssets.calendar,
            ),
            menuItem(
              title: "Documents",
              logo: AppAssets.file,
            ),
            menuItem(
              title: "Store",
              logo: AppAssets.cart,
            ),
            menuItem(
              title: "Mail",
              logo: AppAssets.email,
            ),
            menuItem(
              title: "Products",
              logo: AppAssets.products,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Integrations".toUpperCase(),
              style: TextStyle(
                color: AppColors.txtGry,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            integrationMenuItem(
              title: "Jira Integrations",
              logo: AppAssets.jira,
              bgColor: AppColors.jiraBgColor,
            ),
            integrationMenuItem(
              title: "Slack Integrations",
              logo: AppAssets.slack,
              bgColor: AppColors.slackBgColor,
            ),
            integrationMenuItem(
              title: "Intercom Integrations",
              logo: AppAssets.intercom,
              bgColor: AppColors.interComeBgColor,
            ),
            integrationMenuItem(
              title: "Bitbucket Integrations",
              logo: AppAssets.gitlab,
              bgColor: AppColors.bitBucketBgColor,
            ),
            SizedBox(
              height: 40,
            ),
            menuItem(
              title: "Settings",
              logo: AppAssets.dashboard,
            ),
            menuItem(
              title: "Help and knowledge Base",
              logo: AppAssets.dashboard,
            ),
            menuItem(
              title: "Log Out",
              logo: AppAssets.dashboard,
            ),
          ],
        ),
      ),
    );
  }

  Widget integrationMenuItem({String? title, String? logo, Color? bgColor}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: bgColor,
            ),
            padding: EdgeInsets.all(10),
            child: Image.asset(
              logo!,
              height: 28,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Flexible(
            child: Text(
              title!,
              style: TextStyle(
                color: AppColors.white,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget menuItem(
      {String? title, String? logo, int? notification, bool isActive = false}) {
    return ListTile(
      title: Text(
        title!,
        style: TextStyle(
          color: isActive ? AppColors.white : AppColors.txtGry,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: Image.asset(
        logo!,
        height: 18,
        color: isActive ? AppColors.menuSelected : AppColors.txtGry,
      ),
      trailing: notification != null
          ? Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: notification != null
                    ? Color(0xff33b6e0)
                    : AppColors.transparent,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "$notification",
                  style: TextStyle(
                    color: notification != null
                        ? AppColors.white
                        : AppColors.transparent,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          : null,
    );
  }
}

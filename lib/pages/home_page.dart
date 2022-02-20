import 'package:flutter/material.dart';
import 'package:flutter_web_admin_dashboard/common/app_colors.dart';
import 'package:flutter_web_admin_dashboard/common/app_responsive.dart';
import 'package:flutter_web_admin_dashboard/controllers/menu_controller.dart';

import 'package:provider/provider.dart';

import 'dashboard/dashboard_page.dart';
import 'widget/header_widget.dart';
import 'widget/side_bar.dart';

/*
Title:HomePage
Purpose:HomePage
Created By:Kalpesh Khandla
Created Date:
*/

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBar(),
      key: Provider.of<MenuController>(context, listen: false).scaffoldKey,
      backgroundColor: AppColors.primary,
      body: Container(
        child: SafeArea(
          child: Column(
            children: [
              /// Header
              HeaderWidget(),
              Divider(
                thickness: 0.5,
                color: AppColors.txtGry,
              ),
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    /// Side Navigation Menu
                    if (AppResponsive.isDesktop(context))
                      Expanded(
                        child: SideBar(),
                      ),

                    /// Main Body Part
                    Expanded(
                      flex: 4,
                      child: DashboardPage(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

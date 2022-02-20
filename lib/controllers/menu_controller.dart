import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


/*
Title:Entry Point of a Web Application
Purpose:Entry Point of a Web Application
Created By:Kalpesh Khandla
Created Date:20 Feb 2022
*/


class MenuController extends ChangeNotifier {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get scaffoldKey => _globalKey;

  void controlMenu() {
    if (!_globalKey.currentState!.isDrawerOpen) {
      _globalKey.currentState?.openDrawer();
    }
  }
}

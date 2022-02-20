import 'package:flutter/cupertino.dart';

BoxDecoration appContainerDecoration = BoxDecoration(
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
);

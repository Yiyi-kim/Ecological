import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/game.dart';
import 'package:flutter_app/info.dart';
import 'package:flutter_app/read.dart';
import 'package:get/get.dart';

import 'mystateful_widget.dart';

//Main is the starting point when we open the app

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Itim',
      ),
      title: 'Recycle',
      home: MyStatefulWidget(),
    );
  }
}



import 'package:DemoFlutter/home_main.dart';
import 'package:DemoFlutter/webview_lib_one.dart';
import 'package:DemoFlutter/webview_lib_three.dart';
import 'package:DemoFlutter/webview_lib_two.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    home: HomeMain(),
    initialRoute: "/",
    routes: {
      "/first": (context) => WebviewLibOne(),
      "/second": (context) => WebviewLibTwo(),
      "/three": (context) => WebviewLibThree()
    },
  ));
}

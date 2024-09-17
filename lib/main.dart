import 'package:flutter/material.dart';
import 'package:flutter_pr5/ui/page/android_page.dart';
import 'package:flutter_pr5/ui/page/ios_page.dart';
import 'package:flutter_pr5/ui/page/macOs_page.dart';
import 'package:flutter_pr5/ui/page/windows_page.dart';
import 'package:flutter_pr5/ui/page/web_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  //if(Platform.isIos) {
    //platformColorScheme = ColorScheme.fromSeed(seedColor: Colors.deepPurple);
  //}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: IosPage(title: 'Flutter Demo Home Page'),
    );
  }
}

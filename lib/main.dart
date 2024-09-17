import 'package:flutter/material.dart';
import 'package:flutter_pr5/ui/page/android_page.dart';
import 'package:flutter_pr5/ui/page/macOs_page.dart';
import 'package:flutter_pr5/ui/page/windows_page.dart';
import 'package:flutter_pr5/ui/page/web_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // platform variables

  //if(Platform.isIos) {
    //platformColorScheme = ColorScheme.fromSeed(seedColor: Colors.deepPurple);
  //}
  // WEB https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPW5w9vfdpfAsCQ1Fr5bwDAi96yDBTzTMQJA&s
  // macOs https://icons.veryicon.com/png/o/miscellaneous/apple-series/macos-2.png
  // windows https://cdn-icons-png.flaticon.com/512/906/906308.png
  // ios https://img.icons8.com/?size=512&id=20821&format=png
  // android https://cdn-icons-png.flaticon.com/512/174/174836.png

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MacOsPage(title: 'Flutter Demo Home Page'),
    );
  }
}

import 'package:flutter/foundation.dart';
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

  

  @override
  Widget build(BuildContext context) {
    Widget _currentPage;

    if (kIsWeb) {
      _currentPage = WebPage();
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      _currentPage = AndroidPage();
    } else if (defaultTargetPlatform == TargetPlatform.windows) {
      _currentPage = WindowsPage();
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      _currentPage = IosPage();
    } else if (defaultTargetPlatform == TargetPlatform.macOS) {
      _currentPage = MacOsPage();
    } else {
      _currentPage = Text('Unsupported platform');
    }

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: _currentPage,
    );
  }
}

import 'dart:io';

import 'package:flutter/material.dart';

class MacOsPage extends StatefulWidget {
  MacOsPage({super.key,});

  @override
  State<MacOsPage> createState() => _MacOsPageState();
}

class _MacOsPageState extends State<MacOsPage> {
  String _textBar = 'MacOS Page';
  Color _themeColor = Color.fromARGB(255, 160, 8, 211);
  String _urlIcon = 'https://upload.wikimedia.org/wikipedia/commons/c/c9/Finder_Icon_macOS_Big_Sur.png';
  String _text = 'Hello macOs user';

  Future<String> _getFilePath() async {
    final directory = 'Путь к текущей директории: ${Directory.current.path}';
    return directory;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _themeColor,
        title: Text(_textBar),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 128,
              width: 128,
              child: Image.network(_urlIcon),
            ),
            SizedBox(height: 25,),

            Text(
              _text,
            ),
            FutureBuilder<String>(
              future: _getFilePath(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Ошибка: ${snapshot.error}');
                } else {
                  return Text('MacOS ${snapshot.data}');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

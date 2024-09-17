import 'dart:io';

import 'package:flutter/material.dart';

class WindowsPage extends StatefulWidget {
  WindowsPage({super.key,});

  @override
  State<WindowsPage> createState() => _WindowsPageState();
}

class _WindowsPageState extends State<WindowsPage> {
  String _textBar = 'Windows Page';
  Color _themeColor = Color.fromARGB(255, 8, 140, 211);
  String _urlIcon = 'https://cdn-icons-png.flaticon.com/512/906/906308.png';
  String _text = 'Hello windows user';

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
                  return Text('Windows ${snapshot.data}');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

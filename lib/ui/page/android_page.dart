import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class AndroidPage extends StatefulWidget {
  AndroidPage({super.key,});

  @override
  State<AndroidPage> createState() => _AndroidPageState();
}

class _AndroidPageState extends State<AndroidPage> {
  String _textBar = 'Android Page';
  Color _themeColor = Color.fromARGB(255, 35, 206, 32);
  String _urlIcon = 'https://cdn-icons-png.flaticon.com/512/174/174836.png';
  String _text = 'Hello android user';

  Future<String> _getFilePath() async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
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
              future: _getFilePath(), // Асинхронная функция
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator(); // Показываем индикатор загрузки
                } else if (snapshot.hasError) {
                  return Text('Ошибка: ${snapshot.error}');
                } else if (snapshot.hasData) {
                  return Text('Файловая директория: ${snapshot.data}');
                } else {
                  return Text('Не удалось получить путь к директории');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';


class IosPage extends StatefulWidget {
  IosPage({super.key,});

  @override
  State<IosPage> createState() => _IosPageState();
}

class _IosPageState extends State<IosPage> {
  String _textBar = 'IOS Page';
  Color _themeColor = Color.fromARGB(255, 0, 0, 0);
  String _urlIcon = 'https://img.icons8.com/?size=512&id=20821&format=png';
  String _text = 'Hello ios user';

  Future<String> _getFilePath() async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _themeColor,
        title: Text(_textBar,style: TextStyle(color: Colors.white),),
        
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

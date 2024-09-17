import 'package:flutter/material.dart';

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
          ],
        ),
      ),
    );
  }
}

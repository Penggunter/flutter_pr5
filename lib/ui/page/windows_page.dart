import 'package:flutter/material.dart';

class WindowsPage extends StatefulWidget {
  WindowsPage({super.key, required this.title});

  final String title;

  @override
  State<WindowsPage> createState() => _WindowsPageState();
}

class _WindowsPageState extends State<WindowsPage> {
  String _textBar = 'Windows Page';
  Color _themeColor = Color.fromARGB(255, 8, 140, 211);
  String _urlIcon = 'https://cdn-icons-png.flaticon.com/512/906/906308.png';
  String _text = 'Hello windows user';

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

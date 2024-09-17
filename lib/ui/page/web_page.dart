import 'package:flutter/material.dart';

class WebPage extends StatefulWidget {
  WebPage({super.key,});

  @override
  State<WebPage> createState() => _WebPageState();
}

class _WebPageState extends State<WebPage> {
  String _textBar = 'WEB Page';
  Color _themeColor = Color.fromARGB(255, 240, 212, 1);
  String _urlIcon = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPW5w9vfdpfAsCQ1Fr5bwDAi96yDBTzTMQJA&s';
  String _text = 'Hello web user';

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
            Text(
               'Файловая система недоступна для веб-платформы',
            )
          ],
        ),
      ),
    );
  }
}

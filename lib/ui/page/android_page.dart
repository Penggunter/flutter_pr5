import 'package:flutter/material.dart';

class AndroidPage extends StatefulWidget {
  AndroidPage({super.key, required this.title});

  final String title;

  @override
  State<AndroidPage> createState() => _AndroidPageState();
}

class _AndroidPageState extends State<AndroidPage> {
  String _text = 'Android Page';
  Color _androidColor = Color.fromARGB(255, 35, 206, 32);
  String _urlIcon = 'https://cdn-icons-png.flaticon.com/512/174/174836.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _androidColor,
        title: Text(_text),
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
              'Hello android user',
            ),
          ],
        ),
      ),
    );
  }
}

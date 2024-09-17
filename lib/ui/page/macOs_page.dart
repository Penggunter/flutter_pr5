import 'package:flutter/material.dart';

class MacOsPage extends StatefulWidget {
  MacOsPage({super.key, required this.title});

  final String title;

  @override
  State<MacOsPage> createState() => _MacOsPageState();
}

class _MacOsPageState extends State<MacOsPage> {
  String _textBar = 'MacOS Page';
  Color _themeColor = Color.fromARGB(255, 160, 8, 211);
  String _urlIcon = 'https://upload.wikimedia.org/wikipedia/commons/c/c9/Finder_Icon_macOS_Big_Sur.png';
  String _text = 'Hello macOs user';

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

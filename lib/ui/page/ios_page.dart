import 'package:flutter/material.dart';

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
          ],
        ),
      ),
    );
  }
}

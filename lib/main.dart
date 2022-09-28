import 'package:flutter/material.dart';
import './control.dart';
import './display.dart';
import './newmessage.dart';

void main() => runApp(TextApp());

class TextApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextAppState();
  }
}

class _TextAppState extends State<TextApp> {
  final _displayedText = [
    {
      'displayText': "lorem ipsum dotum",
    },
    {
      'displayText': "ipsum lorem dotum",
    },
    {
      'displayText': "dotum lorem ismpunm",
    },
  ];

  var _textIndex = 0;

  void _resetText() {
    setState(() {
      _textIndex = 0;
    });
  }

  void _newText() {
    setState(() {
      _textIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
          backgroundColor: Colors.red,
        ),
        body: _textIndex < _displayedText.length
            ? Display(
                messages: _displayedText,
                messageIndex: _textIndex,
                nextMessage: _newText,
              )
            : Reset(_resetText),
      ),
    );
  }
}

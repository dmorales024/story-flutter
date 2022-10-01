import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
//just to see if it works
import './control.dart';
import './newmessage.dart';

class Display extends StatelessWidget {
  final List<Map<String, String>> messages;
  final int messageIndex;
  final VoidCallback nextMessage;

  Display({
    required this.messages,
    required this.messageIndex,
    required this.nextMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Control(
          messages[messageIndex]['displayText'] as String,
        ),
        FlatButton(
          child: Text('next message'),
          textColor: Colors.blueAccent,
          onPressed: nextMessage,
        ),
      ],
    );
  }
}

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Control extends StatelessWidget {
  final String messageText;
  Control(this.messageText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            messageText,
            style: TextStyle(fontSize: 30, color: Colors.greenAccent),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

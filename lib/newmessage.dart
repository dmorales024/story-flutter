import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Reset extends StatelessWidget {
  final VoidCallback resetHandler;

  Reset(this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        FlatButton(
          child: Text('Restart Quiz'),
          textColor: Colors.blue,
          onPressed: resetHandler,
        ),
      ]),
    );
  }
}

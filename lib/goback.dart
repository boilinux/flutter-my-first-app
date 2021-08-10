import 'package:flutter/material.dart';

class Goback extends StatelessWidget {
  final VoidCallback resetIndex;
  Goback(this.resetIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text('Reset'),
        onPressed: resetIndex,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import './goback.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetIndex;

  Result(this.totalScore, this.resetIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text(
              'Total score is ' + totalScore.toString(),
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Goback(resetIndex),
          ],
        ),
      ),
      margin: EdgeInsets.all(10),
    );
  }
}

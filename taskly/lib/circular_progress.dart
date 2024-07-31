import 'package:flutter/material.dart';

class CircularProgress extends StatelessWidget {
  const CircularProgress(
      {super.key,
      required this.strokeWidth,
      required this.boxHeight,
      required this.boxWidth});
  final double boxHeight;
  final double boxWidth;
  final double strokeWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: boxHeight,
              width: boxWidth,
              child: CircularProgressIndicator(
                strokeWidth: strokeWidth,
                //TODO replace value with total task completed
                value: 8 / 10,
                color: Colors.blue,
                strokeCap: StrokeCap.round,
              ),
            ),
            const Text(
              '80%',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        )
      ],
    );
  }
}

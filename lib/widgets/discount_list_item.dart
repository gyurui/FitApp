import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer(
      { required this.title, required this.points,  required this.color});
  final double title;
  final double points;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        color: Colors.amber[100],
        height: 100,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Libri",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "70%",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            LinearProgressIndicator(
              value: 0.7,
              semanticsLabel: 'Linear progress indicator',
            ),
          ],
        ));
  }
}
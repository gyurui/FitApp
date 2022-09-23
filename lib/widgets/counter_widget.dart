import 'package:fitstory/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({super.key, required this.text, required this.percent});

  final String text;
  final double percent;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Card(
        color: FitColors.fitDirtyBlue,
        child: Container(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(text,textScaleFactor: 2.8, style: TextStyle(color: FitColors.fitWhite)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircularPercentIndicator(
                  radius: 30,
                  lineWidth: 5,
                  percent: percent,
                  center: Text( (percent * 100).toInt().toString() + "%", style: TextStyle(color: FitColors.fitWhite),),
                  progressColor: FitColors.fitCoral,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:fitstory/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TotalPoints extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: FitColors.fitBackground,
              width: 2
          ),
          borderRadius: BorderRadius.circular(12)
      ),
      child: Card(
        color: FitColors.fitBackground,
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("865", textScaleFactor: 3),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.star,
                  size: 48,
                  color: Colors.amber,
                )
              ],
            ),
            Text("4x heti lépés rekord -> 100", textScaleFactor: 1.5,),
            Text("10000 Lépés teljesítve -> 100", textScaleFactor: 1.5,),
          ],
        ),
      ),
    );
  }
}

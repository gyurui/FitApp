import 'package:fitstory/colors.dart';
import 'package:fitstory/dashboard/discount_screen.dart';
import 'package:fitstory/dashboard/invite_screen.dart';
import 'package:fitstory/widgets/counter_widget.dart';
import 'package:fitstory/widgets/feature_widget.dart';
import 'package:fitstory/widgets/total_points_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonalStatisticsScreen extends StatelessWidget {
  const PersonalStatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PersonalStatisticsWidget();
  }
}

class PersonalStatisticsWidget extends StatefulWidget {
  @override
  _PersonalStatisticsState createState() => _PersonalStatisticsState();
}

class _PersonalStatisticsState extends State<PersonalStatisticsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 80,
            ),
            TotalPoints(),
            CounterWidget(
              text: "Lépések:",
              percent: 0.2,
            ),
            const CounterWidget(
              text: "Költések:",
              percent: 0.2,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InviteScreen()));
              },
              child: Card(
                color: FitColors.fitBackground,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [Text("Csapat építés", textScaleFactor: 1.5,), Icon(Icons.arrow_right)],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DiscountScreen()));
              },
              child: Card(
                color: FitColors.fitBackground,

                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Text("Kedvezmények", textScaleFactor: 1.5,), Icon(Icons.arrow_right),],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
              },
              child: Card(
                color: FitColors.fitBackground,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [Text("Kihívások", textScaleFactor: 1.5,), Icon(Icons.arrow_right)],
                ),
              ),
            ),
            Card(
              child:
              SizedBox(
                height: 150,
                width: 300,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Banki termék reklám",textScaleFactor: 2,),
                    Icon(Icons.monetization_on)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

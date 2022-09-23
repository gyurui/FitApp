import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeatureWidget extends StatelessWidget {
  const FeatureWidget({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Text("todo") ));
      },
      child: Card(
        child: Row(
          children: [Text(text), Icon(Icons.arrow_right)],
        ),
      ),
    );
  }
}

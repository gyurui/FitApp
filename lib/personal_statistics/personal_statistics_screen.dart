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
    return Scaffold(body: Text("data"));
  }
}

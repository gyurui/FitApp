import 'package:flutter/cupertino.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FormScreenWidget();
  }
}

class FormScreenWidget extends StatefulWidget {
  @override
  _FormScreenWidgetState createState() => _FormScreenWidgetState();
}

class _FormScreenWidgetState extends State<FormScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Text("Fitness");
  }
}

import 'package:flutter/cupertino.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const FormScreenWidget();
  }
}

class FormScreenWidget extends StatefulWidget {
  const FormScreenWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FormScreenWidgetState createState() => _FormScreenWidgetState();
}

class _FormScreenWidgetState extends State<FormScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return const Text("Fitness");
  }
}

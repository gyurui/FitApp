import 'package:flutter/material.dart';

class InviteScreen extends StatelessWidget {
  const InviteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const InviteScreenWidget();
  }
}

class InviteScreenWidget extends StatefulWidget {
  const InviteScreenWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InviteScreenWidgetState createState() => _InviteScreenWidgetState();
}

class _InviteScreenWidgetState extends State<InviteScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Invite"),
      ),
      body: Card(child: Column(
        children: [
          Image.network('https://media.baamboozle.com/uploads/images/305639/1623876505_45620.png'),
          Card(child: ListTile(title: new Center(child: new Text("Invite friends or coworkers to achive new goals togheter",
            style: new TextStyle(fontSize: 15.0),)),)),
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () { },
            child: Text('Send Invite'),
          )
        ]
      )),
    );
  }
}

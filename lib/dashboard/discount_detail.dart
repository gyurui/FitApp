import 'package:fitstory/colors.dart';
import 'package:flutter/material.dart';

class DiscountDetailScreen extends StatelessWidget {
  const DiscountDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DiscountDetailScreenWidget();
  }
}

class DiscountDetailScreenWidget extends StatefulWidget {
  const DiscountDetailScreenWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DiscountDetailScreenWidgetState createState() => _DiscountDetailScreenWidgetState();
}

class _DiscountDetailScreenWidgetState extends State<DiscountDetailScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: FitColors.fitDirtyBlue,
          title: const Text("Discount Detail"),
        ),
        body: Card(child: Column(
          children: [
            Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/Decathlon_Logo.png/1598px-Decathlon_Logo.png'),

            ListTile(
              title: Text("Dechatlon - 20%"),
              subtitle: Text("You can get 20% off with this qr code"),
              leading: CircleAvatar(backgroundImage: NetworkImage("https://play-lh.googleusercontent.com/BusFOiNnTOOLd7mf_gg_qgeA4NFTiPWIvJWc-6cjMEPeJo-ZM6J9K2VNx-_HAsBTXw")),
            ),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () { },
              child: Text('Claim this discount'),
            )

          ],
        )),
    );
  }
}

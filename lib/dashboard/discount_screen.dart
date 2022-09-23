import 'package:fitstory/colors.dart';
import 'package:fitstory/dashboard/discount_detail.dart';
import 'package:flutter/material.dart';

class DiscountScreen extends StatelessWidget {
  const DiscountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DiscountScreenWidget();
  }
}

class DiscountScreenWidget extends StatefulWidget {
  const DiscountScreenWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DiscountScreenWidgetState createState() => _DiscountScreenWidgetState();
}

class _DiscountScreenWidgetState extends State<DiscountScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: FitColors.fitDirtyBlue,
        title: const Text("Discounts"),
      ),
      body: ListView(padding: const EdgeInsets.all(20), children: <Widget>[
        Card(child: ListTile(title: new Center(child: new Text("You have 70 ⭐️ points",
          style: new TextStyle(
              fontWeight: FontWeight.w500, fontSize: 25.0),)),)),
        Card(child: Column(
          children: [
            ListTile(
                title: Text("Dechatlon - 20%"),
                subtitle: Text("150 ⭐️ points"),
                leading: CircleAvatar(backgroundImage: NetworkImage("https://play-lh.googleusercontent.com/BusFOiNnTOOLd7mf_gg_qgeA4NFTiPWIvJWc-6cjMEPeJo-ZM6J9K2VNx-_HAsBTXw")),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DiscountDetailScreen())
                  );
                },
            ),
            LinearProgressIndicator(
              value: 70 / 150,
              semanticsLabel: 'Linear progress indicator',
              minHeight: 10,
            ),
          ],
        )),
        Card(child: Column(
          children: [
            ListTile(
              title: Text("Libri - 10%"),
              subtitle: Text("100 ⭐️ points"),
              leading: CircleAvatar(backgroundImage: NetworkImage("https://yt3.ggpht.com/ytc/AMLnZu81bClWCbvRpYM-u7VnTUPwliGnI2KUNGfW4I3l=s900-c-k-c0x00ffffff-no-rj")),
            ),
            LinearProgressIndicator(
              value: 70 / 100,
              semanticsLabel: 'Linear progress indicator',
              minHeight: 10,
            ),
          ],
        )),
        Card(child: Column(
          children: [
            ListTile(
              title: Text("Cinema - 20%"),
              subtitle: Text("50 ⭐ ️points - UNLOCKED"),
              leading: CircleAvatar(backgroundImage: NetworkImage("https://www.kindpng.com/picc/m/222-2229153_icon-film-film-icon-hd-png-download.png")),
              trailing: Icon(Icons.star),
            ),
            LinearProgressIndicator(
              value: 70 / 50,
              semanticsLabel: 'Linear progress indicator',
              minHeight: 10,
            ),
          ],
        )),
    ])
    );
  }
}

import 'package:fitstory/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomRadio extends StatelessWidget {
  RadioButtonItem _item;

  CustomRadio(this._item);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: _item.isSelected ? FitColors.fitDirtyBlue : FitColors.fitBackground,
        child: Container(
          height: 80,
          width: 80,
          alignment: Alignment.center,
          margin: new EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                _item.icon,
                color: _item.isSelected ? FitColors.fitAlmostWhite : FitColors.fitDirtyBlue,
                size: 40,
              ),
              SizedBox(height: 10),
              Text(
                _item.name,
                style: TextStyle(
                    color: _item.isSelected ? FitColors.fitAlmostWhite : FitColors.fitDirtyBlue),
              )
            ],
          ),
        ));
  }
}

class RadioButtonItem {
  String name;
  IconData icon;
  bool isSelected;

  RadioButtonItem(this.name, this.icon, this.isSelected);
}



import 'package:flutter/material.dart';

class Item {
  late Image icon;
  late String name, icondir, desc;

  Item(this.name, this.icondir, this.desc) {
    icon = Image.asset(
      icondir,
      scale: 1.5,
    );
  }
}

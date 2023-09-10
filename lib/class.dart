import 'package:flutter/material.dart';

class Class {
  late Image icon;
  late String name, icondir, desc;

  Class(this.name, this.icondir, this.desc) {
    icon = Image.asset(
      icondir,
      scale: 1.8,
    );
  }
}

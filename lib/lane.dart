import 'package:flutter/material.dart';


class Lane{
  late Image icon;
  late String name,icondir,desc;

  Lane(this.name, this.icondir, this.desc){
   icon = Image.asset(icondir);
  }


}


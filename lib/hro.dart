

import 'package:flutter/material.dart';

class Hro{
  static int idCounter = 0;
  late int id;
  late String name, profileDir;
  late Image profile;

  //stat




  Hro (this.name, this.profileDir){
    idCounter++;
    id = idCounter;
    profile = Image.asset(profileDir);
  }


}
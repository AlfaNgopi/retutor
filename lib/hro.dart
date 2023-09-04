import 'package:flutter/material.dart';
import 'package:retutor/asset.dart';

import 'class.dart';
import 'lane.dart';

class Hro {
  static int idCounter = 0;
  late int id;
  late String name, profileDir;
  late Image profile;
  late Lane lane;
  late Class clas;

  //stat

  Hro(this.name, this.profileDir, String laning, String classing) {
    idCounter++;
    id = idCounter;
    profile = Image.asset(profileDir);
    // 1: EXP
    // 2 : GOLD
    // 3 : MID
    // 4 : JUNGLE
    // 5 : ROAM
    switch (laning) {
      case "exp":
        lane = Asset.lanes[0];
        break;
      case "gold":
        lane = Asset.lanes[1];
        break;
      case "mid":
        lane = Asset.lanes[2];
        break;
      case "jungle":
        lane = Asset.lanes[3];
        break;
      case "roam":
        lane = Asset.lanes[4];
    }
    switch (classing) {
      case "fighter":
        clas = Asset.classes[0];
        break;
      case "mm":
        clas = Asset.classes[1];
        break;
      case "mage":
        clas = Asset.classes[2];
        break;
      case "assasin":
        clas = Asset.classes[3];
        break;
      case "tank":
        clas = Asset.classes[4];
        break;
      case "support":
        clas = Asset.classes[5];
    }
  }
}

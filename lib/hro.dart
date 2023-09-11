import 'package:flutter/material.dart';
import 'package:retutor/asset.dart';
import 'package:retutor/item.dart';

import 'class.dart';
import 'lane.dart';

class Hro {
  static int idCounter = 0;
  late int id;
  late String name, profileDir;
  late Image profile;
  late Lane lane;
  late Class clas;
  late int bp, diamond, ticket;

  late String speciality;

  //bulids
  List<Item> build = [];

  late String strBuild;

  //stat
  late double hp,
      mana,
      hpRegen,
      manaRegen,
      phyAtk,
      mgcAtk,
      phyDef,
      mgcDef,
      atkSpeed,
      movSpeed,
      atkSpeedRatio;

  //ini constructor
  Hro(
      this.name,
      this.profileDir,
      this.bp,
      this.diamond,
      this.ticket,
      String classing,
      String laning,
      this.speciality,
      dynamic hp,
      dynamic mana,
      dynamic hpRegen,
      dynamic manaRegen,
      dynamic phyAtk,
      dynamic mgcAtk,
      dynamic phyDef,
      dynamic mgcDef,
      dynamic atkSpeed,
      dynamic movSpeed,
      dynamic atkSpeedRatio,
      String strBuildd) {
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
      case "jugle":
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

    //merubah stat dari dinamic ga jelas ke double
    this.hp = checkDouble(hp);
    this.mana = checkDouble(mana);
    this.hpRegen = checkDouble(hpRegen);
    this.manaRegen = checkDouble(manaRegen);
    this.phyAtk = checkDouble(phyAtk);
    this.mgcAtk = checkDouble(mgcAtk);
    this.phyDef = checkDouble(phyDef);
    this.mgcDef = checkDouble(mgcDef);
    this.atkSpeed = checkDouble(atkSpeed);
    this.movSpeed = checkDouble(movSpeed);
    this.atkSpeedRatio = checkDouble(atkSpeedRatio);

    List<String> result = strBuildd.split(',');
    int i = 0;
    for (String sss in result) {
      i += 1;
      if (i > 6) {
        break;
      }
      print(sss);
      build.add(Asset.items.firstWhere((item) => item.name == sss));
    }
  }
  double checkDouble(dynamic value) {
    if (value is double) return value;
    if (value is int) return value.toDouble();
    return 0;
  }
}

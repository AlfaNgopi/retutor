import 'package:csv/csv.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'class.dart';
import 'hro.dart';
import 'lane.dart';

class Asset {
  static List<Hro> heroes = [];
  static List<Lane> lanes = [];
  static List<Class> classes = [];
  static Image iconBp = Image.asset("asset/bp.png");
  static Image iconDiamond = Image.asset("asset/diamond.png");
  static Image iconTicket = Image.asset("asset/ticket.png");

  Asset() {
    loadClasses();
    loadLanes();
    loadHeroes();
  }

  void loadHeroes() async {
    List<List<dynamic>> _data = [];

    final rawData = await rootBundle.loadString("asset/heroes.csv");
    var listData = const CsvToListConverter().convert(rawData);

    _data = listData;
    for (List<dynamic> p in _data) {
      if (p[0] != 'no') {
        heroes.add(Hro(
            p[1],
            p[2],
            p[3],
            p[4],
            p[5],
            p[6],
            p[7],
            p[8],
            p[9],
            p[10],
            p[11],
            p[12],
            p[13],
            p[14],
            p[15],
            p[16],
            p[17],
            p[18],
            p[19]));
        print("Loaded ${heroes.last.name}");
      }
    }
  }

  void loadLanes() async {
    List<List<dynamic>> _data = [];
    final rawData = await rootBundle.loadString("asset/lanes.csv");
    var listData = const CsvToListConverter().convert(rawData);

    _data = listData;
    for (List<dynamic> p in _data) {
      if (p[0] != 'name') {
        lanes.add(Lane(p[0], p[1], p[2]));
        print("Loaded ${lanes.last.name}");
      }
    }
  }

  void loadClasses() async {
    List<List<dynamic>> _data = [];
    final rawData = await rootBundle.loadString("asset/classes.csv");
    var listData = const CsvToListConverter().convert(rawData);

    _data = listData;
    for (List<dynamic> p in _data) {
      if (p[0] != 'name') {
        classes.add(Class(p[0], p[1], p[2]));
        print("Loaded ${classes.last.name}");
      }
    }
  }
}

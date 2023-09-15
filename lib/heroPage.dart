import 'package:flutter/material.dart';

import 'asset.dart';
import 'hro.dart';

class HeroPage extends StatelessWidget {
  final Hro hro;
  final Color cardsColor = Colors.blue;

  final Color backgroundColor = const Color.fromRGBO(0, 119, 182, 100);

  HeroPage(this.hro, {super.key}) {
    hro.strongAgainst = hro.setHeroesList(hro.strStrongAgainst);
  }

  @override
  Widget build(BuildContext context) {
    //this variable
    final double width = MediaQuery.of(context).size.width;
    const double sideCardsMargin = 10;
    final double cardsWidth = width - sideCardsMargin * 2;
    const EdgeInsetsGeometry cardsMargin =
        EdgeInsets.symmetric(vertical: 10, horizontal: 10);

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text(hro.name),
      ),
      body: ListView(children: [
        //hro profile
        Container(
          color: cardsColor,
          margin: cardsMargin,
          child: Column(
            children: [
              Text(hro.name, textScaleFactor: 3),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // color: Colors.yellow,
                      width: cardsWidth / 2,
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Image.asset(hro.profileDir, scale: 0.6),
                    ),

                    //class lane name
                    Container(
                      // color: Colors.green,
                      width: cardsWidth / 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            //mainAxisAlignment: MainAxisAlignment.start,

                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Row(
                                  children: [
                                    hro.lane.icon,
                                    Text(hro.lane.name)
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Row(
                                  children: [
                                    hro.clas.icon,
                                    Text(hro.clas.name),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Row(
                                  children: [
                                    Text(hro.speciality),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                //color: Colors.white12,
                child: Row(
                  children: [
                    Container(
                      //color: Colors.white,
                      width: cardsWidth / 3,
                      child: Row(
                        children: [
                          Asset.iconBp,
                          Text(hro.bp.toString()),
                        ],
                      ),
                    ),
                    Container(
                      //color: Colors.red,
                      width: cardsWidth / 3,
                      child: Row(
                        children: [
                          Asset.iconDiamond,
                          Text(hro.diamond.toString()),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: cardsWidth / 3,
                      child: Row(
                        children: [
                          Asset.iconTicket,
                          Text(hro.ticket.toString()),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),

        // stats
        Container(
          color: cardsColor,
          margin: cardsMargin,
          child: Column(
            children: [
              const Text("Stats", textScaleFactor: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.blue,
                    width: cardsWidth / 2,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("HP"),
                        Text("Mana"),
                        Text("HP Regen"),
                        Text("Mana Regen"),
                        Text("Physical Attack"),
                        Text("Magical Attack"),
                        Text("Physical Defense"),
                        Text("Magical Defense"),
                        Text("Attack Speed"),
                        Text("Movement Speed"),
                        Text("Attack Speed Ratio"),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: cardsWidth / 2,
                    child: Column(
                      children: [
                        Text(hro.hp.toString()),
                        Text(hro.mana.toString()),
                        Text(hro.hpRegen.toString()),
                        Text(hro.manaRegen.toString()),
                        Text(hro.phyAtk.toString()),
                        Text(hro.mgcAtk.toString()),
                        Text(hro.phyDef.toString()),
                        Text(hro.mgcDef.toString()),
                        Text(hro.atkSpeed.toString()),
                        Text(hro.movSpeed.toString()),
                        Text(hro.atkSpeedRatio.toString()),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        //Laning status
        Container(
          color: cardsColor,
          margin: cardsMargin,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Container(
                      color:
                          hro.lane.name == "EXP" ? Colors.yellow : cardsColor,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Asset.lanes[0].icon,
                      ),
                    ),
                    Container(
                      color:
                          hro.lane.name == "GOLD" ? Colors.yellow : cardsColor,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Asset.lanes[1].icon,
                      ),
                    ),
                    Container(
                      color:
                          hro.lane.name == "MID" ? Colors.yellow : cardsColor,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Asset.lanes[2].icon,
                      ),
                    ),
                    Container(
                      color: hro.lane.name == "JUNGLE"
                          ? Colors.yellow
                          : cardsColor,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Asset.lanes[3].icon,
                      ),
                    ),
                    Container(
                      color:
                          hro.lane.name == "ROAM" ? Colors.yellow : cardsColor,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Asset.lanes[4].icon,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(hro.lane.desc),
              ),
            ],
          ),
        ),

        // Class status
        Container(
          color: cardsColor,
          margin: cardsMargin,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Container(
                      color: hro.clas.name == "FIGHTER"
                          ? Colors.yellow
                          : cardsColor,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Asset.classes[0].icon,
                      ),
                    ),
                    Container(
                      color: hro.clas.name == "MARKSMAN"
                          ? Colors.yellow
                          : cardsColor,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Asset.classes[1].icon,
                      ),
                    ),
                    Container(
                      color:
                          hro.clas.name == "MAGE" ? Colors.yellow : cardsColor,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Asset.classes[2].icon,
                      ),
                    ),
                    Container(
                      color: hro.clas.name == "ASSASIN"
                          ? Colors.yellow
                          : cardsColor,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Asset.classes[3].icon,
                      ),
                    ),
                    Container(
                      color:
                          hro.clas.name == "TANK" ? Colors.yellow : cardsColor,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Asset.classes[4].icon,
                      ),
                    ),
                    Container(
                      color: hro.clas.name == "SUPPORT"
                          ? Colors.yellow
                          : cardsColor,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Asset.classes[5].icon,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(hro.clas.desc),
              ),
            ],
          ),
        ),

        //Rekomendasi Build
        Container(
          margin: cardsMargin,
          color: cardsColor,
          child: Column(
            children: [
              const Text("Rekomendasi Build", textScaleFactor: 1.5),
              SizedBox(
                width: cardsWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    hro.build[0].icon,
                    hro.build[1].icon,
                    hro.build[2].icon,
                    hro.build[3].icon,
                    hro.build[4].icon,
                    hro.build[5].icon,
                  ],
                ),
              ),
            ],
          ),
        ),

        //Strong against
        Container(
          margin: cardsMargin,
          color: cardsColor,
          child: Column(
            children: [
              const Text("Strong Against", textScaleFactor: 1.5),
              SizedBox(
                width: cardsWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          AssetImage(hro.strongAgainst[0].profileDir),
                    ),
                    CircleAvatar(
                      backgroundImage:
                          AssetImage(hro.strongAgainst[1].profileDir),
                    ),
                    CircleAvatar(
                      backgroundImage:
                          AssetImage(hro.strongAgainst[2].profileDir),
                    ),
                    CircleAvatar(
                      backgroundImage:
                          AssetImage(hro.strongAgainst[3].profileDir),
                    ),
                    CircleAvatar(
                      backgroundImage:
                          AssetImage(hro.strongAgainst[4].profileDir),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

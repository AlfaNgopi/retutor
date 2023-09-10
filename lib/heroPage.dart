import 'package:flutter/material.dart';

import 'asset.dart';
import 'hro.dart';

class HeroPage extends StatefulWidget {
  final Hro hro;

  const HeroPage(this.hro, {super.key});

  @override
  State<HeroPage> createState() => _HeroPageState();
}

class _HeroPageState extends State<HeroPage> {
  final Color cardsColor = Colors.blue;

  final Color backgroundColor = const Color.fromRGBO(0, 119, 182, 100);

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
        title: Text(widget.hro.name),
      ),
      body: ListView(children: [
        //hro profile
        Container(
          color: cardsColor,
          margin: cardsMargin,
          child: Column(
            children: [
              Text(widget.hro.name, textScaleFactor: 3),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // color: Colors.yellow,
                      width: cardsWidth / 2,
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Image.asset(widget.hro.profileDir, scale: 0.6),
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
                                    widget.hro.lane.icon,
                                    Text(widget.hro.lane.name)
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Row(
                                  children: [
                                    widget.hro.clas.icon,
                                    Text(widget.hro.clas.name),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Row(
                                  children: [
                                    Text(widget.hro.speciality),
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
                          Text(widget.hro.bp.toString()),
                        ],
                      ),
                    ),
                    Container(
                      //color: Colors.red,
                      width: cardsWidth / 3,
                      child: Row(
                        children: [
                          Asset.iconDiamond,
                          Text(widget.hro.diamond.toString()),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: cardsWidth / 3,
                      child: Row(
                        children: [
                          Asset.iconTicket,
                          Text(widget.hro.ticket.toString()),
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
                        Text(widget.hro.hp.toString()),
                        Text(widget.hro.mana.toString()),
                        Text(widget.hro.hpRegen.toString()),
                        Text(widget.hro.manaRegen.toString()),
                        Text(widget.hro.phyAtk.toString()),
                        Text(widget.hro.mgcAtk.toString()),
                        Text(widget.hro.phyDef.toString()),
                        Text(widget.hro.mgcDef.toString()),
                        Text(widget.hro.atkSpeed.toString()),
                        Text(widget.hro.movSpeed.toString()),
                        Text(widget.hro.atkSpeedRatio.toString()),
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
                      color: widget.hro.lane.name == "EXP"
                          ? Colors.yellow
                          : cardsColor,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Asset.lanes[0].icon,
                      ),
                    ),
                    Container(
                      color: widget.hro.lane.name == "GOLD"
                          ? Colors.yellow
                          : cardsColor,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Asset.lanes[1].icon,
                      ),
                    ),
                    Container(
                      color: widget.hro.lane.name == "MID"
                          ? Colors.yellow
                          : cardsColor,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Asset.lanes[2].icon,
                      ),
                    ),
                    Container(
                      color: widget.hro.lane.name == "JUNGLE"
                          ? Colors.yellow
                          : cardsColor,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Asset.lanes[3].icon,
                      ),
                    ),
                    Container(
                      color: widget.hro.lane.name == "ROAM"
                          ? Colors.yellow
                          : cardsColor,
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
                child: Text(widget.hro.lane.desc),
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
                      color: widget.hro.clas.name == "FIGHTER"
                          ? Colors.yellow
                          : cardsColor,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Asset.classes[0].icon,
                      ),
                    ),
                    Container(
                      color: widget.hro.clas.name == "MARKSMAN"
                          ? Colors.yellow
                          : cardsColor,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Asset.classes[1].icon,
                      ),
                    ),
                    Container(
                      color: widget.hro.clas.name == "MAGE"
                          ? Colors.yellow
                          : cardsColor,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Asset.classes[2].icon,
                      ),
                    ),
                    Container(
                      color: widget.hro.clas.name == "ASSASIN"
                          ? Colors.yellow
                          : cardsColor,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Asset.classes[3].icon,
                      ),
                    ),
                    Container(
                      color: widget.hro.clas.name == "TANK"
                          ? Colors.yellow
                          : cardsColor,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Asset.classes[4].icon,
                      ),
                    ),
                    Container(
                      color: widget.hro.clas.name == "SUPPORT"
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
                child: Text(widget.hro.clas.desc),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

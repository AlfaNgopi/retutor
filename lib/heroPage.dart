import 'package:flutter/material.dart';

import 'asset.dart';
import 'hro.dart';

class HeroPage extends StatelessWidget {
  final Hro hro;
  final Color cardsColor = Colors.blue;
  final Color backgroundColor = const Color.fromRGBO(0, 119, 182, 100);

  const HeroPage(this.hro, {super.key});

  @override
  Widget build(BuildContext context) {
    //this variable
    final double width = MediaQuery.of(context).size.width;
    const double sideCardsMargin = 10;
    final double cardsWidth = width - sideCardsMargin * 2;

    return Scaffold(
      //backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text(hro.name),
      ),
      body: Center(
        child: Column(
          // childrens of cards
          children: [
            //hero profile
            Container(
              color: cardsColor,
              width: cardsWidth,
              margin: const EdgeInsets.symmetric(vertical: 10),
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
                          // color: Colors.blue,
                          width: cardsWidth / 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                //mainAxisAlignment: MainAxisAlignment.start,

                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0),
                                    child: Row(
                                      children: [
                                        hro.lane.icon,
                                        Text(hro.lane.name)
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0),
                                    child: Row(
                                      children: [
                                        hro.clas.icon,
                                        Text(hro.clas.name),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0),
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
              width: cardsWidth,
              color: cardsColor,
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
            )
          ],
        ),
      ),
    );
  }
}

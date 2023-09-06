import 'package:flutter/material.dart';

import 'asset.dart';
import 'hro.dart';

class HeroPage extends StatelessWidget {
  final Hro hro;

  const HeroPage(this.hro, {super.key});

  @override
  Widget build(BuildContext context) {
    //this variable
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(hro.name),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.grey,
              width: double.infinity,

              child: Column(
                children: [
                  Container(

                    padding: EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: Colors.yellow,
                          width: width / 2,
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Image.asset(hro.profileDir, scale: 0.6),
                        ),

                        //class lane name
                        Container(
                          color: Colors.blue,
                          width: width / 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(hro.name, textScaleFactor: 2),
                              ),
                              Column(
                                //mainAxisAlignment: MainAxisAlignment.start,

                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding :const EdgeInsets.symmetric(vertical: 8.0),
                                    child: Row(
                                      children: [
                                        hro.lane.icon,
                                        Text(hro.lane.name)
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding :const EdgeInsets.symmetric(vertical: 8.0),
                                    child: Row(
                                      children: [
                                        hro.clas.icon,
                                        Text(hro.clas.name),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding :const EdgeInsets.symmetric(vertical: 8.0),
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
                    color: Colors.white12,

                    child: Row(
                      children: [
                        Container(
                          color: Colors.white,
                          width: width / 3,
                          child: Row(
                            children: [
                              Asset.iconBp,
                              Text(hro.bp.toString()),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.red,
                          width: width / 3,
                          child: Row(
                            children: [
                              Asset.iconDiamond,
                              Text(hro.diamond.toString()),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: width / 3,
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
              color: Colors.green,
              child: Column(
                children: [
                  Text("Stats", textScaleFactor: 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        color: Colors.blue,
                        width : width/2,
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
                        width: width/2,
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

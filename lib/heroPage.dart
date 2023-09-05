import 'package:flutter/material.dart';

import 'asset.dart';
import 'hro.dart';

class HeroPage extends StatelessWidget {
  final Hro hro;
  const HeroPage(this.hro, {super.key});

  @override
  Widget build(BuildContext context) {
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
              height: 150,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: hro.profile,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(hro.name, textScaleFactor: 2),
                        ),
                        Row(
                          children: [
                            Row(
                              children: [hro.lane.icon, Text(hro.lane.name)],
                            ),
                            Row(
                              children: [
                                hro.clas.icon,
                                Text(hro.clas.name),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Asset.iconBp,
                            Text(hro.bp.toString()),
                            Asset.iconDiamond,
                            Text(hro.diamond.toString()),
                            Asset.iconTicket,
                            Text(hro.ticket.toString())
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("hp = "),
                      Text(hro.hp.toString()),
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

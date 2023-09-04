import 'package:flutter/material.dart';

import 'hro.dart';
class HeroPage extends StatelessWidget {



  final Hro hro;
  const HeroPage(this.hro, {super.key});



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(hro.name),

      ),
      body: hro.profile,
    );
  }
}

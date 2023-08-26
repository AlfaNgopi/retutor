

import 'package:flutter/material.dart';

class Hro{
  late String name, profildir;
  late Image profil;

  //stat




  Hro (this.name, this.profildir){
    profil = Image.asset(profildir);
  }


}
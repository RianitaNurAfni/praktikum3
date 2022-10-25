import 'dart:html';

import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
const Screen3({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        HeroData(
          NIM: '18320021',
          Nama: 'ahmad hizbullah akbar',
        ),
        HeroData(
          NIM: '183200022',
          Nama: 'Haikal',
        ),
      ],
    );
  }
}

class HeroData extends StatelessWidget {
  const HeroData({Key? key, required this.NIM, required this.Nama})
    :super(key: key);

  final String NIM;
  final String Nama;

  @override 
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(NIM),
        SizedBox(width: 5),
        Text(Nama),
      ],
    );
  }
}
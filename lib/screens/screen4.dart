import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
const Screen4({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Stack(
      children: <Widget>[
        Container(
          width: 90,
          height: 90,
          color: Colors.blue,
          child: Text('Stack 1'),
        ),
        Container(
          width: 90,
          height: 90,
          color: Colors.yellow,
          child: Text('Stack2'),
        ),
        Container(
          width: 80,
          height: 80,
          color: Colors.red,
          child: Text('Stack 3'),
        ),
      ],
    );
  }
}

class HeroData extends StatelessWidget {
  const HeroData({ Key? key, required this.NIM, required this.Nama })
   : super(key: key);

   final String NIM;
   final String Nama;

  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        Text(NIM),
        SizedBox(width: 5),
        Text(Nama),
      ],
    );
  }
}
import 'package:flutter/material.dart';

class Screen5 extends StatelessWidget {
  const Screen5({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MyStatefulWidget();
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({ super.key });

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
    TextStyle( fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: satu',
      style: optionStyle,
    ),
    Text(
      'Index 1: dua',
      style: optionStyle,
    ),
    Text(
      'Index 2: tiga',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom NavigationBar'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'satu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'dua',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'tiga',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
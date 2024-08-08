import 'package:flutter/material.dart';

class Sayfa2 extends StatefulWidget {
  @override
  _Sayfa2State createState() => _Sayfa2State();
}

class _Sayfa2State extends State<Sayfa2> {
  int _egzersiz1Suresi = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Egzersiz 1 Takipçisi', style: TextStyle(fontSize: 24)),
          Text('Süre: $_egzersiz1Suresi dk', style: TextStyle(fontSize: 20)),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _egzersiz1Suresi += 5; // Test amaçlı
              });
            },
            child: Text('5 dk Ekle'),
          ),
        ],
      ),
    );
  }
}

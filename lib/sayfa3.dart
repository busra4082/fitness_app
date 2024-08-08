import 'package:flutter/material.dart';

class Sayfa3 extends StatefulWidget {
  @override
  _Sayfa3State createState() => _Sayfa3State();
}

class _Sayfa3State extends State<Sayfa3> {
  int _egzersiz2Suresi = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Egzersiz 2 Takipçisi', style: TextStyle(fontSize: 24)),
          Text('Süre: $_egzersiz2Suresi dk', style: TextStyle(fontSize: 20)),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _egzersiz2Suresi += 5; // Test amaçlı
              });
            },
            child: Text('5 dk Ekle'),
          ),
        ],
      ),
    );
  }
}

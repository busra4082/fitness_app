import 'package:flutter/material.dart';

class Sayfa1 extends StatefulWidget {
  @override
  _Sayfa1State createState() => _Sayfa1State();
}

class _Sayfa1State extends State<Sayfa1> {
  int _mesafe = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Koşu Takipçisi', style: TextStyle(fontSize: 24)),
          Text('Mesafe: $_mesafe km', style: TextStyle(fontSize: 20)),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _mesafe += 1; // Test amaçlı
              });
            },
            child: Text('1 km Ekle'),
          ),
        ],
      ),
    );
  }
}

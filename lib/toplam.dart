import 'package:flutter/material.dart';

class Toplam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Bu örnekte değerler doğrudan burada tanımlanmıştır. Gerçek uygulamada bu değerler bir state yönetimi aracılığıyla paylaşılabilir.
    final int toplamMesafe = 5; // Koşu sayfasından
    final int toplamEgzersiz1Suresi = 30; // Egzersiz 1 sayfasından
    final int toplamEgzersiz2Suresi = 25; // Egzersiz 2 sayfasından

    final int toplamSure = toplamEgzersiz1Suresi + toplamEgzersiz2Suresi;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Toplam', style: TextStyle(fontSize: 24)),
          Text('Toplam Mesafe: $toplamMesafe km',
              style: TextStyle(fontSize: 20)),
          Text('Egzersiz 1 Toplam Süre: $toplamEgzersiz1Suresi dk',
              style: TextStyle(fontSize: 20)),
          Text('Egzersiz 2 Toplam Süre: $toplamEgzersiz2Suresi dk',
              style: TextStyle(fontSize: 20)),
          Text('Toplam Süre: $toplamSure dk', style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}

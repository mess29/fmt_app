// Geri Sayım Sayacı
import 'package:flutter/material.dart';

class CountdownTimer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Örnek bir geri sayım göstergesi
    return Container(
      margin: const EdgeInsets.all(16.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Sıradaki Maç Başlamasına Kalan Süre:',
            style: TextStyle(color: Colors.white, fontSize: 16.0),
          ),
          SizedBox(height: 8.0),
          Text(
            '3 Gün, 5 Saat, 20 Dakika',
            style: TextStyle(color: Colors.white, fontSize: 24.0),
          ),
        ],
      ),
    );
  }
}
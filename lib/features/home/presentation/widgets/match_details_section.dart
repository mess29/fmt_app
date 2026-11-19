import 'package:flutter/material.dart';

class MatchDetailsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.sports_soccer),
      title: const Text('Galatasaray vs Fenerbahçe'),
      subtitle: const Text('20 Ocak 2025, 19:00 - Türk Telekom Stadyumu'),
      onTap: () {
        // Maç detaylarına yönlendirme
      },
    );
  }
}
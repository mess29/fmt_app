import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Arama"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: searchController,
              decoration: const InputDecoration(
                labelText: 'Takım veya Oyuncu Ara',
                border: OutlineInputBorder()
              ),
              onChanged: (query) {
                // Arama mantığı buraya gelecek
                debugPrint('Arama sorgusu: $query');
              },
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index){
                  return ListTile(
                    title: Text('Sonuç $index'),
                    onTap: () {
                       debugPrint('Sonuç $index seçildi');
                    },
                  );
                }),
            )
          ],
        ),
      ),
    );
  }
}

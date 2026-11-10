import 'package:flutter/material.dart';

import '../models/candi.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  // TODO 1: Buat variabel yang dibutuhkan
  List<Candi> _filteredCandis = [];
  String _searchQuery = "";
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Todo 2: Buat appbar dengan judul pencarian candi
      appBar: AppBar(title: Text("Pencarian Candi"),),
      //Todo 3: Buat body berupa column
      body: Column(
        children: [
          //Todo 4: Buat TextField pencarian
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: const TextField(
                autofocus: false,
                decoration: InputDecoration(
                  hintText: 'Cari candi ...',
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepPurple),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12
                  ), //
                ),
              ),
            ),
          ),
          // Todo 5: Buat ListView Hasil Pencarian
          ListView.builder(
            itemCount: _filteredCandis.length,
            itemBuilder: (context, index){
              final candi = _filteredCandis[index];
              return Card(
                margin: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 4
                ),
                 child: Row(
                  crossAxisAlignment: start,
                  children: [
                    Image(image: image),
                    Column()
                  ],
                 ),
              );
            },
          )
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:wisata_candi/models/candi.dart';
import 'package:wisata_candi/screens/detail_screen.dart';

class ItemCard extends StatelessWidget {
  // TODO 1: Buat Variable
  final Candi candi;

  // Perbaikan 1: Ganti 'new' menjadi 'ItemCard'
  const ItemCard({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    // TODO 6 : Routing ke detail screen
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailScreen(candi: candi)),
        );
      },

      child: Card(
        // TODO 2 : Set Parameter Shape, Margin dan elevation
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        margin: const EdgeInsets.all(4),
        elevation: 5,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TODO 3: Image Widget -----------------------------------------------------------------------
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  candi.imageAsset,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // TODO 4 : Text Widget (Nama Candi)----------------------------------------------------------
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 8),
              child: Text(
                candi.name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // TODO 5 : Text Widget (Type Candi)----------------------------------------------------------
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 8),
              child: Text(candi.type, style: const TextStyle(fontSize: 12)),
            ),
          ],
        ),
      ),
    );
  }
}

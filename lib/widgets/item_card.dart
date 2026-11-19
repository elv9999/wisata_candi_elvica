import 'package:flutter/material.dart';
import 'package:wisata_candi/models/candi.dart';

class ItemCard extends StatelessWidget {
  //Todo 1 : Buat variable
  final Candi candi;
  const new({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    //Todo 6 : Routing ke DetailScreen
    return Card(
      //Todo 2 : set parameter shape, margin dan elevation
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      margin: EdgeInsets.all(4),
      elevation: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Todo 3 : Image widget
          Expanded(
            //Todo 7: HeroAnimation
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                candi.imageAsset,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          //Todo 4 : Text Widget (nama candi)
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 8),
            child: Text(
              candi.name,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          //Todo 5 : Text Widget (type candi)

          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 8),
            child: Text(candi.name, style: TextStyle(fontSize: 12)),
          ),
        ],
      ),
    );
  }
}

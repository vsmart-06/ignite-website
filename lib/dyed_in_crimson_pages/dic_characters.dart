import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ignite_2023/dyed_in_crimson_widgets/navigation_bar.dart';
import 'package:ignite_2023/widgets/item_card.dart';

class DICCharacters extends StatefulWidget {
  const DICCharacters({super.key});

  @override
  State<DICCharacters> createState() => _DICCharactersState();
}

class _DICCharactersState extends State<DICCharacters> {
  String? fontMain = GoogleFonts.ebGaramond().fontFamily;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getTopBar(context),
      drawer: getTopBar(context),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Text(
            "Characters",
            style: TextStyle(
                fontSize: 50, color: Colors.white, fontFamily: fontMain),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ItemCard(
                logo: "https://i.imgur.com/tFliPQY.png",
                name: "Ayaan",
                description: "Yo",
              ),
              ItemCard(
                logo: "https://i.imgur.com/tFliPQY.png",
                name: "Anish",
                description: "Wassup",
              ),
              ItemCard(
                logo: "https://i.imgur.com/tFliPQY.png",
                name: "Hari",
                description: "Bois",
              ),
            ],
          )
        ],
      ),
    );
  }
}

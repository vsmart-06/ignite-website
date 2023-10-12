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
                logo: "https://i.imgur.com/5VuyhL2.png",
                name: "Ayaan",
                description: "Yo",
                width: 250,
                height: 350,
              ),
              ItemCard(
                logo: "https://i.imgur.com/5VuyhL2.png",
                name: "Anish",
                description: "Wassup",
                width: 250,
                height: 350,
              ),
              ItemCard(
                logo: "https://i.imgur.com/5VuyhL2.png",
                name: "Hari",
                description: "Bois",
                width: 250,
                height: 350,
              ),
            ],
          )
        ],
      ),
    );
  }
}

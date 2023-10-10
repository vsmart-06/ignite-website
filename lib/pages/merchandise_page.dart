import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ignite_2023/widgets/navigation_bar.dart';
import 'package:ignite_2023/widgets/item_card.dart';


class Merchandise extends StatefulWidget {
  const Merchandise({super.key});

  @override
  State<Merchandise> createState() => _MerchandiseState();
}

class _MerchandiseState extends State<Merchandise> {
  String? fontMain = GoogleFonts.ebGaramond().fontFamily;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getTopBar(context),
      drawer: getTopBar(context),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Text("IGNITE's Merchandise", style: TextStyle(fontSize: 50, color: Colors.white, fontFamily: fontMain),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ItemCard(logo: "https://i.imgur.com/utM2H4D.png", name: "Cap", description: "Hello World",),
              ItemCard(logo: "https://i.imgur.com/utM2H4D.png", name: "Hat", description: "Hello World",),
              ItemCard(logo: "https://i.imgur.com/utM2H4D.png", name: "Shirt", description: "Hello World",),
            ],
          )
        ],
      ),
    );
  }
}

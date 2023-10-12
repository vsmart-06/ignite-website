import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ignite_2023/widgets/navigation_bar.dart';
import 'package:ignite_2023/widgets/item_card.dart';
import "package:ignite_2023/widgets/footer.dart";

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
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "IGNITE's Merchandise",
              style: TextStyle(
                  fontSize: 50, color: Colors.white, fontFamily: fontMain),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ItemCard(
                logo: "https://i.imgur.com/5VuyhL2.png",
                name: "Cap",
                description: "Hello World",
                width: 250,
                height: 350,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: ItemCard(
                  logo: "https://i.imgur.com/5VuyhL2.png",
                  name: "Hat",
                  description: "Hello World",
                width: 250,
                height: 350,
                ),
              ),
              ItemCard(
                logo: "https://i.imgur.com/5VuyhL2.png",
                name: "Shirt",
                description: "Hello World",
                width: 250,
                height: 350,
              ),
            ],
          ),
          footer(MediaQuery.of(context).orientation == Orientation.landscape)
        ],
      ),
    );
  }
}

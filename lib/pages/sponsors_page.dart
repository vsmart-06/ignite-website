import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ignite_2023/widgets/navigation_bar.dart';
import 'package:ignite_2023/widgets/item_card.dart';
import "package:ignite_2023/widgets/footer.dart";

class Sponsors extends StatefulWidget {
  const Sponsors({super.key});

  @override
  State<Sponsors> createState() => _SponsorsState();
}

class _SponsorsState extends State<Sponsors> {
  String? fontMain = GoogleFonts.ebGaramond().fontFamily;
  ScrollController scroller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getTopBar(context),
      drawer: getTopBar(context),
      backgroundColor: Colors.black,
      body: RawScrollbar(
        thumbColor: Color(0xFF313133),
        thickness: 10,
        thumbVisibility: true,
        trackVisibility: true,
        controller: scroller,
        child: SingleChildScrollView(
          controller: scroller,
          child: Column(
            children: [
              /* Remove Sponsors Until Sponsors Sponsor
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "IGNITE's Sponsors",
                  style: TextStyle(
                      fontSize: 50, color: Colors.white, fontFamily: fontMain),
                  textAlign: TextAlign.center,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ItemCard(
                          image: "https://i.imgur.com/5VuyhL2.png",
                          name: "Name",
                          description: "Hello World",
                          width: 250,
                          height: 350,
                          color: Colors.orange),
                      ItemCard(
                          image: "https://i.imgur.com/5VuyhL2.png",
                          name: "Mr. Beast",
                          description: "Hello World",
                          width: 250,
                          height: 350,
                          color: Colors.orange),
                      ItemCard(
                          image: "https://i.imgur.com/5VuyhL2.png",
                          name: "Pizza Hut",
                          description: "Hello World",
                          width: 250,
                          height: 350,
                          color: Colors.orange),
                    ],
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                  child: Divider(color: Colors.white, height: 1, thickness: 1)),
                  */
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "IGNITE's Merchandise",
                  style: TextStyle(
                      fontSize: 50, color: Colors.white, fontFamily: fontMain),
                  textAlign: TextAlign.center,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ItemCard(
                        image: "https://i.imgur.com/5VuyhL2.png",
                        name: "Cap",
                        description: "Hello World",
                        width: 250,
                        height: 350,
                        color: Colors.orange
                      ),
                      ItemCard(
                        image: "https://i.imgur.com/5VuyhL2.png",
                        name: "Hat",
                        description: "Hello World",
                        width: 250,
                        height: 350,
                        color: Colors.orange
                      ),
                      ItemCard(
                        image: "https://i.imgur.com/5VuyhL2.png",
                        name: "Shirt",
                        description: "Hello World",
                        width: 250,
                        height: 350,
                        color: Colors.orange
                      ),
                    ],
                  ),
                ),
              ),
              footer(
                  MediaQuery.of(context).orientation == Orientation.landscape)
            ],
          ),
        ),
      ),
    );
  }
}

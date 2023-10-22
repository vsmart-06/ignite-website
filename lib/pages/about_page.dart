import "package:flutter/material.dart";

import "package:google_fonts/google_fonts.dart";
import "package:ignite_2023/widgets/footer.dart";
import "package:ignite_2023/widgets/navigation_bar.dart";
import 'package:ignite_2023/widgets/item_card.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  String? fontMain = GoogleFonts.ebGaramond().fontFamily;
  ScrollController scroller = ScrollController();

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      return Scaffold(
          appBar: getTopBar(context),
          drawer: getDrawer(context),
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
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "IGNITE's Sponsors",
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontFamily: fontMain),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ItemCard(
                        image: "https://i.imgur.com/5VuyhL2.png",
                        name: "Name",
                        backside: "Hello World",
                        width: 250,
                        height: 350,
                        color: Colors.orange,
                        back: false,
                      ),
                      ItemCard(
                        image: "https://i.imgur.com/5VuyhL2.png",
                        name: "Mr. Beast",
                        backside: "Hello World",
                        width: 250,
                        height: 350,
                        color: Colors.orange,
                        back: false,
                      ),
                      ItemCard(
                        image: "https://i.imgur.com/5VuyhL2.png",
                        name: "Pizza Hut",
                        backside: "Hello World",
                        width: 250,
                        height: 350,
                        color: Colors.orange,
                        back: false,
                      ),
                    ],
                  ),
                  /* Padding(
                      padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                      child: Divider(
                          color: Colors.white, height: 1, thickness: 1)),
                  Text("Letter from the Principal",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: fontMain,
                          fontSize: 50)),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(
                              image: NetworkImage(
                                  "https://i.imgur.com/5VuyhL2.png"),
                              width: MediaQuery.of(context).size.width * 0.3),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: Text(
                                "Dear Delegates,\n\nIt is with great pleasure and honor that I welcome you to the Greenwood High Model United Nations conference. As the Secretary-General, I am grateful for the opportunity to witness the passion and intellectual prowess of each one of you.\n\nAs someone who has been a part of the MUN circuit since 2018, I can truly say that, participating in a Model United Nations (MUN) conference offers a transformative journey of diplomacy and knowledge. MUN fosters empathetic collaboration to address global challenges, shaping future leaders with humility and strategic acumen. Throughout this conference, we look forward to have the unique chance to engage in thought-provoking debates, innovative problem-solving, and collaborative decision-making. It is our collective duty to forget our personal beliefs, opinions, and prejudices and collectively work towards finding sustainable and peaceful solutions for the challenges that lie ahead.\n\nAs we embark on this journey together, let us remember the words of Kofi Annan, \"More than ever before in human history, we share a common destiny. We can master it only if we face it together. And that, my friends, is why we have the United Nations.\"\n\nOnce again, welcome to the Model United Nations conference. I am excited to witness the incredible achievements we will attain throughout this enlightening journey.\n\nSincerely yours,\nVansh Abrol, Secretary General",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: fontMain,
                                    fontSize: 20),
                              ),
                            ),
                          ),
                        ],
                      )), */
                  footer(MediaQuery.of(context).orientation ==
                      Orientation.landscape, context)
                ],
              ),
            ),
          ));
    } else {
      return Scaffold(
          appBar: getTopBar(context),
          drawer: getDrawer(context),
          backgroundColor: Colors.black,
          body: Column(
            children: [
              Text(
                "IGNITE's Sponsors",
                style: TextStyle(
                    fontSize: 50, color: Colors.white, fontFamily: fontMain),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ItemCard(
                        image: "https://i.imgur.com/5VuyhL2.png",
                        name: "Name",
                        backside: "Hello World",
                        width: 250,
                        height: 350,
                        color: Colors.orange,
                        back: false,
                      ),
                      ItemCard(
                        image: "https://i.imgur.com/5VuyhL2.png",
                        name: "Mr. Beast",
                        backside: "Hello World",
                        width: 250,
                        height: 350,
                        color: Colors.orange,
                        back: false,
                      ),
                      ItemCard(
                        image: "https://i.imgur.com/5VuyhL2.png",
                        name: "Pizza Hut",
                        backside: "Hello World",
                        width: 250,
                        height: 350,
                        color: Colors.orange,
                        back: false,
                      ),
                      ItemCard(
                        image: "https://i.imgur.com/5VuyhL2.png",
                        name: "Pizza Hut",
                        backside: "Hello World",
                        width: 250,
                        height: 350,
                        color: Colors.orange,
                        back: false,
                      ),
                      ItemCard(
                          image: "https://i.imgur.com/5VuyhL2.png",
                          name: "Pizza Hut",
                          backside: "Hello World",
                          width: 250,
                          height: 350,
                          color: Colors.orange,
                          back: false),
                    ],
                  ),
                ),
              ),
              footer(
                  MediaQuery.of(context).orientation == Orientation.landscape, context)
            ],
          ));
    }
  }
}

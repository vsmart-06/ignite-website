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
                            image: "https://i.imgur.com/8KMfaFu.jpg",
                            name: "Athena Education",
                            backside:
                                "We are striving to transform the academic landscape through holistic education consulting. We help students navigate their journey to the top universities across the globe.",
                            width: 300,
                            height: 350,
                            color: Colors.orange,
                            back: false),
                        ItemCard(
                            image: "https://i.imgur.com/1Ic5HMM.png",
                            name: "Quest For Success",
                            backside:
                                "Quest For Success offers comprehensive classroom preparation programs for tests such as PSAT | SAT | ACT | AP | UCAT | IB | IGCSE & we also help students with undergraduate admissions counselling.",
                            width: 300,
                            height: 350,
                            color: Colors.orange,
                            back: false),
                      ],
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                    child:
                        Divider(color: Colors.white, height: 1, thickness: 1)),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "IGNITE's Merchandise",
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontFamily: fontMain),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Hover to see design",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontFamily: fontMain,
                        fontStyle: FontStyle.italic),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ItemCard(
                    image: "https://i.imgur.com/RgU0waM.png",
                    name: "Hoodie",
                    backside: "https://i.imgur.com/6HNlc6c.png",
                    width: 250,
                    height: 350,
                    color: Color(0xFFE1D9D1),
                    back: true,
                  ),
                ),
                footer(
                    MediaQuery.of(context).orientation == Orientation.landscape,
                    context)
              ],
            ),
          ),
        ),
      );
    } else {
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
                    textAlign: TextAlign.center,
                  ),
                ),
                ItemCard(
                  image: "https://i.imgur.com/8KMfaFu.jpg",
                  name: "Athena Education",
                  backside:
                      "We are striving to transform the academic landscape through holistic education consulting. We help students navigate their journey to the top universities across the globe.",
                  width: 300,
                  height: 350,
                  color: Colors.orange,
                  back: false,
                ),
                ItemCard(
                  image: "https://i.imgur.com/1Ic5HMM.png",
                  name: "Quest For Success",
                  backside:
                      "Quest For Success offers comprehensive classroom preparation programs for tests such as PSAT | SAT | ACT | AP | UCAT | IB | IGCSE & we also help students with undergraduate admissions counselling.",
                  width: 300,
                  height: 350,
                  color: Colors.orange,
                  back: false,
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                    child:
                        Divider(color: Colors.white, height: 1, thickness: 1)),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "IGNITE's Merchandise",
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontFamily: fontMain),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Click to see design",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontFamily: fontMain,
                        fontStyle: FontStyle.italic),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: ItemCard(
                      image: "https://i.imgur.com/RgU0waM.png",
                      name: "Hoodie",
                      backside: "https://i.imgur.com/6HNlc6c.png",
                      width: 250,
                      height: 350,
                      color: Color(0xFFE1D9D1),
                      back: true),
                ),
                footer(
                    MediaQuery.of(context).orientation == Orientation.landscape,
                    context)
              ],
            ),
          ),
        ),
      );
    }
  }
}

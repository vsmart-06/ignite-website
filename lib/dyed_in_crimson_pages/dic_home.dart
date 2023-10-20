import 'package:flutter/material.dart';
import "package:ignite_2023/dyed_in_crimson_widgets/navigation_bar.dart";
import "package:ignite_2023/dyed_in_crimson_widgets/iframe.dart";
import "package:ignite_2023/dyed_in_crimson_widgets/footer.dart";
import "package:ignite_2023/widgets/item_card.dart";
import "package:pointer_interceptor/pointer_interceptor.dart";
import "package:google_fonts/google_fonts.dart";

class DICHome extends StatelessWidget {
  const DICHome({super.key});

  @override
  Widget build(BuildContext context) {
    ScrollController scroller = ScrollController();
    String? fontMain = GoogleFonts.ebGaramond().fontFamily;

    double width = MediaQuery.of(context).size.width * 0.9;

    return Scaffold(
        appBar: getTopBar(context),
        drawer: PointerInterceptor(child: getDrawer(context)),
        backgroundColor: Colors.black,
        body: RawScrollbar(
          thumbColor: Color(0xFF313133),
          thickness: 10,
          thumbVisibility: true,
          trackVisibility: true,
          controller: scroller,
          child: SingleChildScrollView(
            controller: scroller,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text("Dyed in Crimson",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: fontMain,
                            fontSize: 50)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(75, 20, 75, 20),
                    child:
                        IFrame(link: "https://www.youtube.com/embed/dQw4w9WgXcQ", height: MediaQuery.of(context).orientation == Orientation.landscape ? 0.8 * MediaQuery.of(context).size.height : 0.4 * MediaQuery.of(context).size.height),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                      child:
                          Divider(color: Colors.white, height: 1, thickness: 1)),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text("Rules",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: fontMain,
                            fontSize: 45)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 10, 50, 20),
                    child: Text(
                      "→ Participants have to register individually\n→ Participants are not to tamper with on site evidence\n→ Participants may not leak evidence to other participants",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: fontMain,
                          fontSize: 25),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                      child:
                          Divider(color: Colors.white, height: 1, thickness: 1)),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text("FAQs",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: fontMain,
                            fontSize: 45)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: ItemCard(
                      name: "What is Dyed in Crimson?",
                      backside: "Dyed in Crimson is a murder mystery event wherein participants must explore the entirety of the GWH campus looking for clues. At the end, they will collate all the information they have found to try and unravel who the true culprit of the crime is.",
                      width: width,
                      height: 300,
                      color: Color(0xFF8b0000),
                      back: false,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: ItemCard(
                      name: "How do the clues work?",
                      backside: "Clues will be scattered throughout the GWH IGCSE Campus. A QR code will be placed near every clue which participants can scan to access a digital copy of that clue to be used for future reference. Additionally, certain narrative elements will be revealed on the website under the \"Updates\" tab",
                      width: width,
                      height: 300,
                      color: Color(0xFF8b0000),
                      back: false,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: ItemCard(
                      name: "How do I find clues?",
                      backside: "Exploration and critical thinking! You will be able to infer the location of certain clues from previous ones and stumble upon other clues as you explore the campus.",
                      width: width,
                      height: 300,
                      color: Color(0xFF8b0000),
                      back: false,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: ItemCard(
                      name: "How do I submit my suspicions about the killer?",
                      backside: "At the end of the event, the website will be updated to display another tab called \"Submissions\", which will allow participants to illustrate their suspicions as to who the murderer is.  Additionally, there will be space for participants to provide their rationale.",
                      width: width,
                      height: 300,
                      color: Color(0xFF8b0000),
                      back: false,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: ItemCard(
                      name: "How is the winner decided?",
                      backside: "The winner is decided based on how close they were to finding the true killer and the veracity and comprehensiveness of the rationale submitted in the form.",
                      width: width,
                      height: 300,
                      color: Color(0xFF8b0000),
                      back: false,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: ItemCard(
                      name: "What are the prizes for Dyed in Crimson?",
                      backside: "To be decided",
                      width: width,
                      height: 300,
                      color: Color(0xFF8b0000),
                      back: false,
                    ),
                  ),
                  footer(
                      MediaQuery.of(context).orientation == Orientation.landscape)
                ],
              ),
            ),
          ),
        ));
  }
}

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import 'package:ignite_2023/widgets/events_button.dart';
import "package:ignite_2023/widgets/footer.dart";
import "package:ignite_2023/widgets/navigation_bar.dart";

class CultSport extends StatefulWidget {
  @override
  State<CultSport> createState() => _CultSportState();
}

class _CultSportState extends State<CultSport> {
  String? font = GoogleFonts.roboto().fontFamily;
  String? titleFont = GoogleFonts.ebGaramond().fontFamily;

  List<Color> cardColors = [Colors.black, Colors.black, Colors.black, Colors.black, Colors.black, Colors.black, Colors.black, Colors.black,];
  ScrollController scroll = ScrollController();
  
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: getTopBar(context),
      drawer: getDrawer(context),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Events",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontFamily: titleFont
                ),
              ),
            ),
            Expanded(
              child: RawScrollbar(
                thumbColor: Color(0xFF313133),
                thickness: 10,
                thumbVisibility: true,
                trackVisibility: true,
                controller: scroll,
                child: SingleChildScrollView(
                  controller: scroll,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          EventsButton(
                              inSite: true,
                            imagePath: 'https://i.imgur.com/utM2H4D.png',
                            websitePath: "/events/cultural",
                            name: "Cultural"),
                          EventsButton(
                              inSite: true,
                            imagePath: 'https://i.imgur.com/utM2H4D.png',
                            websitePath: "/events/sports",
                            name: "Sports"),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      footer(MediaQuery.of(context).orientation == Orientation.landscape)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

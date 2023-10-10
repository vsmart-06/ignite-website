import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import 'package:ignite_2023/widgets/events_button.dart';
import "package:ignite_2023/widgets/footer.dart";
import "package:ignite_2023/widgets/navigation_bar.dart";

class RegChoice extends StatefulWidget {
  @override
  State<RegChoice> createState() => _RegChoiceState();
}

class _RegChoiceState extends State<RegChoice> {
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
                "Registrations",
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
                            imagePath: 'https://i.imgur.com/tFliPQY.png',
                            websitePath: "/registrations/cultural",
                            name: "Cultural"),
                          EventsButton(
                              inSite: true,
                            imagePath: 'https://i.imgur.com/tFliPQY.png',
                            websitePath: "/registrations/sports",
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

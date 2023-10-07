import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import 'package:ignite_2023/widgets/events_button.dart';
import "package:ignite_2023/widgets/footer.dart";
import "package:ignite_2023/widgets/navigation_bar.dart";

class Sports extends StatefulWidget {
  @override
  State<Sports> createState() => _SportsState();
}

class _SportsState extends State<Sports> {
  String? font = GoogleFonts.roboto().fontFamily;
  String? titleFont = GoogleFonts.ebGaramond().fontFamily;

  List<Color> cardColors = [Colors.black, Colors.black, Colors.black, Colors.black, Colors.black, Colors.black, Colors.black, Colors.black,];
  ScrollController scroll = ScrollController();
  
  @override
  Widget build(BuildContext context) {
    if(MediaQuery.of(context).orientation==Orientation.portrait){
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
                              imagePath: 'https://i.imgur.com/utM2H4D.png',
                              websitePath: "/basketball",
                              name: "Basketball"),
                            EventsButton(
                              imagePath: 'https://i.imgur.com/utM2H4D.png',
                              websitePath: "/football",
                              name: "Football"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EventsButton(
                              imagePath: 'https://i.imgur.com/utM2H4D.png',
                              websitePath: "/hockey",
                              name: "Hockey"),
                            EventsButton(
                              imagePath: 'https://i.imgur.com/utM2H4D.png',
                              websitePath: "/badminton",
                              name: "Badminton"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EventsButton(
                              imagePath: 'https://i.imgur.com/utM2H4D.png',
                              websitePath: "/tennis",
                              name: "Tennis"),
                            EventsButton(
                              imagePath: 'https://i.imgur.com/utM2H4D.png',
                              websitePath: "/table_tennis",
                              name: "Table Tennis"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EventsButton(
                              imagePath: 'https://i.imgur.com/utM2H4D.png',
                              websitePath: "/swimming",
                              name: "Swimming"),
                            EventsButton(
                              imagePath: 'https://i.imgur.com/utM2H4D.png',
                              websitePath: "/relay",
                              name: "Relay"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EventsButton(
                            imagePath: 'https://i.imgur.com/utM2H4D.png',
                            websitePath: "/chess",
                            name: "Chess"),
                            EventsButton(
                            imagePath: 'https://i.imgur.com/utM2H4D.png',
                            websitePath: "/squash",
                            name: "Squash"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EventsButton(
                            imagePath: 'https://i.imgur.com/utM2H4D.png',
                            websitePath: "/flag_football",
                            name: "Flag Football"),
                          ],
                        )
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
    else{
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
                            imagePath: 'https://i.imgur.com/utM2H4D.png',
                            websitePath: "/basketball",
                            name: "Basketball"),
                          EventsButton(
                            imagePath: 'https://i.imgur.com/utM2H4D.png',
                            websitePath: "/football",
                            name: "Football"),
                          EventsButton(
                            imagePath: 'https://i.imgur.com/utM2H4D.png',
                            websitePath: "/hockey",
                            name: "Hockey"),
                          EventsButton(
                            imagePath: 'https://i.imgur.com/utM2H4D.png',
                            websitePath: "/badminton",
                            name: "Badminton"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          EventsButton(
                            imagePath: 'https://i.imgur.com/utM2H4D.png',
                            websitePath: "/tennis",
                            name: "Tennis"),
                          EventsButton(
                            imagePath: 'https://i.imgur.com/utM2H4D.png',
                            websitePath: "/table_tennis",
                            name: "Table Tennis"
                            ),
                          EventsButton(
                            imagePath: 'https://i.imgur.com/utM2H4D.png',
                            websitePath: "/swimming",
                            name: "Swimming"),
                          EventsButton(
                            imagePath: 'https://i.imgur.com/utM2H4D.png',
                            websitePath: "/relay",
                            name: "Relay"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          EventsButton(
                            imagePath: 'https://i.imgur.com/utM2H4D.png',
                            websitePath: "/chess",
                            name: "Chess"),
                          EventsButton(
                            imagePath: 'https://i.imgur.com/utM2H4D.png',
                            websitePath: "/squash",
                            name: "Squash"),
                          EventsButton(
                            imagePath: 'https://i.imgur.com/utM2H4D.png',
                            websitePath: "/flag_football",
                            name: "Flag Football"),
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
}

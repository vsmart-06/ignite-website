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

  List<Color> cardColors = [
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
  ];
  ScrollController scroll = ScrollController();

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
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
                  "Sports Events",
                  style: TextStyle(
                      color: Colors.white, fontSize: 50, fontFamily: titleFont),
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
                                imagePath: 'https://i.imgur.com/myq8aq1.png',
                                websitePath: "/events/sports/basketball",
                                name: "Basketball"),
                            EventsButton(
                                inSite: true,
                                imagePath: 'https://i.imgur.com/vro8CWT.png',
                                websitePath: "/events/sports/football",
                                name: "Football"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EventsButton(
                                inSite: true,
                                imagePath: 'https://i.imgur.com/85etvSD.png',
                                websitePath: "/events/sports/hockey",
                                name: "Hockey"),
                            EventsButton(
                                inSite: true,
                                imagePath: 'https://i.imgur.com/DflBZC9.png',
                                websitePath: "/events/sports/badminton",
                                name: "Badminton"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EventsButton(
                                inSite: true,
                                imagePath: 'https://i.imgur.com/HrQCltb.png',
                                websitePath: "/events/sports/tennis",
                                name: "Tennis"),
                            EventsButton(
                                inSite: true,
                                imagePath: 'https://i.imgur.com/GOO5D5g.png',
                                websitePath: "/events/sports/table_tennis",
                                name: "Table Tennis"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EventsButton(
                                inSite: true,
                                imagePath: 'https://i.imgur.com/vPCf5Fl.png',
                                websitePath: "/events/sports/relay",
                                name: "Relay"),
                            EventsButton(
                                inSite: true,
                                imagePath: 'https://i.imgur.com/rZLYerc.png',
                                websitePath: "/events/sports/flag_football",
                                name: "Flag Football"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EventsButton(
                                inSite: true,
                                imagePath: 'https://i.imgur.com/mdC64lY.png',
                                websitePath: "/events/sports/chess",
                                name: "Chess"),
                            EventsButton(
                                inSite: true,
                                imagePath: 'https://i.imgur.com/lnmXe4T.png',
                                websitePath: "/events/sports/squash",
                                name: "Squash"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EventsButton(
                                inSite: true,
                                imagePath: 'https://i.imgur.com/KfIJPdE.png',
                                websitePath: "/events/sports/swimming",
                                name: "Swimming"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    } else {
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
                  "Sports Events",
                  style: TextStyle(
                      color: Colors.white, fontSize: 50, fontFamily: titleFont),
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
                                imagePath: 'https://i.imgur.com/myq8aq1.png',
                                websitePath: "/events/sports/basketball",
                                name: "Basketball"),
                            EventsButton(
                                inSite: true,
                                imagePath: 'https://i.imgur.com/vro8CWT.png',
                                websitePath: "/events/sports/football",
                                name: "Football"),
                            EventsButton(
                                inSite: true,
                                imagePath: 'https://i.imgur.com/85etvSD.png',
                                websitePath: "/events/sports/hockey",
                                name: "Hockey"),
                            EventsButton(
                                inSite: true,
                                imagePath: 'https://i.imgur.com/DflBZC9.png',
                                websitePath: "/events/sports/badminton",
                                name: "Badminton"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EventsButton(
                                inSite: true,
                                imagePath: 'https://i.imgur.com/HrQCltb.png',
                                websitePath: "/events/sports/tennis",
                                name: "Tennis"),
                            EventsButton(
                                inSite: true,
                                imagePath: 'https://i.imgur.com/GOO5D5g.png',
                                websitePath: "/events/sports/table_tennis",
                                name: "Table Tennis"),
                            EventsButton(
                                inSite: true,
                                imagePath: 'https://i.imgur.com/vPCf5Fl.png',
                                websitePath: "/events/sports/relay",
                                name: "Relay"),
                            EventsButton(
                                inSite: true,
                                imagePath: 'https://i.imgur.com/rZLYerc.png',
                                websitePath: "/events/sports/flag_football",
                                name: "Flag Football"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EventsButton(
                              inSite: true,
                              imagePath: 'https://i.imgur.com/mdC64lY.png',
                              websitePath: "/events/sports/chess",
                              name: "Chess"),
                            EventsButton(
                              inSite: true,
                              imagePath: 'https://i.imgur.com/lnmXe4T.png',
                              websitePath: "/events/sports/squash",
                              name: "Squash"),
                            EventsButton(
                              inSite: true,
                              imagePath: 'https://i.imgur.com/KfIJPdE.png',
                              websitePath: "/events/sports/swimming",
                              name: "Swimming"),
                          ]
                        ),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        footer(MediaQuery.of(context).orientation ==
                            Orientation.landscape, context)
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

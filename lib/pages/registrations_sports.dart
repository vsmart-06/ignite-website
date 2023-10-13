import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import 'package:ignite_2023/widgets/events_button.dart';
import "package:ignite_2023/widgets/footer.dart";
import "package:ignite_2023/widgets/navigation_bar.dart";

class RegistrationsSports extends StatefulWidget {
  @override
  State<RegistrationsSports> createState() => _RegistrationsSportsState();
}

class _RegistrationsSportsState extends State<RegistrationsSports> {
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
                  "Sports Registrations",
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
                                inSite: false,
                                imagePath: 'https://i.imgur.com/5VuyhL2.png',
                                websitePath:
                                    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                name: "Basketball"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/5VuyhL2.png',
                                websitePath:
                                    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                name: "Football"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/5VuyhL2.png',
                                websitePath:
                                    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                name: "Hockey"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/5VuyhL2.png',
                                websitePath:
                                    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                name: "Badminton"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/RpQ95ud.png',
                                websitePath:
                                    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                name: "Tennis"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/5VuyhL2.png',
                                websitePath:
                                    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                name: "Table Tennis"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/eiuGm2o.png',
                                websitePath:
                                    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                name: "Relay"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/5VuyhL2.png',
                                websitePath:
                                    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                name: "Flag Football"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/5VuyhL2.png',
                                websitePath:
                                    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                name: "Chess"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/5VuyhL2.png',
                                websitePath:
                                    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                name: "Squash"),
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
                  "Sports Registrations",
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
                                inSite: false,
                                imagePath: 'https://i.imgur.com/5VuyhL2.png',
                                websitePath:
                                    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                name: "Basketball"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/5VuyhL2.png',
                                websitePath:
                                    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                name: "Football"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/5VuyhL2.png',
                                websitePath:
                                    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                name: "Hockey"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/5VuyhL2.png',
                                websitePath:
                                    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                name: "Badminton"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/RpQ95ud.png',
                                websitePath:
                                    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                name: "Tennis"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/5VuyhL2.png',
                                websitePath:
                                    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                name: "Table Tennis"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/eiuGm2o.png',
                                websitePath:
                                    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                name: "Relay"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/5VuyhL2.png',
                                websitePath:
                                    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                name: "Flag Football"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/5VuyhL2.png',
                                websitePath:
                                    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                name: "Chess"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/5VuyhL2.png',
                                websitePath:
                                    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                name: "Squash"),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        footer(MediaQuery.of(context).orientation ==
                            Orientation.landscape)
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

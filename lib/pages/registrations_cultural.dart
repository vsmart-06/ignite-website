import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import 'package:ignite_2023/widgets/events_button.dart';
import "package:ignite_2023/widgets/footer.dart";
import "package:ignite_2023/widgets/navigation_bar.dart";

class RegistrationsCultural extends StatefulWidget {
  @override
  State<RegistrationsCultural> createState() => _RegistrationsCulturalState();
}

class _RegistrationsCulturalState extends State<RegistrationsCultural> {
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
                  "Cultural Registrations",
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
                                imagePath: 'https://i.imgur.com/yx3dJZQ.png',
                                websitePath:
                                    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                name: "Battle of\nthe Bands"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/Fcv7aQv.png',
                                websitePath:
                                    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                name: "Karaoke"),
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
                                name: "Dance\nRoulette"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/5VuyhL2.png',
                                websitePath:
                                    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                name: "Silver\nScreen"),
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
                                name: "Thespian of\nMelody"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/5VuyhL2.png',
                                websitePath:
                                    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                name: "Icons and\nImitations"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/I5yddnf.png',
                                websitePath:
                                    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                name: "Metamorphosis"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/5VuyhL2.png',
                                websitePath:
                                    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                name: "Kryptos\nVisos"),
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
                                name: "Dyed in\nCrimson"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/GaAC6Sp.png',
                                websitePath:
                                    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                name: "Dealer's\nChoice"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/QHDug4A.png',
                                websitePath:
                                    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                name: "Shoot your\nShot"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/5VuyhL2.png',
                                websitePath:
                                    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                name: "Respawn"),
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
                                name: "Capture\nthe Flag"),
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
                  "Cultural Registrations",
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
                        SingleChildScrollView(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              EventsButton(
                                  inSite: false,
                                  imagePath: 'https://i.imgur.com/yx3dJZQ.png',
                                  websitePath:
                                      "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                  name: "Battle of\nthe Bands"),
                              EventsButton(
                                  inSite: false,
                                  imagePath: 'https://i.imgur.com/Fcv7aQv.png',
                                  websitePath:
                                      "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                  name: "Karaoke"),
                              EventsButton(
                                  inSite: false,
                                  imagePath: 'https://i.imgur.com/5VuyhL2.png',
                                  websitePath:
                                      "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                  name: "Dance\nRoulette"),
                              EventsButton(
                                  inSite: false,
                                  imagePath: 'https://i.imgur.com/5VuyhL2.png',
                                  websitePath:
                                      "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                  name: "Silver\nScreen"),
                              EventsButton(
                                  inSite: false,
                                  imagePath: 'https://i.imgur.com/5VuyhL2.png',
                                  websitePath:
                                      "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                  name: "Thespian\nof Melody"),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/5VuyhL2.png',
                                websitePath:
                                    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                name: "Icons and\nImitations"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/I5yddnf.png',
                                websitePath:
                                    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                name: "Metamorphosis"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/5VuyhL2.png',
                                websitePath:
                                    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                name: "Kryptos\nVisos"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/5VuyhL2.png',
                                websitePath:
                                    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                name: "Dyed in\nCrimson"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/GaAC6Sp.png',
                                websitePath:
                                    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                name: "Dealer's\nChoice"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/QHDug4A.png',
                                websitePath:
                                    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                name: "Shoot your\nShot"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/5VuyhL2.png',
                                websitePath:
                                    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                name: "Respawn"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/5VuyhL2.png',
                                websitePath:
                                    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                name: "Capture\nthe Flag"),
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

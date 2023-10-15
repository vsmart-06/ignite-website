import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:ignite_2023/pages/respawn_registrations.dart";
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
                        Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Card(
                            color: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                "Note: Each school can send a maximum of 2 teams. If more than 2 teams register, the first 2 teams that submit the form will be taken into account.",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30, fontFamily: titleFont),
                              ),
                            ),
                          ),
                        ),
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
                                name: "Pitch\nPerfect"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/6luARcL.png',
                                websitePath:
                                    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                name: "Razzmatazz"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/lijkg74.png',
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
                                imagePath: 'https://i.imgur.com/bhiMoTF.png',
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
                                imagePath: 'https://i.imgur.com/Xh3s9WP.png',
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
                                inSite: true,
                                imagePath: 'https://i.imgur.com/c4gjJaW.png',
                                websitePath:
                                    "/registrations/respawn",
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
                                name: "Throwback\nTrifecta"),
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
                        Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Card(
                            color: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                "Note: Each school can send a maximum of 2 teams. If more than 2 teams register, the first 2 teams that submit the form will be taken into account.",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30, fontFamily: titleFont),
                              ),
                            ),
                          ),
                        ),
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
                                  name: "Pitch\nPerfect"),
                              EventsButton(
                                  inSite: false,
                                  imagePath: 'https://i.imgur.com/6luARcL.png',
                                  websitePath:
                                      "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                  name: "Razzmatazz"),
                              EventsButton(
                                  inSite: false,
                                  imagePath: 'https://i.imgur.com/lijkg74.png',
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
                                imagePath: 'https://i.imgur.com/bhiMoTF.png',
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
                                websitePath: "https://i.imgur.com/Xh3s9WP.png",
                                name: "Kryptos\nVisos"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/GaAC6Sp.png',
                                websitePath:
                                    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                name: "Dealer's\nChoice"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/QHDug4A.png',
                                websitePath:
                                    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                name: "Shoot your\nShot"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EventsButton(
                                inSite: true,
                                imagePath: 'https://i.imgur.com/c4gjJaW.png',
                                websitePath:
                                    "/registrations/respawn",
                                name: "Respawn"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/5VuyhL2.png',
                                websitePath:
                                    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                name: "Throwback\nTrifecta"),
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

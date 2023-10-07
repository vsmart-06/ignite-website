import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import 'package:ignite_2023/widgets/events_button.dart';
import "package:ignite_2023/widgets/footer.dart";
import "package:ignite_2023/widgets/navigation_bar.dart";

class Cultural extends StatefulWidget {
  @override
  State<Cultural> createState() => _CulturalState();
}

class _CulturalState extends State<Cultural> {
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
                  "Events",
                  style: TextStyle(
                      color: Colors.white, fontSize: 35, fontFamily: titleFont),
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
                                websitePath: "/battle_of_the_bands",
                                name: "Battle of\nthe Bands"),
                            EventsButton(
                                imagePath: 'https://i.imgur.com/utM2H4D.png',
                                websitePath: "/karaoke",
                                name: "Riff Off/\nKaraoke"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EventsButton(
                                imagePath: 'https://i.imgur.com/utM2H4D.png',
                                websitePath: "/dance_roulette",
                                name: "Dance\nRoulette"),
                            EventsButton(
                                imagePath: 'https://i.imgur.com/utM2H4D.png',
                                websitePath: "/silver_screen",
                                name: "Silver\nScreen"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EventsButton(
                                imagePath: 'https://i.imgur.com/utM2H4D.png',
                                websitePath: "/thespian_of_melody",
                                name: "Thespian of\nMelody"),
                            EventsButton(
                                imagePath: 'https://i.imgur.com/utM2H4D.png',
                                websitePath: "/icons_and_imitations",
                                name: "Icons and\nImitations"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EventsButton(
                                imagePath: 'https://i.imgur.com/utM2H4D.png',
                                websitePath: "/metamorphosis",
                                name: "Metamorphosis"),
                            EventsButton(
                                imagePath: 'https://i.imgur.com/utM2H4D.png',
                                websitePath: "/kryptos_visos",
                                name: "Kryptos\nVisos"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EventsButton(
                                imagePath: 'https://i.imgur.com/utM2H4D.png',
                                websitePath: "/dyed_in_crimson",
                                name: "Dyed in\nCrimson"),
                            EventsButton(
                                imagePath: 'https://i.imgur.com/utM2H4D.png',
                                websitePath: "/dealers_choice",
                                name: "Dealer's\nChoice"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EventsButton(
                                imagePath: 'https://i.imgur.com/utM2H4D.png',
                                websitePath: "/shoot_your_shot",
                                name: "Shoot your\nShot"),
                            EventsButton(
                                imagePath: 'https://i.imgur.com/utM2H4D.png',
                                websitePath: "/respawn",
                                name: "Respawn"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EventsButton(
                                imagePath: 'https://i.imgur.com/utM2H4D.png',
                                websitePath: "/capture_the_flag",
                                name: "Capture\nThe Flag"),
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
                  "Events",
                  style: TextStyle(
                      color: Colors.white, fontSize: 35, fontFamily: titleFont),
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
                                  imagePath: 'https://i.imgur.com/utM2H4D.png',
                                  websitePath: "/battle_of_the_bands",
                                  name: "Battle of\nthe Bands"),
                              EventsButton(
                                  imagePath: 'https://i.imgur.com/utM2H4D.png',
                                  websitePath: "/karaoke",
                                  name: "Riff Off/\nKaraoke"),
                              EventsButton(
                                  imagePath: 'https://i.imgur.com/utM2H4D.png',
                                  websitePath: "/dance_roulette",
                                  name: "Dance\nRoulette"),
                              EventsButton(
                                  imagePath: 'https://i.imgur.com/utM2H4D.png',
                                  websitePath: "/silver_screen",
                                  name: "Silver\nScreen"),
                              EventsButton(
                                  imagePath: 'https://i.imgur.com/utM2H4D.png',
                                  websitePath: "/thespian_of_melody",
                                  name: "Thespian\nof Melody"),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EventsButton(
                                imagePath: 'https://i.imgur.com/utM2H4D.png',
                                websitePath: "/icons_and_imitations",
                                name: "Icons and\nImitations"),
                            EventsButton(
                                imagePath: 'https://i.imgur.com/utM2H4D.png',
                                websitePath: "/metamorphosis",
                                name: "Metamorphosis"),
                            EventsButton(
                                imagePath: 'https://i.imgur.com/utM2H4D.png',
                                websitePath: "/kryptos_visos",
                                name: "Kryptos\nVisos"),
                            EventsButton(
                                imagePath: 'https://i.imgur.com/utM2H4D.png',
                                websitePath: "/dyed_in_crimson",
                                name: "Dyed in\nCrimson"),
                            EventsButton(
                                imagePath: 'https://i.imgur.com/utM2H4D.png',
                                websitePath: "/dealers_choice",
                                name: "Dealer's\nChoice"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EventsButton(
                                imagePath: 'https://i.imgur.com/utM2H4D.png',
                                websitePath: "/shoot_your_shot",
                                name: "Shoot your\nShot"),
                            EventsButton(
                                imagePath: 'https://i.imgur.com/utM2H4D.png',
                                websitePath: "/respawn",
                                name: "Respawn"),
                            EventsButton(
                                imagePath: 'https://i.imgur.com/utM2H4D.png',
                                websitePath: "/capture_the_flag",
                                name: "Capture\nThe Flag"),
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

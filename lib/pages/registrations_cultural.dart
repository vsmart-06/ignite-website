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

  // TODO: When registrations open, change the isOpen variable to true
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    String? fontMain = GoogleFonts.ebGaramond().fontFamily;

    if (!isOpen) {
      return Scaffold(
          appBar: getTopBar(context),
          drawer: getDrawer(context),
          backgroundColor: Colors.black,
          body: RawScrollbar(
            thumbColor: Color(0xFF313133),
            thickness: 10,
            thumbVisibility: true,
            trackVisibility: true,
            controller: scroll,
            child: SingleChildScrollView(
              controller: scroll,
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding: MediaQuery.of(context).orientation ==
                              Orientation.landscape
                          ? EdgeInsets.all(150.0)
                          : EdgeInsets.all(30.0),
                      child: Text(
                        "Registrations for the cultural events will open on the 17th of October, 2023 (Tuesday).",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: fontMain,
                            fontSize: 50),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  footer(
                      MediaQuery.of(context).orientation == Orientation.landscape)
                ],
              ),
            ),
          ));
    }

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
                      color: Colors.white, fontSize: 50, fontFamily: fontMain),
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
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                "Note: Each school can send a maximum of 2 teams. If more than 2 teams register, the first 2 teams that submit the form will be taken into account.",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontFamily: fontMain),
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
                                    "https://forms.gle/ZmcpibSNVLHwc2e4A",
                                name: "Battle of\nthe Bands"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/Fcv7aQv.png',
                                websitePath:
                                    "https://forms.gle/Sgt5S4VnRRKzrSDg7",
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
                                    "https://forms.gle/cXbx7dmTT4cLx5Gn7",
                                name: "Razzmatazz"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/lijkg74.png',
                                websitePath:
                                    "https://forms.gle/5nUazpftANVZeChi9",
                                name: "Silver\nScreen"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/qFuYhLe.png',
                                websitePath:
                                    "https://forms.gle/Q3p6LDW4Uj2uyMP4A",
                                name: "Thespian of\nMelody"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/bhiMoTF.png',
                                websitePath:
                                    "https://forms.gle/5KdTukPT5AyyfdvH9",
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
                                    "https://forms.gle/2vwaJKy8msAKtEko9",
                                name: "Metamorphosis"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/Xh3s9WP.png',
                                websitePath:
                                    "https://forms.gle/499xw83SSco6XPQh6",
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
                                    "https://forms.gle/nFdyqZh8exG7989v5",
                                name: "Dealer's\nChoice"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/nMTu7YX.png',
                                websitePath:
                                    "https://forms.gle/XzAzZfLcdUizpCRq6",
                                name: "Shoot your\nShot"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EventsButton(
                                inSite: true,
                                imagePath: 'https://i.imgur.com/c4gjJaW.png',
                                websitePath: "/registrations/respawn",
                                name: "Respawn"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/5VuyhL2.png',
                                websitePath:
                                    "https://forms.gle/jehQpmcucD9XvJRPA",
                                name: "Throwback\nTrifecta"),
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
                  "Cultural Registrations",
                  style: TextStyle(
                      color: Colors.white, fontSize: 50, fontFamily: fontMain),
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
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                "Note: Each school can send a maximum of 2 teams. If more than 2 teams register, the first 2 teams that submit the form will be taken into account.",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontFamily: fontMain),
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
                                      "https://forms.gle/ZmcpibSNVLHwc2e4A",
                                  name: "Battle of\nthe Bands"),
                              EventsButton(
                                  inSite: false,
                                  imagePath: 'https://i.imgur.com/Fcv7aQv.png',
                                  websitePath:
                                      "https://forms.gle/Sgt5S4VnRRKzrSDg7",
                                  name: "Pitch\nPerfect"),
                              EventsButton(
                                  inSite: false,
                                  imagePath: 'https://i.imgur.com/6luARcL.png',
                                  websitePath:
                                      "https://forms.gle/cXbx7dmTT4cLx5Gn7",
                                  name: "Razzmatazz"),
                              EventsButton(
                                  inSite: false,
                                  imagePath: 'https://i.imgur.com/lijkg74.png',
                                  websitePath:
                                      "https://forms.gle/5nUazpftANVZeChi9",
                                  name: "Silver\nScreen"),
                              EventsButton(
                                  inSite: false,
                                  imagePath: 'https://i.imgur.com/qFuYhLe.png',
                                  websitePath:
                                      "https://forms.gle/Q3p6LDW4Uj2uyMP4A",
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
                                    "https://forms.gle/5KdTukPT5AyyfdvH9",
                                name: "Icons and\nImitations"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/I5yddnf.png',
                                websitePath:
                                    "https://forms.gle/2vwaJKy8msAKtEko9",
                                name: "Metamorphosis"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/Xh3s9WP.png',
                                websitePath:
                                    "https://forms.gle/499xw83SSco6XPQh6",
                                name: "Kryptos\nVisos"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/GaAC6Sp.png',
                                websitePath:
                                    "https://forms.gle/nFdyqZh8exG7989v5",
                                name: "Dealer's\nChoice"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/nMTu7YX.png',
                                websitePath:
                                    "https://forms.gle/XzAzZfLcdUizpCRq6",
                                name: "Shoot your\nShot"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EventsButton(
                                inSite: true,
                                imagePath: 'https://i.imgur.com/c4gjJaW.png',
                                websitePath: "/registrations/respawn",
                                name: "Respawn"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/5VuyhL2.png',
                                websitePath:
                                    "https://forms.gle/jehQpmcucD9XvJRPA",
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

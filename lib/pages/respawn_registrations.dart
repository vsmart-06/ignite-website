import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:ignite_2023/widgets/footer.dart";
import "package:ignite_2023/widgets/navigation_bar.dart";
import 'package:ignite_2023/widgets/respawn_widget.dart';

class RespawnRegs extends StatelessWidget {
  const RespawnRegs({super.key});

  @override
  Widget build(BuildContext context) {
    String? fontMain = GoogleFonts.ebGaramond().fontFamily;
    ScrollController? scroller = ScrollController();

    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      return Scaffold(
          appBar: getTopBar(context),
          drawer: getDrawer(context),
          backgroundColor: Colors.black,
          body: RawScrollbar(
            thumbColor: Color(0xFF313133),
            thickness: 10,
            thumbVisibility: true,
            trackVisibility: true,
            controller: scroller,
            child: SingleChildScrollView(
              controller: scroller,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "Respawn Registrations",
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontFamily: fontMain),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RespawnWidget(
                          name: "Rocket League",
                          link: "https://forms.gle/6rRQB7KsY2hyDfeD7",
                          notOpen: "Registrations will open soon!"),
                      RespawnWidget(
                          name: "Clash Royale",
                          link: "https://forms.gle/TZfavsMgyuZUJQ2g7"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RespawnWidget(
                          name: "FIFA '22",
                          link: "https://forms.gle/y7AyiQy7rJiqVwsq5"),
                      RespawnWidget(
                          name: "League of Legends",
                          link: "https://forms.gle/ffNJe6be5KGE4DfaA"),
                    ],
                  ),
                  footer(MediaQuery.of(context).orientation ==
                      Orientation.landscape)
                ],
              ),
            ),
          ));
    } else {
      return Scaffold(
          appBar: getTopBar(context),
          drawer: getDrawer(context),
          backgroundColor: Colors.black,
          body: RawScrollbar(
            thumbColor: Color(0xFF313133),
            thickness: 10,
            thumbVisibility: true,
            trackVisibility: true,
            controller: scroller,
            child: SingleChildScrollView(
              controller: scroller,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        "Respawn Registrations",
                        style: TextStyle(
                            fontSize: 50,
                            color: Colors.white,
                            fontFamily: fontMain),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    RespawnWidget(
                        name: "Rocket League",
                        link: "https://forms.gle/6rRQB7KsY2hyDfeD7",
                        notOpen: "Registrations will open soon!"),
                    RespawnWidget(
                        name: "Clash Royale",
                        link: "https://forms.gle/TZfavsMgyuZUJQ2g7"),
                    RespawnWidget(
                        name: "FIFA '22",
                        link: "https://forms.gle/y7AyiQy7rJiqVwsq5"),
                    RespawnWidget(
                        name: "League of Legends",
                        link: "https://forms.gle/ffNJe6be5KGE4DfaA"),
                    footer(MediaQuery.of(context).orientation ==
                        Orientation.landscape)
                  ],
                ),
              ),
            ),
          ));
    }
  }
}

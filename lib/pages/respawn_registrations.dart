import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import 'package:ignite_2023/widgets/events_button.dart';
import "package:ignite_2023/widgets/footer.dart";
import "package:ignite_2023/widgets/navigation_bar.dart";
import 'package:ignite_2023/widgets/respawn_widget.dart';
import "package:google_fonts/google_fonts.dart";


class RespawnRegs extends StatelessWidget {
  const RespawnRegs({super.key});

  @override
  Widget build(BuildContext context) {
    String? fontMain = GoogleFonts.ebGaramond().fontFamily;
    ScrollController? scroller = ScrollController();

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
                  child: Text("Respawn Registrations", style: TextStyle(fontSize: 50, color: Colors.white, fontFamily: fontMain),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RespawnWidget(
                        name: "Rocket League",
                        link: "https://www.youtube.com/watch?v=dQw4w9WgXcQ"),
                    RespawnWidget(
                        name: "Clash Royale",
                        link: "https://www.youtube.com/watch?v=dQw4w9WgXcQ"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RespawnWidget(
                        name: "FIFA",
                        link: "https://www.youtube.com/watch?v=dQw4w9WgXcQ"),
                    RespawnWidget(
                        name: "League of Legends",
                        link: "https://www.youtube.com/watch?v=dQw4w9WgXcQ"),
                  ],
                ),
                footer(MediaQuery.of(context).orientation == Orientation.landscape)
              ],
            ),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import "package:ignite_2023/dyed_in_crimson_widgets/hourly_clue.dart";
import "package:ignite_2023/dyed_in_crimson_widgets/navigation_bar.dart";
import "package:ignite_2023/dyed_in_crimson_widgets/footer.dart";
import "package:google_fonts/google_fonts.dart";

class DICUpdates extends StatelessWidget {
  const DICUpdates({super.key});

  @override
  Widget build(BuildContext context) {
    String? fontMain = GoogleFonts.ebGaramond().fontFamily;
    ScrollController scroller = ScrollController();

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
            children: [
              Text(
                "Updates",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: fontMain,
                  fontSize: 50
                )
              ),
              HourlyCard(clue: "Ayaan is dead"),
              HourlyCard(clue: "Harihar is dead"),
              HourlyCard(clue: "Anish is dead"),
              footer(MediaQuery.of(context).orientation == Orientation.landscape),
            ],
          ),
        ),
      ),
    );
  }
}

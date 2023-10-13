import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ignite_2023/widgets/navigation_bar.dart';
import 'package:ignite_2023/widgets/item_card.dart';
import "package:ignite_2023/widgets/footer.dart";

class Rules extends StatefulWidget {
  const Rules({super.key});

  @override
  State<Rules> createState() => _RulesState();
}

class _RulesState extends State<Rules> {
  String? fontMain = GoogleFonts.ebGaramond().fontFamily;
  ScrollController scroller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getTopBar(context),
      drawer: getTopBar(context),
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
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "IGNITE's Rules",
                  style: TextStyle(
                      fontSize: 50, color: Colors.white, fontFamily: fontMain),
                ),
              ),
              footer(
                  MediaQuery.of(context).orientation == Orientation.landscape)
            ],
          ),
        ),
      ),
    );
  }
}

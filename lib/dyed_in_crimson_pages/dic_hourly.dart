import 'package:flutter/material.dart';
import "package:ignite_2023/dyed_in_crimson_widgets/navigation_bar.dart";
import "package:ignite_2023/dyed_in_crimson_widgets/iframe.dart";
import "package:ignite_2023/dyed_in_crimson_widgets/footer.dart";
import "package:pointer_interceptor/pointer_interceptor.dart";
import "package:google_fonts/google_fonts.dart";

class DICUpdates extends StatelessWidget {
  const DICUpdates({super.key});

  @override
  Widget build(BuildContext context) {
    String? fontMain = GoogleFonts.ebGaramond().fontFamily;

    return Scaffold(
      appBar: getTopBar(context),
      drawer: getDrawer(context),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Text(
            "Updates",
            style: TextStyle(
              color: Colors.white,
              fontFamily: fontMain,
              fontSize: 50
            )
          ),
          footer(MediaQuery.of(context).orientation == Orientation.landscape),
        ],
      ),
    );
  }
}

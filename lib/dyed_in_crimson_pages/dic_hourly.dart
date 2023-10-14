import 'package:flutter/material.dart';
import "package:ignite_2023/dyed_in_crimson_widgets/navigation_bar.dart";
import "package:ignite_2023/dyed_in_crimson_widgets/iframe.dart";
import "package:ignite_2023/dyed_in_crimson_widgets/footer.dart";
import "package:pointer_interceptor/pointer_interceptor.dart";
import "package:google_fonts/google_fonts.dart";

class DICHourly extends StatelessWidget {
  const DICHourly({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getTopBar(context),
      drawer: getDrawer(context),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          footer(MediaQuery.of(context).orientation == Orientation.landscape),
        ],
      ),
    );
  }
}

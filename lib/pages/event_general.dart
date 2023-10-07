// ignore_for_file: must_be_immutable

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:ignite_2023/widgets/footer.dart";
import "package:ignite_2023/widgets/navigation_bar.dart";

class EventGeneral extends StatefulWidget {
  List<String>? eventHeads;
  String? logo;
  String? title;
  String? timings;
  String? about;
  EventGeneral(
      {super.key,
      this.eventHeads,
      this.logo,
      this.title,
      this.timings,
      this.about});

  @override
  State<EventGeneral> createState() => _EventGeneralState();
}

class _EventGeneralState extends State<EventGeneral> {
  List<Widget> headPictures = [];
  String? fontMain = GoogleFonts.ebGaramond().fontFamily;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    headPictures = [];
    for (String url in widget.eventHeads!) {
      headPictures
          .add(Image(image: NetworkImage(url), width: 100, height: 100));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getTopBar(context),
      drawer: getDrawer(context),
      backgroundColor: Colors.black,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(widget.logo!), opacity: 0.4)),
        child: Center(
          child: Column(
            children: [
              Text(widget.title!,
                  style: TextStyle(fontSize: 100, color: Colors.white, fontFamily: fontMain)),
              Text(widget.timings!,
                  style: TextStyle(fontSize: 50, color: Colors.white, fontFamily: fontMain)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: headPictures,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(widget.about!,
                          style: TextStyle(fontSize: 50, color: Colors.white, fontFamily: fontMain))
                    ],
                  )
                ],
              ),
              footer(MediaQuery.of(context).orientation == Orientation.landscape)
            ],
          ),
        ),
      ),
    );
  }
}

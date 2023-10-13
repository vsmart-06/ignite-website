// ignore_for_file: must_be_immutable

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:ignite_2023/widgets/footer.dart";
import "package:ignite_2023/widgets/navigation_bar.dart";

class EventGeneral extends StatefulWidget {
  List<List<String>>? eventHeads;
  String? logo;
  String? title;
  String? location;
  String? about;
  EventGeneral(
      {super.key,
      this.eventHeads,
      this.logo,
      this.title,
      this.location,
      this.about});

  @override
  State<EventGeneral> createState() => _EventGeneralState();
}

class _EventGeneralState extends State<EventGeneral> {
  List<Widget> headPictures = [];
  String? fontMain = GoogleFonts.ebGaramond().fontFamily;
  ScrollController scroller = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    headPictures = [];
    for (List<String> head in widget.eventHeads!) {
      headPictures.add(Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
              child:
                  Image(image: NetworkImage(head[0]), width: 150, height: 150),
            ),
            Text(head[1],
                style: TextStyle(
                    color: Colors.white, fontSize: 25, fontFamily: fontMain))
          ],
        ),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      return Scaffold(
        appBar: getTopBar(context),
        drawer: getDrawer(context),
        backgroundColor: Colors.black,
        body: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(widget.logo!), opacity: 0.3)),
          child: RawScrollbar(
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
                    child: Text(widget.title!,
                        style: TextStyle(
                            fontSize: 60,
                            color: Colors.white,
                            fontFamily: fontMain)),
                  ),
                  Text(widget.location!,
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                          fontFamily: fontMain)),
                  Padding(
                    padding: const EdgeInsets.only(top: 50, bottom: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: headPictures,
                        ),
                        Container(
                          width: width * 0.5,
                          child: Text(widget.about!,
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontFamily: fontMain)),
                        )
                      ],
                    ),
                  ),
                  footer(
                      MediaQuery.of(context).orientation == Orientation.landscape)
                ],
              ),
            ),
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: getTopBar(context),
        drawer: getDrawer(context),
        backgroundColor: Colors.black,
        body: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(widget.logo!), opacity: 0.3)),
          child: RawScrollbar(
            thumbColor: Color(0xFF313133),
            thickness: 10,
            thumbVisibility: true,
            trackVisibility: true,
            controller: scroller,
            child: SingleChildScrollView(
              controller: scroller,
              child: Column(
                children: [
                  Text(widget.title!,
                      style: TextStyle(
                          fontSize: 60,
                          color: Colors.white,
                          fontFamily: fontMain)),
                  Text(widget.location!,
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                          fontFamily: fontMain)),
                  Padding(
                    padding: const EdgeInsets.only(top: 50, bottom: 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: headPictures,
                        ),
                        Container(
                          width: width * 0.8,
                          child: Text(widget.about!,
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontFamily: fontMain)),
                        )
                      ],
                    ),
                  ),
                  footer(MediaQuery.of(context).orientation == Orientation.landscape)
                ],
              ),
            ),
          ),
        ),
      );
    }
  }
}

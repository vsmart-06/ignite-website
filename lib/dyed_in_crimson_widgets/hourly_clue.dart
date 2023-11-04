// ignore_for_file: must_be_immutable

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "dart:html";

class HourlyCard extends StatefulWidget {
  String? name;
  String? link;
  bool? isOpen;
  DateTime? openTime;
  
  HourlyCard({super.key, required this.name, this.link, required this.isOpen, required this.openTime});

  @override
  State<HourlyCard> createState() => _HourlyCardState();
}

class _HourlyCardState extends State<HourlyCard> {
  String? fontMain = GoogleFonts.ebGaramond().fontFamily;
  Color buttonColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    if (widget.isOpen! || (DateTime.now().isAfter(widget.openTime!))) {
      return Padding(
        padding: const EdgeInsets.all(20.0),
        child: TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
              side: MaterialStateProperty.all<BorderSide>(
                  BorderSide(color: Colors.white)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              fixedSize: MaterialStateProperty.all<Size>(Size(MediaQuery.of(context).size.width * 0.8, 500))),
          onPressed: (widget.link != null) ? () {
            window.open(widget.link!, widget.name!);
          } : null,
          onHover: (hover) {
            hover
                ? setState(() {
                    buttonColor = Color(0xFF8B0000);
                  })
                : setState(() {
                    buttonColor = Colors.black;
                  });
          },
          child: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Text(
                widget.name!,
                style: TextStyle(
                    color: Colors.white, fontSize: 40, fontFamily: fontMain),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      );
    }
    else {
      return Container();
    }
  }
}

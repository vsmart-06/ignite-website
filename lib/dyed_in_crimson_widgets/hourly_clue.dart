// ignore_for_file: must_be_immutable

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "dart:html";

class HourlyCard extends StatefulWidget {
  String? name;
  String? link;
  HourlyCard({super.key, required this.name, required this.link});

  @override
  State<HourlyCard> createState() => _HourlyCardState();
}

class _HourlyCardState extends State<HourlyCard> {
  String? fontMain = GoogleFonts.ebGaramond().fontFamily;
  Color buttonColor = Colors.black;

  @override
  Widget build(BuildContext context) {
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
            fixedSize: MaterialStateProperty.all<Size>(Size(MediaQuery.of(context).size.width * 0.8, 150))),
        onPressed: () {
          window.open(widget.link!, widget.name!);
        },
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
}

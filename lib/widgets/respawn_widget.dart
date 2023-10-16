// ignore_for_file: must_be_immutable

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "dart:html";

class RespawnWidget extends StatefulWidget {
  String? name;
  String? link;
  RespawnWidget({super.key, required this.name, required this.link});

  @override
  State<RespawnWidget> createState() => _RespawnWidgetState();
}

class _RespawnWidgetState extends State<RespawnWidget> {
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
              fixedSize:
                  MediaQuery.of(context).orientation == Orientation.landscape
                      ? MaterialStateProperty.all<Size>(
                          Size(MediaQuery.of(context).size.width * 0.3, 125))
                      : MaterialStateProperty.all<Size>(
                          Size(MediaQuery.of(context).size.width * 0.8, 150))),
          onPressed: () {
            window.open(widget.link!, "Respawn Registrations");
          },
          onHover: (hover) {
            hover
                ? setState(() {
                    buttonColor = Colors.orange;
                  })
                : setState(() {
                    buttonColor = Colors.black;
                  });
          },
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              widget.name!,
              style: TextStyle(
                  color: Colors.white, fontSize: 40, fontFamily: fontMain),
              textAlign: TextAlign.center,
            ),
          )),
    );
  }
}

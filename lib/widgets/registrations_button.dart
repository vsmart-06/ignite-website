import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "dart:html";

class RegistrationsButton extends StatefulWidget {
  final String link;
  final String event;
  RegistrationsButton({super.key, required this.event, required this.link});

  @override
  State<RegistrationsButton> createState() => _RegistrationsButtonState();
}

class _RegistrationsButtonState extends State<RegistrationsButton> {
  Color cardColor = Colors.black;
  String? fontMain = GoogleFonts.ebGaramond().fontFamily;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 200,
        height: 100,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(
              color: Colors.white
            )
          ),
          color: cardColor,
          child: TextButton(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                widget.event,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: fontMain,
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            onPressed: () => window.open(widget.link, "Registrations"),
            onHover: (value) {
              value ? setState(() {cardColor = Color(0xFF313133);}) : setState(() {cardColor = Colors.black;});
            },
          )
        ),
      ),
    );
  }
}
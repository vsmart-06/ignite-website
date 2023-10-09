// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";
import "dart:html";

class EventsButton extends StatefulWidget {
  final String imagePath;
  final String websitePath;
  final String name;
  final bool inSite;
  EventsButton({required this.imagePath, required this.websitePath, required this.name, required this.inSite});
  @override
  _EventsButtonState createState() => _EventsButtonState();
}

class _EventsButtonState extends State<EventsButton> with SingleTickerProviderStateMixin {

  
  late AnimationController animationController;
  late Animation animation;
  late Animation cardColor;
  late double size;
  String? font = GoogleFonts.ebGaramond().fontFamily;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 150));
    animation = Tween<double>(begin: 100, end: 300).chain(CurveTween(curve: Curves.easeInOut)).animate(animationController);
    cardColor = ColorTween(begin: Colors.transparent, end: Color(0xFF313133)).animate(animationController);
    animationController.addListener(() {setState(() {});});
  }

  void hoverAnimation(bool hover) {
    hover ? animationController.forward() : animationController.reverse();
  }

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).orientation == Orientation.landscape ? size = 0.14 : size = 0.12;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        color: cardColor.value,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: TextButton(
          onPressed: () {
            if (widget.inSite) {
              Navigator.pushNamed(context, widget.websitePath);
            }
            else {
              window.open(widget.websitePath, "External Link");
            }
          },
          onHover: (event) {
            hoverAnimation(event);
          },
          child: Column(
            children: [
              Image.network(
                widget.imagePath,
                width: MediaQuery.of(context).size.width*size,
                height: MediaQuery.of(context).size.width*size,
              ),
              Text(
                widget.name,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontFamily: font
                )
              )
            ],
          ),
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all<Size>(Size(animation.value, animation.value)),
          )
        ),
      ),
    );
  }
}
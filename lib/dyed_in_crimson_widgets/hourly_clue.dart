// ignore_for_file: must_be_immutable

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class HourlyCard extends StatefulWidget {
  String? clue;
  HourlyCard({super.key, required this.clue});

  @override
  State<HourlyCard> createState() => _HourlyCardState();
}

class _HourlyCardState extends State<HourlyCard> with SingleTickerProviderStateMixin {
  String? fontMain = GoogleFonts.ebGaramond().fontFamily;
  List<Widget> memberList = [];

  late AnimationController animationController;
  late Animation colorAnimation;
  late List<Animation> padAnimation;

  bool isPressed = false;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 100));
    colorAnimation = ColorTween(begin: Colors.white, end: Color(0xFF8b0000)).animate(animationController);
    padAnimation = [Tween<double>(begin: 20, end: 10).animate(animationController), Tween<double>(begin: 20, end: 30).animate(animationController)];
    animationController.addListener(() {setState(() {});});
  }

  void hoverAnimation(bool hover) {
    hover ? animationController.forward() : animationController.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, padAnimation[0].value, 20, padAnimation[1].value),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10) 
            )),
            side: MaterialStateProperty.all<BorderSide>(BorderSide(
              color: colorAnimation.value
            ))
            ),
          onPressed: () {
            if (MediaQuery.of(context).orientation == Orientation.portrait) {
              if (!isPressed) {
                hoverAnimation(true);
                setState(() {
                  isPressed = true;     
                });
              }
              else {
                hoverAnimation(false);
                setState(() {
                  isPressed = false;   
                });
              }
            }
          },
          onHover: (hover) {
            hover ? hoverAnimation(true) : hoverAnimation(false);
          },
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).orientation == Orientation.landscape ? MediaQuery.of(context).size.height * 0.2 : MediaQuery.of(context).size.height * 0.6,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  widget.clue!,
                  style: TextStyle(
                    fontFamily: fontMain,
                    fontSize: 30,
                    color: Colors.white
                  )
                )
              ),
            ),
          ),
        ),
      ),
    );
  }
}
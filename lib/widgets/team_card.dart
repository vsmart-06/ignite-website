// ignore_for_file: must_be_immutable

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class Team extends StatefulWidget {
  String? teamName;
  List<String>? members;
  Team({super.key, required this.teamName, required this.members});

  @override
  State<Team> createState() => _TeamState();
}

class _TeamState extends State<Team> with SingleTickerProviderStateMixin {
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
    colorAnimation = ColorTween(begin: Colors.white, end: Colors.orange).animate(animationController);
    padAnimation = [Tween<double>(begin: 20, end: 15).animate(animationController), Tween<double>(begin: 20, end: 25).animate(animationController)];
    animationController.addListener(() {setState(() {});});

    memberList = [];
    for (String member in widget.members!) {
      memberList.add(
        Text(
          member,
          style: TextStyle(
            color: Colors.white,
            fontFamily: fontMain,
            fontSize: 30,
            fontStyle: FontStyle.italic
          ),
          textAlign: TextAlign.center,
        )
      );
    }
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
            width: MediaQuery.of(context).orientation == Orientation.landscape ? MediaQuery.of(context).size.width * 0.3 : MediaQuery.of(context).size.width * 0.6,
            height: MediaQuery.of(context).orientation == Orientation.landscape ? MediaQuery.of(context).size.height * 0.45 : MediaQuery.of(context).size.height * 0.6,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    widget.teamName!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: fontMain,
                      fontSize: 40,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: memberList
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
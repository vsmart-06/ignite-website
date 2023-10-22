// ignore_for_file: must_be_immutable

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class Achievement extends StatefulWidget {
  String? teamName;
  List<String>? members;
  Achievement({super.key, required this.teamName, required this.members});

  @override
  State<Achievement> createState() => _AchievementState();
}

class _AchievementState extends State<Achievement> with SingleTickerProviderStateMixin {
  String? fontMain = GoogleFonts.ebGaramond().fontFamily;
  List<Widget> memberList = [];

  late AnimationController animationController;
  late Animation colorAnimation;
  late List<Animation> padAnimation;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 150));
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
          onPressed: () {},
          onHover: (hover) {
            hover ? hoverAnimation(true) : hoverAnimation(false);
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.teamName!,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: fontMain,
                    fontSize: 40,
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
    );
  }
}
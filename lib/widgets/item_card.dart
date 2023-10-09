// ignore_for_file: must_be_immutable

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class ItemCard extends StatefulWidget {
  String? logo;
  String? name;
  String? description;

  ItemCard(
      {super.key,
      required this.logo,
      required this.name,
      required this.description});

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> with SingleTickerProviderStateMixin {

  late AnimationController animationController;
  late Animation color_animation;
  late Animation elevation_animation;
  String? fontMain = GoogleFonts.ebGaramond().fontFamily;
  List<Widget> cardText = [];
  bool pressState = false;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 150));
    color_animation = ColorTween(begin: Color(0xFF1D1C1C), end: Colors.orange).animate(animationController);
    elevation_animation = Tween<double>(begin: 0, end: 20).chain(CurveTween(curve: Curves.easeInOut)).animate(animationController);
    animationController.addListener(() {setState(() {});});
    cardText = [Image(image: NetworkImage(widget.logo!), width: 150, height: 150),
            Text(
              widget.name!,
              style: TextStyle(fontSize: 40, color: Colors.white, fontFamily: fontMain),
            ),];
  }

  void hoverAnimation(bool hover) {
    if (hover) {
      animationController.forward();
      cardText = [Text(
              widget.description!,
              style: TextStyle(fontSize: 20, color: Colors.white, fontFamily: fontMain),
            ),];
    }
    else {
      animationController.reverse();
      cardText = [Image(image: NetworkImage(widget.logo!), width: 150, height: 150),
            Text(
              widget.name!,
              style: TextStyle(fontSize: 40, color: Colors.white, fontFamily: fontMain),
            ),];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation_animation.value,
      shadowColor: Colors.white,
      color: color_animation.value,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: TextButton(
        onHover: (value) => hoverAnimation(value),
        onPressed: () {
          if (MediaQuery.of(context).orientation == Orientation.portrait) {
            if (pressState) {
              hoverAnimation(false);
              setState(() {
                              pressState = false;
                            });
            }
            else {
              hoverAnimation(true);
              setState(() {
                              pressState = true;
                            });
            }
          }
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
          fixedSize: MaterialStateProperty.all<Size>(Size(250, 350))
        ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
                children: cardText
              ),
          )),
    );
  }
}

// ignore_for_file: must_be_immutable

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class ItemCard extends StatefulWidget {
  String? image;
  String? name;
  String? description;
  double? width;
  double? height;
  Color? color;

  ItemCard(
      {super.key,
      this.image,
      required this.name,
      required this.description,
      required this.width,
      required this.height,
      required this.color});

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard>
    with SingleTickerProviderStateMixin {
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
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 150));
    color_animation = ColorTween(begin: Color(0xFF1D1C1C), end: widget.color!)
        .animate(animationController);
    elevation_animation = Tween<double>(begin: 0, end: 20)
        .chain(CurveTween(curve: Curves.easeInOut))
        .animate(animationController);
    animationController.addListener(() {
      setState(() {});
    });
    cardText = [
      widget.image != null ? Image(image: NetworkImage(widget.image!), width: 150, height: 150) : Container(),
      Text(
        widget.name!,
        style:
            TextStyle(fontSize: 35, color: Colors.white, fontFamily: fontMain),
          textAlign: TextAlign.center,
      ),
    ];
  }

  void hoverAnimation(bool hover) {
    if (hover) {
      animationController.forward();
      cardText = [
        Text(
          widget.description!,
          style: TextStyle(
              fontSize: 25, color: Colors.white, fontFamily: fontMain),
          textAlign: TextAlign.center,
        ),
      ];
    } else {
      animationController.reverse();
      cardText = [
        widget.image != null ? Image(image: NetworkImage(widget.image!), width: 150, height: 150) : Container(),
        Text(
          widget.name!,
          style: TextStyle(
              fontSize: 35, color: Colors.white, fontFamily: fontMain),
          textAlign: TextAlign.center,
        ),
      ];
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
              } else {
                hoverAnimation(true);
                setState(() {
                  pressState = true;
                });
              }
            }
          },
          style: ButtonStyle(
              shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              fixedSize: MaterialStateProperty.all<Size>(
                  Size(widget.width!, widget.height!))),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: cardText),
          )),
    );
  }
}

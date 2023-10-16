// ignore_for_file: must_be_immutable

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class ItemCard extends StatefulWidget {
  String? image;
  String? name;
  String? backside;
  double? width;
  double? height;
  Color? color;
  bool? back;

  ItemCard(
      {super.key,
      this.image,
      required this.name,
      required this.backside,
      required this.width,
      required this.height,
      required this.color,
      required this.back});

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
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          widget.name!,
          style:
              TextStyle(fontSize: 35, color: Colors.white, fontFamily: fontMain),
            textAlign: TextAlign.center,
        ),
      ),
    ];
  }

  void hoverAnimation(bool hover) {
    if (hover) {
      animationController.forward();
      cardText = [
        !widget.back! ? Text(
          widget.backside!,
          style: TextStyle(
              fontSize: 25, color: Colors.white, fontFamily: fontMain),
          textAlign: TextAlign.center,
        ) : Image(image: NetworkImage(widget.backside!), width: 300, height: 300),
      ];
    } else {
      animationController.reverse();
      cardText = [
        widget.image != null ? Image(image: NetworkImage(widget.image!), width: 150, height: 150) : Container(),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            widget.name!,
            style: TextStyle(
                fontSize: 35, color: Colors.white, fontFamily: fontMain),
            textAlign: TextAlign.center,
          ),
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: cardText
            ),
          )),
    );
  }
}

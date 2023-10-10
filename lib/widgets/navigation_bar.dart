import 'package:flutter/material.dart';
import 'package:ignite_2023/widgets/header_button.dart';
import "package:google_fonts/google_fonts.dart";
import "dart:html";

AppBar? getTopBar(BuildContext context) {
  try {
    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      return AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey[900],
        actions: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.transparent),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      minimumSize:
                          MaterialStateProperty.all<Size>(Size(50, 50)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ))),
                  child: Image(
                      image: NetworkImage("https://i.imgur.com/utM2H4D.png"),
                      width: 55,
                      height: 55),
                  onPressed: () {
                    Navigator.popAndPushNamed(context, "/");
                  },
                ),
                HeaderButton(name: "Home", navPath: "/"),
                HeaderButton(name: "Events", navPath: "/events"),
                HeaderButton(name: "Registrations", navPath: "/registrations"),
                HeaderButton(name: "Merchandise", navPath: "/merchandise"),
                HeaderButton(name: "About", navPath: "/about"),
              ],
            ),
          ),
        ],
      );
    } else {
      return AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
      );
    }
  } catch (Exception) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.white),
    );
  }
}

String? font = GoogleFonts.questrial().fontFamily;
Drawer getDrawer(BuildContext context) {
  return Drawer(
    backgroundColor: Color(0xFF1D1C1C),
    width: MediaQuery.of(context).size.width * 0.8,
    child: Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 10,
          child: DrawerHeader(
            child: Row(
              children: [
                Image(image: NetworkImage("https://i.imgur.com/utM2H4D.png")),
                Text(
                  "IGNITE 2023",
                  style: TextStyle(
                      color: Colors.white, fontSize: 25, fontFamily: font),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.grey[900],
            ),
          ),
        ),
        ListTile(
          title: Text(
            "Home",
            style:
                TextStyle(color: Colors.white, fontFamily: font, fontSize: 20),
          ),
          onTap: () {
            Navigator.popAndPushNamed(context, "/");
          },
        ),
        ListTile(
          title: Text(
            "About",
            style:
                TextStyle(color: Colors.white, fontFamily: font, fontSize: 20),
          ),
          onTap: () {
            Navigator.popAndPushNamed(context, "/about");
          },
        ),
        ListTile(
          title: Text(
            "Events",
            style:
                TextStyle(color: Colors.white, fontFamily: font, fontSize: 20),
          ),
          onTap: () {
            Navigator.popAndPushNamed(context, "/events");
          },
        ),
        ListTile(
          title: Text(
            "Merchandise",
            style:
                TextStyle(color: Colors.white, fontFamily: font, fontSize: 20),
          ),
          onTap: () {
            Navigator.popAndPushNamed(context, "/merchandise");
          },
        ),
        ListTile(
          title: Text(
            "Registrations",
            style:
                TextStyle(color: Colors.white, fontFamily: font, fontSize: 20),
          ),
          onTap: () {
            Navigator.popAndPushNamed(context, "/registrations");
          },
        ),
        Expanded(
          child: Container(
            color: Color(0xFF1D1C1C),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text("CONTACT US",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: font,
                            fontSize: 25)),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("SOCIALS",
                            style: TextStyle(
                                color: Colors.white, fontFamily: font)),
                      ),
                      TextButton.icon(
                        onPressed: () {
                          window.open("https://www.instagram.com/ignite.gwh/",
                              "Instagram");
                        },
                        icon: Image(
                            image: NetworkImage(
                                "https://png.pngtree.com/png-clipart/20180626/ourmid/pngtree-instagram-icon-instagram-logo-png-image_3584853.png"),
                            width: 30,
                            height: 30),
                        label: Text("INSTAGRAM",
                            style: TextStyle(
                                color: Colors.white, fontFamily: font)),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 15),
                    child: Text("LOCATION",
                        style:
                            TextStyle(color: Colors.white, fontFamily: font)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: TextButton(
                      onPressed: () {
                        window.open(
                            "https://goo.gl/maps/DUGyBHCAu287hoAD9", "school");
                      },
                      child: Text("Greenwood High School Sarjapur",
                          style:
                              TextStyle(color: Colors.white, fontFamily: font)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("EMAILS",
                        style:
                            TextStyle(color: Colors.white, fontFamily: font)),
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                          child: TextButton(
                            onPressed: () {
                              window.open("mailto:ignite@greenwoodhigh.edu.in",
                                  "igniteEmail");
                            },
                            child: Text("ignite@greenwoodhigh.edu.in",
                                style: TextStyle(
                                    color: Colors.white, fontFamily: font)),
                          ),
                        )
                      ]),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                  )
                ]),
          ),
        )
      ],
    ),
  );
}

// ignore_for_file: must_be_immutable

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "dart:html";

Widget footer(bool landscape, BuildContext context) {
  String? fontMain = GoogleFonts.questrial().fontFamily;
  try{
  if(landscape) {
    return Padding(
    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
    child: Container(
      color: Color(0xFF1D1C1C),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Image(image: NetworkImage("https://i.imgur.com/5VuyhL2.png"), width: 150, height: 150),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: null,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Text(
                        "CONTACT US",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: fontMain,
                          fontSize: 25
                        )
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: null,
                        child: Text(
                          "SOCIALS",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: fontMain
                          )
                        ),
                      ),
                      TextButton.icon(
                        onPressed: () {
                          window.open("https://www.instagram.com/ignite.gwh/", "Instagram");
                        },
                        icon: Image(image: NetworkImage("https://png.pngtree.com/png-clipart/20180626/ourmid/pngtree-instagram-icon-instagram-logo-png-image_3584853.png"), width: 30, height: 30), 
                        label: Text(
                          "INSTAGRAM",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: fontMain
                          )
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: null,
                        child: Text(
                          "LOCATION",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: fontMain
                          )
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                        window.open("https://goo.gl/maps/DUGyBHCAu287hoAD9", "school");
                        },
                        child: Text(
                          "Greenwood High School Sarjapur",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: fontMain
                          )
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: null,
                        child: Text(
                          "EMAILS",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: fontMain
                          )
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          TextButton(
                            onPressed: () {
                              window.open("mailto:ignite@greenwoodhigh.edu.in", "igniteEmail");
                            },
                            child: Text(
                              "ignite@greenwoodhigh.edu.in",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: fontMain
                              )
                            ),
                          ),
                        ]
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, "/organizing_comittee");
            },
            child: Image(
              image: NetworkImage("https://images.crunchbase.com/image/upload/c_lpad,h_256,w_256,f_auto,q_auto:eco,dpr_1/v1484114026/qr6mhllp8hd2amn4awaa.png"),
              width: 200,
              height: 200,
            ),
          )
        ],
      )
    ),
  );
  }
  else{
  return Padding(padding: EdgeInsets.all(0));
  }
}
catch(Exception){return Padding(padding: EdgeInsets.all(0));}
}

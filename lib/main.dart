import "package:flutter/material.dart";
import "package:ignite_2023/pages/home_page.dart";
import 'package:ignite_2023/pages/cultural_page.dart';
import "package:ignite_2023/pages/events_choice.dart";
import "package:ignite_2023/pages/sports_page.dart";
import "package:ignite_2023/pages/event_general.dart";
import "package:ignite_2023/pages/about_page.dart";
import "package:ignite_2023/pages/registrations_page.dart";
import "package:ignite_2023/pages/registrations_cultural.dart";
import "package:ignite_2023/pages/registrations_sports.dart";

void main() {
  runApp(
    MaterialApp(
      title: "Ignite 2023",
      routes: {
        "/": (context) => const Home(),

        "/events": (context) => CultSport(),
        "/about": (context) => About(),
        
        "/registrations": (context) => RegChoice(),
        "/sports_registrations": (context) => RegistrationsSports(),
        "/cultural_registrations": (context) => RegistrationsCultural(),

        "/cultural": (context) => Cultural(),
        "/sports": (context) => Sports(),
        
        "/battle_of_the_bands": (context) => EventGeneral(eventHeads: ["https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png"], logo: "https://i.imgur.com/utM2H4D.png", title: "Title", about: "About Me", timings: "Now"),
        "/karaoke": (context) => EventGeneral(eventHeads: ["https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png"], logo: "https://i.imgur.com/utM2H4D.png", title: "Title", about: "About Me", timings: "Now"),
        "/dance_roulette": (context) => EventGeneral(eventHeads: ["https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png"], logo: "https://i.imgur.com/utM2H4D.png", title: "Title", about: "About Me", timings: "Now"),
        "/silver_screen": (context) => EventGeneral(eventHeads: ["https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png"], logo: "https://i.imgur.com/utM2H4D.png", title: "Title", about: "About Me", timings: "Now"),
        "/thespian_of_melody": (context) => EventGeneral(eventHeads: ["https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png"], logo: "https://i.imgur.com/utM2H4D.png", title: "Title", about: "About Me", timings: "Now"),
        "/icons_and_imitations": (context) => EventGeneral(eventHeads: ["https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png"], logo: "https://i.imgur.com/utM2H4D.png", title: "Title", about: "About Me", timings: "Now"),
        "/metamorphosis": (context) => EventGeneral(eventHeads: ["https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png"], logo: "https://i.imgur.com/utM2H4D.png", title: "Title", about: "About Me", timings: "Now"),
        "/kryptos_visos": (context) => EventGeneral(eventHeads: ["https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png"], logo: "https://i.imgur.com/utM2H4D.png", title: "Title", about: "About Me", timings: "Now"),
        "/dyed_in_crimson": (context) => EventGeneral(eventHeads: ["https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png"], logo: "https://i.imgur.com/utM2H4D.png", title: "Title", about: "About Me", timings: "Now"),
        "/dealers_choice": (context) => EventGeneral(eventHeads: ["https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png"], logo: "https://i.imgur.com/utM2H4D.png", title: "Title", about: "About Me", timings: "Now"),
        "/shoot_your_shot": (context) => EventGeneral(eventHeads: ["https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png"], logo: "https://i.imgur.com/utM2H4D.png", title: "Title", about: "About Me", timings: "Now"),
        "/respawn": (context) => EventGeneral(eventHeads: ["https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png"], logo: "https://i.imgur.com/utM2H4D.png", title: "Title", about: "About Me", timings: "Now"),
        "/capture_the_flag": (context) => EventGeneral(eventHeads: ["https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png"], logo: "https://i.imgur.com/utM2H4D.png", title: "Title", about: "About Me", timings: "Now"),

        
        "/basketball": (context) => EventGeneral(eventHeads: ["https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png"], logo: "https://i.imgur.com/utM2H4D.png", title: "Title", about: "About Me", timings: "Now"),
        "/football": (context) => EventGeneral(eventHeads: ["https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png"], logo: "https://i.imgur.com/utM2H4D.png", title: "Title", about: "About Me", timings: "Now"),
        "/hockey": (context) => EventGeneral(eventHeads: ["https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png"], logo: "https://i.imgur.com/utM2H4D.png", title: "Title", about: "About Me", timings: "Now"),
        "/badminton": (context) => EventGeneral(eventHeads: ["https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png"], logo: "https://i.imgur.com/utM2H4D.png", title: "Title", about: "About Me", timings: "Now"),
        "/tennis": (context) => EventGeneral(eventHeads: ["https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png"], logo: "https://i.imgur.com/utM2H4D.png", title: "Title", about: "About Me", timings: "Now"),
        "/table_tennis": (context) => EventGeneral(eventHeads: ["https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png"], logo: "https://i.imgur.com/utM2H4D.png", title: "Title", about: "About Me", timings: "Now"),
        "/swimming": (context) => EventGeneral(eventHeads: ["https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png"], logo: "https://i.imgur.com/utM2H4D.png", title: "Title", about: "About Me", timings: "Now"),
        "/relay": (context) => EventGeneral(eventHeads: ["https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png"], logo: "https://i.imgur.com/utM2H4D.png", title: "Title", about: "About Me", timings: "Now"),
        "/chess": (context) => EventGeneral(eventHeads: ["https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png"], logo: "https://i.imgur.com/utM2H4D.png", title: "Title", about: "About Me", timings: "Now"),
        "/squash": (context) => EventGeneral(eventHeads: ["https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png"], logo: "https://i.imgur.com/utM2H4D.png", title: "Title", about: "About Me", timings: "Now"),
        "/flag_football": (context) => EventGeneral(eventHeads: ["https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png", "https://i.imgur.com/utM2H4D.png"], logo: "https://i.imgur.com/utM2H4D.png", title: "Title", about: "About Me", timings: "Now"),
      }
    )
  );
}

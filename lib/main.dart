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
import "package:ignite_2023/pages/merchandise_page.dart";

import "package:ignite_2023/dyed_in_crimson_pages/dic_home.dart";

void main() {
  runApp(MaterialApp(title: "IGNITE 2023", routes: {
    "/": (context) => const Home(),
    "/events": (context) => CultSport(),
    "/merchandise": (context) => const Merchandise(),
    "/registrations": (context) => RegChoice(),
    "/about": (context) => const About(),

    "/events/cultural": (context) => Cultural(),
    "/events/sports": (context) => Sports(),

    "/registrations/sports": (context) => RegistrationsSports(),
    "/registrations/cultural": (context) => RegistrationsCultural(),
    "/events/cultural/dyed_in_crimson/home": (context) => DICHome(),

    "/events/cultural/battle_of_the_bands": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png"
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Title",
            about: "About Me",
            timings: "Now"),
    "/events/cultural/karaoke": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png"
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Title",
            about: "About Me",
            timings: "Now"),
    "/events/cultural/dance_roulette": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png"
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Title",
            about: "About Me",
            timings: "Now"),
    "/events/cultural/silver_screen": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png"
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Title",
            about: "About Me",
            timings: "Now"),
    "/events/cultural/thespian_of_melody": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png"
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Title",
            about: "About Me",
            timings: "Now"),
    "/events/cultural/icons_and_imitations": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png"
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Title",
            about: "About Me",
            timings: "Now"),
    "/events/cultural/metamorphosis": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png"
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Title",
            about: "About Me",
            timings: "Now"),
    "/events/cultural/kryptos_visos": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png"
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Title",
            about: "About Me",
            timings: "Now"),
    "/events/cultural/dyed_in_crimson": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png"
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Title",
            about: "About Me",
            timings: "Now"),
    "/events/cultural/dealers_choice": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png"
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Title",
            about: "About Me",
            timings: "Now"),
    "/events/cultural/shoot_your_shot": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png"
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Title",
            about: "About Me",
            timings: "Now"),
    "/events/cultural/respawn": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png"
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Title",
            about: "About Me",
            timings: "Now"),
    "/events/cultural/capture_the_flag": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png"
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Title",
            about: "About Me",
            timings: "Now"),
    "/events/sports/basketball": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png"
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Title",
            about: "About Me",
            timings: "Now"),
    "/events/sports/football": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png"
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Title",
            about: "About Me",
            timings: "Now"),
    "/events/sports/hockey": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png"
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Title",
            about: "About Me",
            timings: "Now"),
    "/events/sports/badminton": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png"
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Title",
            about: "About Me",
            timings: "Now"),
    "/events/sports/tennis": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png"
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Title",
            about: "About Me",
            timings: "Now"),
    "/events/sports/table_tennis": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png"
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Title",
            about: "About Me",
            timings: "Now"),
    "/events/sports/relay": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png"
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Title",
            about: "About Me",
            timings: "Now"),
    "/events/sports/chess": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png"
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Title",
            about: "About Me",
            timings: "Now"),
    "/events/sports/squash": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png"
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Title",
            about: "About Me",
            timings: "Now"),
    "/events/sports/flag_football": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png"
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Title",
            about: "About Me",
            timings: "Now"),
  }));
}

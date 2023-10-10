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
import "package:ignite_2023/dyed_in_crimson_pages/dic_characters.dart";

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
    "/dyed_in_crimson/home": (context) => DICHome(),
    "/dyed_in_crimson/characters": (context) => DICCharacters(),
    "/events/cultural/battle_of_the_bands": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/utM2H4D.png" //Saishruthi
                  "https://i.imgur.com/CXnUPKa.jpg", //Rishikesh
              "https://i.imgur.com/NZSlmx9.jpg", //Prachi
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Title",
            about: "About Me",
            timings: "Now"),
    "/events/cultural/karaoke": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/DoXOGJU.jpg", //Keerthana
              "https://i.imgur.com/utM2H4D.png", //Harini
              "https://i.imgur.com/yKJPgJM.jpg" //Samhita
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Title",
            about: "About Me",
            timings: "Now"),
    "/events/cultural/dance_roulette": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/WvN3Sqb.jpg", //Ishani
              "https://i.imgur.com/kAfeRnY.jpg", //Aishwarya
              "https://i.imgur.com/6xmimiP.jpg" //Surabhi
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
              "https://i.imgur.com/z6do4Xn.jpg", //Veena
              "https://i.imgur.com/XNk2F6S.png", //Pragati
              "https://i.imgur.com/utM2H4D.png" //Tisya
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Title",
            about: "About Me",
            timings: "Now"),
    "/events/cultural/metamorphosis": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/WsmH49D.jpg", //Ananya
              "https://i.imgur.com/ArWQyzf.jpg", //Yuvika
              "https://i.imgur.com/utM2H4D.png" //Shruti
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Title",
            about: "About Me",
            timings: "Now"),
    "/events/cultural/kryptos_visos": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/utM2H4D.png", //Ananya
              "https://i.imgur.com/hawKBo1.jpg", //Krithika
              "https://i.imgur.com/0ovJqP9.jpg" //Trisha
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Title",
            about: "About Me",
            timings: "Now"),
    "/events/cultural/dyed_in_crimson": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/y0L6iaz.jpg", //Anish
              "https://i.imgur.com/uPvKNKg.jpg", //Ayaan
              "https://i.imgur.com/uHcV18G.jpg" //Harihar
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Title",
            about: "About Me",
            timings: "Now"),
    "/events/cultural/dealers_choice": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/SC9M03A.jpg", //Mukul
              "https://i.imgur.com/H2pj0vx.jpg", //Atreyi
              "https://i.imgur.com/sauO30h.jpg" //Riana
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
              "https://i.imgur.com/8BoIRDZ.jpg", //Resham
              "https://i.imgur.com/utM2H4D.png" //Aarnav
                  "https://i.imgur.com/objObOS.jpg", //Deepta
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

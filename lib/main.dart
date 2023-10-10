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
            title: "Battle of the Bands",
            about: "An enthralling, yet ferocious battle between talented young musicians soon begins. Transcendence will put the skill of eager bands to the test, as their performances weave their way through different musical eras that will throw you in otherworldly dimensions.",
            timings: "Now"),
    "/events/cultural/karaoke": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/DoXOGJU.jpg", //Keerthana
              "https://i.imgur.com/utM2H4D.png", //Harini
              "https://i.imgur.com/yKJPgJM.jpg" //Samhita
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Karaoke",
            about: "Are you interested in singing for the sake of it? Pitch Perfect is an event centred on karaoke and riff off. Teams will compete to complete the lyrics and  participate in a musical roulette over the course of 2 rounds. Musical talent and the ability to excel with the conditions of each round are prioritised, but moreover, the event aims to spread the harmony and joy of music. Round 1 includes participants engaging in riff off, and Round 2 involves Roulette with a slight twist. Both rounds will be focused on themes, like pop, 90's music and country, to name a few.",
            timings: "Now"),
    "/events/cultural/dance_roulette": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/WvN3Sqb.jpg", //Ishani
              "https://i.imgur.com/kAfeRnY.jpg", //Aishwarya
              "https://i.imgur.com/6xmimiP.jpg" //Surabhi
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Dance Roulette",
            about: "Witness an electrifying dance event like no other!\n\nRazzMatazz features two rounds of captivating dance performances that will enthral the audience and keep them engaged throughout. Round 1 gives the participants an opportunity to demonstrate their talent and skill. From Hip-hop to Contemporary and Bollywood, this round will showcase a mesmerising display of rhythm and harmony, that will bring the stage alive. Round 2 will bring the competition to a whole new level, where the best dancers from the qualified teams will go head to head in an improv dance battle.",
            timings: "Now"),
    "/events/cultural/silver_screen": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/53ove4U.jpg", //Isha
              "https://i.imgur.com/UwF7yT5.jpg", //Dhriti
              "https://i.imgur.com/utM2H4D.png" //Mayaan
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Silver Screen",
            about: "Step into the shadowy world of intrigue and deception at Silver Screen, our Film Noir themed festival. Explore the tropes of the timeless classics and modern masterpieces that define this genre, while exploring your own creative direction in the production of your own films.",
            timings: "Now"),
    "/events/cultural/thespian_of_melody": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/bzkqU5C.jpg", //Khwahish
              "https://i.imgur.com/wioimZB.jpg", //Annvi
              "https://i.imgur.com/f3QIMGQ.jpg" //Pracheeta
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Thespian of Melody",
            about: "Lyrics, Camera and Action!!\n\nAlways singing dramatically in front of the mirror only to mess up the melody? Well here’s your time to shine at one of the most entertaining theatre event. Where you show off your acting skills by enacting the lyrics from your favorite song without having to worry about being out of tune for round 1. Channel your inner drama queen to make it into round 2, where moody emotions are coming your way to twist you and your songs.",
            timings: "Now"),
    "/events/cultural/icons_and_imitations": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/z6do4Xn.jpg", //Veena
              "https://i.imgur.com/XNk2F6S.png", //Pragati
              "https://i.imgur.com/utM2H4D.png" //Tisya
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Icons and Imitations",
            about: "Strut the runway starring as the most legendary fashion icons of the 20th and 21st century. Each team will randomly be assigned an icon, from Bowie to Madonna, and must take inspiration for their looks from the fashion idol, with their own personal flair of creativity. The second round will feature outfits from various randomly assigned movies. Break a heel!",
            timings: "Now"),
    "/events/cultural/metamorphosis": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/WsmH49D.jpg", //Ananya
              "https://i.imgur.com/ArWQyzf.jpg", //Yuvika
              "https://i.imgur.com/utM2H4D.png" //Shruti
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Metamorphosis",
            about: "A relay race for your mind where the canvas is your track and the paintbrush is your baton- sounds interesting?\n\nWatch art reshape before your eyes!\n\nEvery stroke builds upon the last and an artist’s vision blooms into another’s creation, building onto a masterpiece of collaboration. Bring any art mediums to display your skills.  Each participant blends their insight, furnishing a blank canvas into a kaleidoscope of creativity. Show off your artworks in the mini exhibition!",
            timings: "Now"),
    "/events/cultural/kryptos_visos": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/utM2H4D.png", //Ananya
              "https://i.imgur.com/hawKBo1.jpg", //Krithika
              "https://i.imgur.com/0ovJqP9.jpg" //Trisha
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Kryptos Visos",
            about: "About Me",
            timings: "Now"),
    "/events/cultural/dyed_in_crimson": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/uHcV18G.jpg" //Harihar
              "https://i.imgur.com/uPvKNKg.jpg", //Ayaan
              "https://i.imgur.com/y0L6iaz.jpg", //Anish
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Dyed in Crimson",
            about: "Families shattered. Bloodied hands. A hidden killer.\n\nA murder mystery without compare.\n\nEnter a world filled with secrets, intrigue, and murder galore. As you find yourself in the midst of two feuding families and a murder that threatens their very legacies, you must maneuver around veils of deceit and concealed motives to uncover the one true murderer. Their fate lies in your hands — the last chance to piece together a shattered bloodline.\n\nFind the killer or die trying.",
            timings: "Now"),
    "/events/cultural/dealers_choice": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/sauO30h.jpg" //Riana
              "https://i.imgur.com/SC9M03A.jpg", //Mukul
              "https://i.imgur.com/H2pj0vx.jpg", //Atreyi
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Dealer's Choice",
            about: "Embark on voyage of business brilliance. Are you ready to gamble it all? Join us in this real of cultural showdown of strategy and creativity that test both your skill and luck. Is your business acumen enough? Or will you succumb to the trigger.",
            timings: "Now"),
    "/events/cultural/shoot_your_shot": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/s8XQnmA.jpg", //Thanvi
              "https://i.imgur.com/wVabaMb.jpg", //Yashaswini
              "https://i.imgur.com/qU82cFf.jpg" //Nivedhita
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Shoot your Shot",
            about: "Get ready to embark on a visual journey like no other in our photography event! Join us for an immersive experience that celebrates the art of photography and individuality. Showcase your skills across 2 rounds and capture the fleeting and breathtaking moments that make each individual unique. The best photographers will be moving onto round 2 which requires them to take their talents to a whole new level in capturing pictures that relate to a surprise prompt within IGNITE. Whether you're a seasoned pro or a budding enthusiast, this event promises to IGNITE your passion and spark your creativity. Come, be a part of this mesmerising celebration of the art at Shoot Your Shot !!",
            timings: "Now"),
    "/events/cultural/respawn": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/zk0OKgH.jpg", //Neha
              "https://i.imgur.com/ye3IHZh.jpg", //Anish
              "https://i.imgur.com/iWQO2VG.png" //Shrest
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Respawn",
            about: "Ignite’s most iconic event returns to the grand stage this year. Keeping tradition intact, participants are invited to compete in Fifa 2022 and Clash Royale. Additionally, we will be introducing the ultimate showdown of tactical prowess and teamwork in the form of our 5v5 VALORANT tournament!",
            timings: "Now"),
    "/events/cultural/capture_the_flag": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/8BoIRDZ.jpg", //Resham
              "https://i.imgur.com/utM2H4D.png" //Aarnav
              "https://i.imgur.com/objObOS.jpg", //Deepta
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Capture the Flag",
            about: "Get ready to ignite your passion for a thrilling school event called 'Trinity' at the grandest school fest in town! This extraordinary event promises a day of non-stop excitement and camaraderie, where three exhilarating games - Capture the Flag, Ultimate Frisbee, and Chor-Police - come together to create an unforgettable experience.\n\nPicture yourself sprinting through the field, strategizing to capture the flag, or diving to make that epic Frisbee catch. Feel the adrenaline rush as you chase and strategize in a heart-pounding game of Chor-Police. Trinity isn't just about games; it's about forging friendships, building teamwork, and making memories that will last a lifetime.\n\n Don't miss your chance to be part of this epic showdown. Get ready to unleash your inner champion.",
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

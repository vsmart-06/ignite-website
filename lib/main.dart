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
            title: "Basketball",
            about: "Get ready to dribble, shoot and slam dunk your way into action. Join us for an electrifying basketball event with jaw-dropping plays. It's time to lace up your kicks and embrace the game like never before. Best of luck to all teams!\n\n1. Teams consisting of 8-11 players each\n2. The tournament will adhere to a knockout-style format.\n3. Officiating will be based on FIBA rules.\n4. Boys matches feature 10-minute quarters, while girls' matches consist of 7-minute quarters.",
            timings: "Now"),
    "/events/sports/football": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png"
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Football",
            about: "About Me",
            timings: "Now"),
    "/events/sports/hockey": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png"
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Hockey",
            about: "About Me",
            timings: "Now"),
    "/events/sports/badminton": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png"
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Badminton",
            about: "Allow us to introduce a game of coordination, strength and agility. Badminton is an exciting and fast paced sport characterized by its elegance and precision.The sport requires  quick reflexes and strategic finesse. Welcome to the Ignite 2023 Badminton Tournament, where speed meets strategy, and every rally is a heartbeat.\n• There will be 4 categories - Boys Singles, Girls Singles, Boys Doubles and Girls Doubles.\n• Each team will be allowed to bring 8 students( 2 players for the singles categories, 2 pair of players for the doubles categories and 2 optional subs )\n• This tournament will have 4 brackets, with 3 schools in each bracket. Within the bracket, a Round Robin format will take place, and the winner of the bracket will advance to Semi-finals. If all schools win 1 match, the team with the highest point difference will proceed to the Semi-finals.\n• Each match till the Semi-finals will be a best of 3 games, 11 points. Semi-finals and Finals will be 21 points best of 3. Golden point will be for 11 point matches and deuce for 21 point matches.\n• BWF rules will be followed\n• We will be using AS2 feather shuttles.\n\nEmploy the power in your wrists and the strength of your mind to place the shuttle in the most strategic places possible. Smash your way to glory by joining us at this fun-filled and exciting event!!",
            timings: "Now"),
    "/events/sports/tennis": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png"
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Tennis",
            about: "Welcome to the Tennis Tournament at IGNITE ’23! Where strategy meets stamina, and where you can take significant strides on the staircase to success.\n\nAt this year’s edition, the following format will be adhered to:\n- We will have both boys’ and girls’ tournaments – on hard courts.\n- Each participating team must have 3 or 4 members – 1 or 2 singles players, and a pair of doubles players.\n- The tournaments will be held in a knockout format.\n- For the first round of doubles the team that wins 3 games first shall advance.\n- Likewise, the player that wins 4 games first for singles shall advance.\n- In the semis and finals, it will be a one-set match.\n- All games shall be played according to ATP and WTA rules.\n\nRegister now and grab the opportunity to participate in fast-paced and fun-filled sporting beauty, and experience an intense cross-court adrenaline rush!",
            timings: "Now"),
    "/events/sports/table_tennis": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png"
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Table Tennis",
            about: "“I fear not the man who has practiced 10,000 backhands once, but i do fear a man who has practiced one backhand 10,000 times”-Bruce Lee\n\nJust as Bruce Lee once said,\nIn our sport, it's that one spin, that one smash, that one return perfected over time that can make all the difference. Join us at the upcoming table tennis event. Hone your skills, challenge yourself, and be a part of a community that values precision, dedication, and the beauty of the game.\n\nWe welcome you to the Table Tennis event at Ignite’24, See you at the court….\n\nTeams of 3-4 are eligible to register.\nThe format shall be as follows:\n- Each match shall contain 3 rounds: Singles 1, Singles 2, and Doubles 1, consisting of 11 points each.\n- Teams who win in each round will accumulate points and the team with the highest score after the doubles round wins. They will be qualified for the semi-finals and finals respectively\n- Official ITTF Rules will be followed and decisions of the umpires will be final.\n- The teams will have to come up with their player sequence as to who will play in the singles(2 players) and in the doubles(2 players) rounds respectively.\n- There shall be separate events for boys and girls.",
            timings: "Now"),
    "/events/sports/relay": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png"
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Relay",
            about: "Relay, the essence of teamwork and speed, takes the stage this year at Ignite 2023. We call all athletes to take part in this thrilling competition. Teams will go through heats, before the top teams are selected to move on to the finals. So get ready, every stride and second brings you closer to victory!\n\n- There are two categories: 4 x 100m (boys) | 4 x 100m (girls)\n- Each team should consist of 4 runners with 1-2 optional substitutes\n- There will be two rounds: Heats on day 1 | Finals on day 2\n- The standard world athletics rules will be followed for the relay.\n\nPlease note dropping of the baton during any point of the race will lead to disqualification.",
            timings: "Now"),
    "/events/sports/chess": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png"
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Chess",
            about: "“Chess is a sea in which a gnat may drink and an elephant may swim”\n\nThe nature of chess accommodates players of all skill levels.The  spirit of the game teaches us the virtues of patience, foresight and the art of calculated risk. Pertaining to strategy and driven by the perception of patterns it leaves no room for chance and emphasizes that the game is for everyone, where intelligence and creativity know no bounds.\n\nThe tournament for this year’s edition of Ignite has the following parameters:\n- 9 Rounds\n- Open\n- Swiss Format\n- Time control: 10+5\n- FIDE Regulations\n- Boys & Girls will compete in the same category.",
            timings: "Now"),
    "/events/sports/squash": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png"
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Squash",
            about: "Squash; strategy, agility, and precision. In our tournament, you'll witness teams from diverse backgrounds and skill levels compete head-to-head in an action-packed showdown. Get ready for a heart-pounding experience as we bring together 10 dynamic teams, each composed of 3 to 5 players, with the option of 1 to 2 substitutes. We await to meet you competitive participants!",
            timings: "Now"),
    "/events/sports/flag_football": (context) => EventGeneral(
            eventHeads: const [
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png",
              "https://i.imgur.com/utM2H4D.png"
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Flag Football",
            about: "2023 event! This event is unlike any other, where the spirit of the game and the love for competition come together in a celebration of athleticism and teamwork. In this spirited event, 10 teams will battle against each other with sheer determination, and only 1 will emerge victorious.\n\nIn this event, each team will:\n- Contain only a Men’s bracket\n- Contain a minimum of 6 players and a maximum of 8 players, with 5 players on the field at all times\n- The tournament will follow a Knock-Out format\n- We will be following the official NFL Flag Football rulebook, with some rules modified towards the benefit of the players\n\nWe hope to see you all there!",
            timings: "Now"),
  }));
}

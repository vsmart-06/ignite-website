import "package:flutter/material.dart";
import "package:ignite_2023/pages/home_page.dart";
import 'package:ignite_2023/pages/cultural_page.dart';
import "package:ignite_2023/pages/events_choice.dart";
import "package:ignite_2023/pages/rules_page.dart";
import "package:ignite_2023/pages/sports_page.dart";
import "package:ignite_2023/pages/event_general.dart";
import "package:ignite_2023/pages/about_page.dart";
//import "package:ignite_2023/pages/registrations_page.dart";
import "package:ignite_2023/pages/registrations_cultural.dart";
import "package:ignite_2023/pages/registrations_sports.dart";
import 'package:ignite_2023/pages/sponsors_page.dart';
import "package:ignite_2023/dyed_in_crimson_pages/dic_home.dart";
import "package:ignite_2023/dyed_in_crimson_pages/dic_characters.dart";
import "package:ignite_2023/dyed_in_crimson_pages/dic_hourly.dart";
import 'package:ignite_2023/pages/respawn_registrations.dart';

void main() {
  runApp(MaterialApp(title: "IGNITE 2023", routes: {
    "/": (context) => const Home(),
    "/events": (context) => CultSport(),
    "/sponsors": (context) => const Sponsors(),
    "/registrations": (context) => RegistrationsCultural(),
    "/rules": (context) => const Rules(),
    "/about": (context) => const About(),
    "/organizing_comittee": (context) => Placeholder(),
    "/oc": (context) => Placeholder(),
    "/events/cultural": (context) => Cultural(),
    "/events/sports": (context) => Sports(),
    "/registrations/sports": (context) => RegistrationsSports(),
    "/registrations/cultural": (context) => RegistrationsCultural(),
    "/registrations/respawn": (context) => RespawnRegs(),
    "/dyed_in_crimson/home": (context) => DICHome(),
    "/dyed_in_crimson/characters": (context) => DICCharacters(),
    "/dyed_in_crimson/hourly": (context) => DICHourly(),
    "/events/cultural/battle_of_the_bands": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/lS03T8H.jpg", "Saishruthi Donthula"],
              ["https://i.imgur.com/CXnUPKa.jpg", "Rishikesh Madhuvairy"],
              ["https://i.imgur.com/NZSlmx9.jpg", "Prachi Pandit"]
            ],
            logo: "https://i.imgur.com/yx3dJZQ.png",
            title: "Battle of the Bands",
            about:
                "An enthralling, yet ferocious battle between talented young musicians soon begins. Transcendence will put the skill of eager bands to the test, as their performances weave their way through different musical eras that will throw you in otherworldly dimensions.",
            location: "ICSE New Auditorium"),
    "/events/cultural/pitch_perfect": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/DoXOGJU.jpg", "Keerthana Rajesh"],
              ["https://i.imgur.com/zxBFVSq.jpg", "Harini Shankar"],
              ["https://i.imgur.com/yKJPgJM.jpg", "Samhita Madakshira"]
            ],
            logo: "https://i.imgur.com/Fcv7aQv.png",
            title: "Pitch Perfect",
            about:
                "Are you interested in singing for the sake of it? Pitch Perfect is an event centred on karaoke and riff off. Teams will compete to complete the lyrics and  participate in a musical roulette over the course of 2 rounds. Musical talent and the ability to excel with the conditions of each round are prioritised, but moreover, the event aims to spread the harmony and joy of music. Round 1 includes participants engaging in riff off, and Round 2 involves Roulette with a slight twist. Both rounds will be focused on themes, like pop, 90's music and country, to name a few.",
            location: "IPYP AV Room"),
    "/events/cultural/razzmatazz": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/WvN3Sqb.jpg", "Ishani Srivinas"],
              ["https://i.imgur.com/kAfeRnY.jpg", "Aishwarya Garine"],
              ["https://i.imgur.com/6xmimiP.jpg", "Surabhi Mitra"],
            ],
            logo: "https://i.imgur.com/6luARcL.png",
            title: "Razzmatazz",
            about:
                "Witness an electrifying dance event like no other!\n\nRazzMatazz features two rounds of captivating dance performances that will enthral the audience and keep them engaged throughout. Round 1 gives the participants an opportunity to demonstrate their talent and skill. From Hip-hop to Contemporary and Bollywood, this round will showcase a mesmerising display of rhythm and harmony, that will bring the stage alive. Round 2 will bring the competition to a whole new level, where the best dancers from the qualified teams will go head to head in an improv dance battle.",
            location: "Amphitheatre"),
    "/events/cultural/silver_screen": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/53ove4U.jpg", "Isha Chawla"],
              ["https://i.imgur.com/UwF7yT5.jpg", "Dhriti Rao"],
              ["https://i.imgur.com/7iQ7dVq.jpg", "Mayaan Hazra"]
            ],
            logo: "https://i.imgur.com/lijkg74.png",
            title: "Silver Screen",
            about:
                "Step into the shadowy world of intrigue and deception at Silver Screen, our Film Noir themed festival. Explore the tropes of the timeless classics and modern masterpieces that define this genre, while exploring your own creative direction in the production of your own films.",
            location: "IB AV Room"),
    "/events/cultural/thespian_of_melody": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/bzkqU5C.jpg", "Khwahish Choudhary"],
              ["https://i.imgur.com/wioimZB.jpg", "Annvi Gaur"],
              ["https://i.imgur.com/f3QIMGQ.jpg", "Pracheeta R"]
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Thespian of Melody",
            about:
                "Lyrics, Camera and Action!!\n\nAlways singing dramatically in front of the mirror only to mess up the melody? Well here's your time to shine at one of the most entertaining theatre event. Where you show off your acting skills by enacting the lyrics from your favorite song without having to worry about being out of tune for round 1. Channel your inner drama queen to make it into round 2, where moody emotions are coming your way to twist you and your songs.",
            location: "IB AV Room"),
    "/events/cultural/icons_and_imitations": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/z6do4Xn.jpg", "Veena Karthik"],
              ["https://i.imgur.com/XNk2F6S.png", "Pragati Prabhakar"],
              ["https://i.imgur.com/tqIa4At.jpg", "Tisya Munjal"],
            ],
            logo: "https://i.imgur.com/bhiMoTF.png",
            title: "Icons and Imitations",
            about:
                "Strut the runway starring as the most legendary fashion icons of the 20th and 21st century. Each team will randomly be assigned an icon, from Bowie to Madonna, and must take inspiration for their looks from the fashion idol, with their own personal flair of creativity. The second round will feature outfits from various randomly assigned movies. Break a heel!",
            location: "ICSE New Auditorium"),
    "/events/cultural/metamorphosis": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/WsmH49D.jpg", "Ananya Krishna"],
              ["https://i.imgur.com/ArWQyzf.jpg", "Yuvika Sherawat"],
              ["https://i.imgur.com/utM2H4D.png", "Shruti Karandikar"],
              ["https://i.imgur.com/mshbLGa.jpg", "Risha Reddy"]
            ],
            logo: "https://i.imgur.com/I5yddnf.png",
            title: "Metamorphosis",
            about:
                "A relay race for your mind where the canvas is your track and the paintbrush is your baton- sounds interesting?\n\nWatch art reshape before your eyes!\n\nEvery stroke builds upon the last and an artist's vision blooms into another's creation, building onto a masterpiece of collaboration. Bring any art mediums to display your skills.  Each participant blends their insight, furnishing a blank canvas into a kaleidoscope of creativity. Show off your artworks in the mini exhibition!",
            location: "Art Block Bottom Floor"),
    "/events/cultural/kryptos_visos": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/xywvJQe.jpg", "Ananya Vartak"],
              ["https://i.imgur.com/0ovJqP9.jpg", "Krithika Paruchuri"],
              ["https://i.imgur.com/hawKBo1.jpg", "Trisha Ghosh"]
            ],
            logo: "https://i.imgur.com/Xh3s9WP.png",
            title: "Kryptos Visos",
            about:
                "Mystique meets creativity and imagination as a face is transformed into a colorful canvas over two days. Villains are crucial to a story - for every Batman there is a Joker, for every Jekyll there's a Hyde. Pick up your brushes and palettes and represent these complex, often misunderstood antagonists in round 1. Compete with artists all over Bangalore to make it into round 2, where a new theme and a few surprises are waiting for you.",
            location: "Art Block Gallery & Steps"),
    "/events/cultural/dyed_in_crimson": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/uHcV18G.jpg", "Harihar Prasad"],
              ["https://i.imgur.com/uPvKNKg.jpg", "Ayaan Gupta"],
              ["https://i.imgur.com/y0L6iaz.jpg", "Anish Vivek"]
            ],
            logo: "https://i.imgur.com/Bvm0NHU.png",
            title: "Dyed in Crimson",
            about:
                "Families shattered. Bloodied hands. A hidden killer.\n\nA murder mystery without compare.\n\nEnter a world filled with secrets, intrigue, and murder galore. As you find yourself in the midst of two feuding families and a murder that threatens their very legacies, you must maneuver around veils of deceit and concealed motives to uncover the one true murderer. Their fate lies in your hands — the last chance to piece together a shattered bloodline.\n\nFind the killer or die trying.",
            location: "Booth on the Left of the IB Entrance"),
    "/events/cultural/dealers_choice": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/sauO30h.jpg", "Riana Kapoor"],
              ["https://i.imgur.com/SC9M03A.jpg", "Mukul Kumar"],
              ["https://i.imgur.com/H2pj0vx.jpg", "Atreyi Saha"]
            ],
            logo: "https://i.imgur.com/GaAC6Sp.png",
            title: "Dealer's Choice",
            about:
                "Embark on voyage of business brilliance. Are you ready to gamble it all? Join us in this real of cultural showdown of strategy and creativity that test both your skill and luck. Is your business acumen enough? Or will you succumb to the trigger.",
            location: "IPYP AV Room"),
    "/events/cultural/shoot_your_shot": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/s8XQnmA.jpg", "Thanvi Krishnamurthy"],
              ["https://i.imgur.com/wVabaMb.jpg", "Yashaswini Chinta"],
              ["https://i.imgur.com/qU82cFf.jpg", "Nivedhita Kumar"]
            ],
            logo: "https://i.imgur.com/QHDug4A.png",
            title: "Shoot your Shot",
            about:
                "Get ready to embark on a visual journey like no other in our photography event! Join us for an immersive experience that celebrates the art of photography and individuality. Showcase your skills across 2 rounds and capture the fleeting and breathtaking moments that make each individual unique. The best photographers will be moving onto round 2 which requires them to take their talents to a whole new level in capturing pictures that relate to a surprise prompt within IGNITE. Whether you're a seasoned pro or a budding enthusiast, this event promises to IGNITE your passion and spark your creativity. Come, be a part of this mesmerising celebration of the art at Shoot Your Shot !!",
            location: "No Specific Venue"),
    "/events/cultural/respawn": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/zk0OKgH.jpg", "Neha Kesarla"],
              ["https://i.imgur.com/ye3IHZh.jpg", "Anish Mamidi"],
              ["https://i.imgur.com/iWQO2VG.png", "Shrest Bhowmick"]
            ],
            logo: "https://i.imgur.com/c4gjJaW.png",
            title: "Respawn",
            about:
                "Ignite's most iconic event returns to the grand stage this year. Keeping tradition intact, participants are invited to compete in Fifa 2022 and Clash Royale. Additionally, we will be introducing the ultimate shutdown of tactical prowess and teamwork in the form of our 3v3 Rocket League tournament and a chance to display mechanical aptitude in our League of Legends 1v1 tournament.",
            location: "Library Exam Hall & 11A & 9F"),
    "/events/cultural/throwback_trifecta": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/8BoIRDZ.jpg", "Resham Prasad"],
              ["https://i.imgur.com/uk8BnX0.jpg", "Aarnav Jain"],
              ["https://i.imgur.com/objObOS.jpg", "Deepta Bhat"]
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Throwback Trifecta",
            about:
                "Get ready to ignite your passion for a thrilling school event called 'Trinity' at the grandest school fest in town! This extraordinary event promises a day of non-stop excitement and camaraderie, where three exhilarating games - Capture the Flag, Ultimate Frisbee, and Chor-Police - come together to create an unforgettable experience.\n\nPicture yourself sprinting through the field, strategizing to capture the flag, or diving to make that epic Frisbee catch. Feel the adrenaline rush as you chase and strategize in a heart-pounding game of Chor-Police. Trinity isn't just about games; it's about forging friendships, building teamwork, and making memories that will last a lifetime.\n\nDon't miss your chance to be part of this epic showdown. Get ready to unleash your inner champion.",
            location: "Next to ICSE Turf"),
    "/events/sports/basketball": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/bUTIOIP.jpg", "Shiven Bhaskarabatla"],
              ["https://i.imgur.com/TYSZxP7.jpg", "Ashwin Ganapathy"],
              ["https://i.imgur.com/T8uuuFC.jpg", "Anjini Basu"]
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Basketball",
            about:
                "Get ready to dribble, shoot and slam dunk your way into action. Join us for an electrifying basketball event with jaw-dropping plays. It's time to lace up your kicks and embrace the game like never before. Best of luck to all teams!\n\n1. Teams consisting of 8-11 players each\n2. The tournament will adhere to a knockout-style format.\n3. Officiating will be based on FIBA rules.\n4. Boys matches feature 10-minute quarters, while girls' matches consist of 7-minute quarters.",
            location: "ICSE Basketball Courts & IB Outdoor Basketball Court"),
    "/events/sports/football": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/CsYBNjM.jpg", "Parth Mehra"],
              ["https://i.imgur.com/yICCODo.jpg", "Fahim Bawahir"],
              ["https://i.imgur.com/nXbvbzy.jpg", "Chaitanya GT"]
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Football",
            about:
                "It's time to lace up and get ready for the fifth edition of Ignite's football event! This event promises 2 days of action packed, heart-pounding football extravaganza filled with awe-inspiring plays. May the best teams triumph.\n\nRules for boys football\n- Each team will have exactly 11 players on the pitch at any time, including the goalkeeper\n- A team should have a minimum of 4 and can have a maximum of 6 substitutes\n- The game format for all matches apart from semi-finals and the final is 20-5-20 with 20-minute halves and a 5-minute halftime break\n- Both semi-finals and the final will be played in a 30-10-30 format with 30-minute halves and a 10-minute halftime break\n- The offside rule will be in effect\n- Players will receive yellow and red cards for offences during the match according to the referee\n- The referee's decision will be the final decision and players cannot argue with the ref\n- In case of a tie in normal time, the game will go to penalties with each team getting 5 kicks\n- If the ball crosses the sideline, only throw-ins are allowed, no kick-ins\n\nRules for girls football\n- Each team will have exactly 7 players on the pitch at any time, including the goalkeeper\n- A team should have a minimum of 3 and can have a maximum of 5 substitutes\n- The game format for all matches apart from semi-finals and the final is 20-5-20 with 20-minute halves and a 5-minute halftime break\n- Both semi-finals and the final will be played in a 30-10-30 format with 30-minute halves and a 10-minute halftime break\n- The offside rule will not be in effect considering the size of the pitch\n- Players will receive yellow and red cards for offences during the match according to the referee\n- The referee's decision will be the final decision and players cannot argue with the ref\n- In case of a tie in normal time, the game will go to penalties with each team getting 3 kicks\n- If the ball crosses the sideline, only throw-ins are allowed, no kick-ins",
            location: "ICSE Turf & IB Sports Complex Field"),
    "/events/sports/hockey": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/zJFp4P6.jpg", "Rahul Prabhu"],
              ["https://i.imgur.com/bmxbKjf.jpg", "Ashvik Mishra"]
            ],
            logo: "https://i.imgur.com/85etvSD.png",
            title: "Hockey",
            about:
                "Prepare to experience the electrifying adrenaline that a field hockey tournament can only provide—the crack of the sticks, the shout of the crowd, and the electrifying action. It's a universe where power and precision coexist, where dexterity and ferocity clash, and where champions are made. This is more than just a competition; it's a journey through the heart of the game. Grab your seats, gather your supporters, and get ready to be enthralled by the exciting drama as heroes emerge, rivalries flare, and the spirit of field hockey assumes a central role.\n\n- Two categories: Boys and Girls\n- 7 players aside\n- A maximum of 4 substitutes\n- Playing time (boys): 7.5 minutes per quarter\n- Playing time (girls): 5 minutes per quarter\n- Rules will follow according to the FIH standards with minor modifications for your collective benefit\n- Group stages open with an eliminator round\n- Top 4 teams will compete in a league round before the finals\n\nIn the inspirational words of Major Dhyan Chand - \"Hockey is not just a game, it's a passion that runs through my veins\". Welcome to the field hockey tournament of a lifetime, the heart of all the excitement!",
            location: "IB Sports Complex Field"),
    "/events/sports/badminton": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/ZP17LkH.jpg", "Vedant Chowdhary"],
              ["https://i.imgur.com/KelfCSR.jpg", "Sanjeevani Kale"],
              ["https://i.imgur.com/7pj0Ls9.jpg", "Nidhi Iyer"]
            ],
            logo: "https://i.imgur.com/DflBZC9.png",
            title: "Badminton",
            about:
                "Allow us to introduce a game of coordination, strength and agility. Badminton is an exciting and fast paced sport characterized by its elegance and precision.The sport requires  quick reflexes and strategic finesse. Welcome to the Ignite 2023 Badminton Tournament, where speed meets strategy, and every rally is a heartbeat.\n• There will be 4 categories - Boys Singles, Girls Singles, Boys Doubles and Girls Doubles.\n• Each team will be allowed to bring 8 students( 2 players for the singles categories, 2 pair of players for the doubles categories and 2 optional subs )\n• This tournament will have 4 brackets, with 3 schools in each bracket. Within the bracket, a Round Robin format will take place, and the winner of the bracket will advance to Semi-finals. If all schools win 1 match, the team with the highest point difference will proceed to the Semi-finals.\n• Each match till the Semi-finals will be a best of 3 games, 11 points. Semi-finals and Finals will be 21 points best of 3. Golden point will be for 11 point matches and deuce for 21 point matches.\n• BWF rules will be followed\n• We will be using AS2 feather shuttles.\n\nEmploy the power in your wrists and the strength of your mind to place the shuttle in the most strategic places possible. Smash your way to glory by joining us at this fun-filled and exciting event!!",
            location: "IB Sports Complex Indoor Badminton Court"),
    "/events/sports/tennis": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/1J69SFz.jpg", "Medha Varma"],
              ["https://i.imgur.com/XnVi6KV.jpg", "Maadhav Prem"],
            ],
            logo: "https://i.imgur.com/HrQCltb.png",
            title: "Tennis",
            about:
                "Welcome to the Tennis Tournament at IGNITE '23! Where strategy meets stamina, and where you can take significant strides on the staircase to success.\n\nAt this year's edition, the following format will be adhered to:\n- We will have both boys' and girls' tournaments - on hard courts.\n- Each participating team must have 3 or 4 members - 1 or 2 singles players, and a pair of doubles players.\n- The tournaments will be held in a knockout format.\n- For the first round of doubles the team that wins 3 games first shall advance.\n- Likewise, the player that wins 4 games first for singles shall advance.\n- In the semis and finals, it will be a one-set match.\n- All games shall be played according to ATP and WTA rules.\n\nRegister now and grab the opportunity to participate in fast-paced and fun-filled sporting beauty, and experience an intense cross-court adrenaline rush!",
            location: "IB Tennis Courts near ICSE Turf"),
    "/events/sports/table_tennis": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/aAfV2xz.jpg", "Dhanush Kilari"],
              ["https://i.imgur.com/rjtQiQW.jpg", "Harsh Naren"]
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Table Tennis",
            about:
                "\"I fear not the man who has practiced 10,000 backhands once, but i do fear a man who has practiced one backhand 10,000 times\"-Bruce Lee\n\nJust as Bruce Lee once said,\nIn our sport, it's that one spin, that one smash, that one return perfected over time that can make all the difference. Join us at the upcoming table tennis event. Hone your skills, challenge yourself, and be a part of a community that values precision, dedication, and the beauty of the game.\n\nWe welcome you to the Table Tennis event at Ignite'24, See you at the court….\n\nTeams of 3-4 are eligible to register.\nThe format shall be as follows:\n- Each match shall contain 3 rounds: Singles 1, Singles 2, and Doubles 1, consisting of 11 points each.\n- Teams who win in each round will accumulate points and the team with the highest score after the doubles round wins. They will be qualified for the semi-finals and finals respectively\n- Official ITTF Rules will be followed and decisions of the umpires will be final.\n- The teams will have to come up with their player sequence as to who will play in the singles(2 players) and in the doubles(2 players) rounds respectively.\n- There shall be separate events for boys and girls.",
            location: "IB Sports Complex Table Tennis Room"),
    "/events/sports/relay": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/OUNjtTQ.jpg", "Ashna Muktibodh"],
              ["https://i.imgur.com/g14kLj1.jpg", "Somya Gupta"]
            ],
            logo: "https://i.imgur.com/eiuGm2o.png",
            title: "Relay",
            about:
                "Relay, the essence of teamwork and speed, takes the stage this year at Ignite 2023. We call all athletes to take part in this thrilling competition. Teams will go through heats, before the top teams are selected to move on to the finals. So get ready, every stride and second brings you closer to victory!\n\n- There are two categories: 4 x 100m (boys) | 4 x 100m (girls)\n- Each team should consist of 4 runners with 1-2 optional substitutes\n- There will be two rounds: Heats on day 1 | Finals on day 2\n- The standard world athletics rules will be followed for the relay.\n\nPlease note dropping of the baton during any point of the race will lead to disqualification.",
            location: "ICSE Turf"),
    "/events/sports/chess": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/35HeWOx.jpg", "Adit Bakshi"],
              ["https://i.imgur.com/40vrju7.jpg", "Shreya Seshadri"]
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Chess",
            about:
                "\"Chess is a sea in which a gnat may drink and an elephant may swim\"\n\nThe nature of chess accommodates players of all skill levels.The  spirit of the game teaches us the virtues of patience, foresight and the art of calculated risk. Pertaining to strategy and driven by the perception of patterns it leaves no room for chance and emphasizes that the game is for everyone, where intelligence and creativity know no bounds.\n\nThe tournament for this year's edition of Ignite has the following parameters:\n- 9 Rounds\n- Open\n- Swiss Format\n- Time control: 10+5\n- FIDE Regulations\n- Boys & Girls will compete in the same category.",
            location:
                "IB Sports Complex Chess Room & IB Sports Complex Dance Room"),
    "/events/sports/squash": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/r6oTOzJ.jpg", "Alina Prasad"],
              ["https://i.imgur.com/DaHF6ry.jpg", "Ansh Jhunjhunwala"]
            ],
            logo: "https://i.imgur.com/lnmXe4T.png",
            title: "Squash",
            about:
                "Squash is boxing with racquets; it's the powerful and intimidating game of agility and strategic moves. Take the court by awe and by the strength of your power and resilience during this year's Ignite'23. Which awaits to see each individual in their best form and show us what you have got!\n\n- Two categories: single and doubles ( mixed gender).\n- Each team should have an optional substitute of 1-2 players.\n- Each game for both categories will have a race of 11 points each. Consisting of 2 rounds with a side switch.\n- Each game will be around 20-25 minutes\n- Olympic squash rules will be the judging criteria for the game. If any rules are not precisely followed it will lead to disqualification of the individual from taking part in doubles ( if participating)\n- Further information will be communicated with the players…\n\nRegister now and be a part of a fully fledged and an exciting game day! Hoping to see you all soon at Ignite'23",
            location: "IB Sports Complex Squash Court"),
    "/events/sports/flag_football": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/WnDFVpu.jpg", "Rishabh Girish"],
              ["https://i.imgur.com/P1R8HPI.jpg", "Vikramaditya Rontala"]
            ],
            logo: "https://i.imgur.com/utM2H4D.png",
            title: "Flag Football",
            about:
                "2023 event! This event is unlike any other, where the spirit of the game and the love for competition come together in a celebration of athleticism and teamwork. In this spirited event, 10 teams will battle against each other with sheer determination, and only 1 will emerge victorious.\n\nIn this event, each team will:\n- Contain only a Men's bracket\n- Contain a minimum of 6 players and a maximum of 8 players, with 5 players on the field at all times\n- The tournament will follow a Knock-Out format\n- We will be following the official NFL Flag Football rulebook, with some rules modified towards the benefit of the players\n\nWe hope to see you all there!",
            location: "Grass Field near ICSE Turf"),
  }));
}

import "package:flutter/material.dart";
import "package:ignite_2023/pages/home_page.dart";
import 'package:ignite_2023/pages/cultural_page.dart';
import "package:ignite_2023/pages/events_choice.dart";
import "package:ignite_2023/pages/oc_page.dart";
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
import "package:ignite_2023/dyed_in_crimson_pages/dic_submissions.dart";
import 'package:ignite_2023/pages/respawn_registrations.dart';

void main() {
  runApp(MaterialApp(title: "IGNITE 2023", routes: {
    "/": (context) => const Home(),
    "/events": (context) => CultSport(),
    "/sponsors": (context) => const Sponsors(),
    "/registrations": (context) => RegistrationsCultural(),
    "/rules": (context) => const Rules(),
    "/about": (context) => const About(),
    "/organizing_comittee": (context) => OrganizingCommittee(),
    "/oc": (context) => OrganizingCommittee(),
    "/events/cultural": (context) => Cultural(),
    "/events/sports": (context) => Sports(),
    "/registrations/sports": (context) => RegistrationsSports(),
    "/registrations/cultural": (context) => RegistrationsCultural(),
    "/registrations/respawn": (context) => RespawnRegs(),
    "/dyed_in_crimson/home": (context) => DICHome(),
    "/dyed_in_crimson/characters": (context) => DICCharacters(),
    "/dyed_in_crimson/updates": (context) => DICUpdates(),
    "/dyed_in_crimson/submissions": (context) => DICSubmissions(),
    "/events/cultural/battle_of_the_bands": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/lS03T8H.jpg", "Saishruthi Donthula"],
              ["https://i.imgur.com/CXnUPKa.jpg", "Rishikesh Madhuvairy"],
              ["https://i.imgur.com/NZSlmx9.jpg", "Prachi Pandit"]
            ],
            logo: "https://i.imgur.com/yx3dJZQ.png",
            title: "Battle of the Bands",
            about:
                "An enthralling, yet ferocious battle between talented young musicians soon begins. Transcendence will put the skill of eager bands to the test, as their performances weave their way through different musical eras that will throw you in otherworldly dimensions.\n\nRound 1: Qualifiers\n- Each band gets 5 minutes to perform with no limit on the number of songs\n- Each band will also get 4 minutes to set up\n\nRound 2: Finals\n - The top 4 bands will have to perform two songs of contrasting eras and perform a fusion. Each band gets 6 minutes to play and 4 minutes to set up\n\nThe Qualifier round will take place on day 1, where bands will be allotted 4 minutes of setting up (tuning, setting up cables, instruments) and maximum 6 minutes of playing time with no limit on the number of songs. Note: Participants should get their own guitars/bass\n\nRules:\n- No profanity \n- Participants should get their own guitars/bass\n\n\nTeam Size: 3-7 people",
            location: "ICSE New Auditorium",
            registrations: "https://forms.gle/ZmcpibSNVLHwc2e4A",
            inSite: false),
    "/events/cultural/pitch_perfect": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/DoXOGJU.jpg", "Keerthana Rajesh"],
              ["https://i.imgur.com/zxBFVSq.jpg", "Harini Shankar"],
              ["https://i.imgur.com/yKJPgJM.jpg", "Samhita Madakshira"]
            ],
            logo: "https://i.imgur.com/Fcv7aQv.png",
            title: "Pitch Perfect",
            about:
                "Pitch Perfect is a Karaoke and Riff Off themed event mirroring the cult classic \"Pitch Perfect\". Participants compete in teams of 2-4 in two rounds, cut off and roulette with a twist : missing lyrics, performance battles and a race against the clock. Will you win it all or get lost in the music?\n\nRound 1: Riff Off\n- Teams perform songs of their choice that fit a given theme\n- Participants cut off the previous teams within 10s to remain in the race\n\nRound 2: Roulette\n- 5 qualifying teams from round one battle for the title in a karaoke roulette\n- Each team picks a genre from which they are randomly assigned a song \n- The twist: every song has missing lyrics which need to be completed during the performance.\n\nRules:\n- No profanity, if one team member says something inappropriate that team member will be disqualified from singing in the next round \n- Only age appropriate songs \n- No internet usage for social media or to search for song options \n- No cross talk among participants \n- Participants can only sing when they are asked to \n\n\nTeam Size: 2-4 people",
            location: "IPYP AV Room",
            registrations: "https://forms.gle/Sgt5S4VnRRKzrSDg7",
            inSite: false),
    "/events/cultural/razzmatazz": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/WvN3Sqb.jpg", "Ishani Srivinas"],
              ["https://i.imgur.com/kAfeRnY.jpg", "Aishwarya Garine"],
              ["https://i.imgur.com/6xmimiP.jpg", "Surabhi Mitra"],
            ],
            logo: "https://i.imgur.com/6luARcL.png",
            title: "Razzmatazz",
            about:
                "Witness an electrifying dance event like no other!\nRazzmatazz features two rounds of captivating dance performances that will enthral the audience and keep them engaged throughout.\n\nRound 1 : Dance Battle\n- Each team will have to perform a dance routine of 1 minute and 30 seconds. \n- Participating teams will have the freedom to perform Hip-Hop, Contemporary and/or Bollywood.\n- Only 4 Teams will qualify to the final round. \n\nRound 2 : Improv Showdown\n- Out of the qualified teams, 2 teams will go against each other at a time.\n- Each team has to choose 4 members, who will go head to head in the dance battle.\n- They will get 3 minutes for the improv battle.\n\nRules:\n- No provocative dances/songs \n- Adhere to the timing given, with respect to each round \n- Participants will not be allowed to use the internet or refer to any choreographed dance for round 2. \n- Songs should not contain any vulgar language (Use clean versions of songs)\n- Costumes have to be appropriate. (No shorts, no sleeveless tops, no crop tops)\n- Props will not be provided, each team is responsible for their own.\n- The same team member cannot be repeated (Round 2)\n\n\nTeam Size: 4-8 people",
            location: "Amphitheatre",
            registrations: "https://forms.gle/cXbx7dmTT4cLx5Gn7",
            inSite: false),
    "/events/cultural/silver_screen": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/53ove4U.jpg", "Isha Chawla"],
              ["https://i.imgur.com/UwF7yT5.jpg", "Dhriti Rao"],
              ["https://i.imgur.com/7iQ7dVq.jpg", "Maayaan Hazra"]
            ],
            logo: "https://i.imgur.com/xsVCfTa.png",
            title: "Silver Screen",
            about:
                "Step into the shadowy world of intrigue and deception at Silver Screen, our Film Noir themed festival. Explore the tropes of the timeless classics and modern masterpieces that define this genre, while exploring your own creative direction in the production of your own films.\n\nRound 1:\nParticipants must film a 10-12 minute short film on this theme using the tropes and characteristics of the genre \"FILM NOIR\".\n\nThese include:\n\nProduction Aspects:\n- Low-Key Lighting: Film Noir employs dramatic, high-contrast lighting with deep shadows to create a moody, ominous atmosphere.\n- Urban Settings: Often set in gritty, crime-ridden urban environments, the genre's visual aesthetics highlight the seedy underbelly of city life.\n- Cinematography: Cinematographers use unconventional camera angles and compositions, such as Dutch angles and chiaroscuro lighting, to evoke a sense of disorientation and tension.\n- Narration: Frequent use of voice-over narration, often by the protagonist, provides insight into their inner thoughts and dilemmas.\n- Costuming: Characters are often dressed in sharp suits and fedoras for men and glamorous dresses for women, reinforcing a sense of style and allure amid the darkness.\n\nPlot Characteristics:\n- Moral Ambiguity: Film Noir often explores morally complex characters, where protagonists may have questionable motives, and villains sometimes exhibit sympathetic qualities.\n- Femme Fatale: A recurring trope is the femme fatale, a seductive and enigmatic woman who ensnares the male protagonist in a web of deceit and danger.\n- Crime and Corruption: Plots frequently revolve around crime, corruption, or illicit activities, with characters caught in a web of conspiracies and double-crosses.\n- Investigation and Mystery: Many Film Noir narratives involve a detective or an ordinary individual caught up in an intricate mystery or investigation, unravelling dark secrets along the way.\n- Dialogue: The genre is known for its sharp, terse, and often cynical dialogue, filled with clever one-liners and witty repartee.\n- Twists and Uncertainty: Plot twists and a pervasive sense of uncertainty keep audiences engaged, as characters and their motivations are frequently revealed in unexpected ways.\n- Narrative Structure: Film Noir often uses non-linear or complex narrative structures, including flashbacks and multiple perspectives, to add depth and intrigue to the story.\n- Social Commentary: The genre often serves as a commentary on societal issues, such as post-war disillusionment, urban decay, and the erosion of traditional values.\n- Soundtrack: Film Noir features distinctive, jazzy or orchestral soundtracks that contribute to the mood and atmosphere of the film.\n- Visual Style: The use of visual metaphors and stark imagery is common in Film Noir, reflecting the inner turmoil and moral conflicts of the characters.\n\nRound 2: The three groups that move \non to the finals on Day 2 will be tasked with filming a 1-2 minute alternate ending to their original submitted piece, which must be filmed on the Greenwood High campus.They'll be given 2 hours to do this. \n\nFor all rounds, they will be judged on Visual Style, Sound and Music, Acting and Performance, Direction and Editing, Writing and Dialogue, Originality and Creativity, Emotional Impact,  Technical Excellence:\n\nRules:\n- 10-12 mins for Round 1 film submission\n- 2 hours for round 2 submission\n- No nudity or lewd scenes \n\n\nTeam Size: 5-8 people",
            location: "IB AV Room",
            registrations: "https://forms.gle/5nUazpftANVZeChi9",
            inSite: false),
    "/events/cultural/thespian_of_melody": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/bzkqU5C.jpg", "Khwahish Choudhary"],
              ["https://i.imgur.com/wioimZB.jpg", "Annvi Gaur"],
              ["https://i.imgur.com/f3QIMGQ.jpg", "Pracheeta R"]
            ],
            logo: "https://i.imgur.com/qFuYhLe.png",
            title: "Thespian of Melody",
            about:
                "\"Friends, Romans, countrymen, lend me your ears. You come to act a song not to sing it. Let words do what songs can't.\"\n\nWill you be able to toss out the tunes from your favourite song and only use lyrics to portray the emotions engraved?\n\nAlways singing dramatically in front of the mirror only to mess up the melody? Well here's your time to shine at one of the most entertaining theatre event. Where you show off your acting skills by enacting the lyrics from your favorite song without having to worry about being out of tune for round 1. Channel your inner drama queen to make it into round 2, where moody emotions are coming your way to twist you and your songs\n\nRound 1: Participants must act out a song of their choice within 4 minutes.\nRound 2: participants will have to perform the same song they did in round 1 but in a different emotion (which will be randomly given) and will have to perform within 4 minutes.\n\nRules:\n1) No offensive language\n2) A trigger warning must be given (if any)\n3) Suitable and appropriate costume\n4) No filming performance/people without consent\n5) No food and drinks inside the space\n6) No disruptive behaviour (negative language, derogation)\n7) Staff and logistics are not responsible for participant's items\n8) Lighting script and prop list must be sent out early\n\n\nTeam Size: 2-4 people (not all of the team members have to perform on stage, some can be helping backstage. however, there will be logistics members on the day of the event to help you around with your performance if needed)",
            location: "Art Block Multipurpose Hall",
            registrations: "https://forms.gle/Q3p6LDW4Uj2uyMP4A",
            inSite: false),
    "/events/cultural/icons_and_imitations": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/z6do4Xn.jpg", "Veena Karthik"],
              ["https://i.imgur.com/XNk2F6S.png", "Pragati Prabhakar"],
              ["https://i.imgur.com/tqIa4At.jpg", "Tisya Munjal"],
            ],
            logo: "https://i.imgur.com/bhiMoTF.png",
            title: "Icons and Imitations",
            about: "Strut the runway starring as the most legendary fashion icons of the 20th and 21st century. Each team will randomly be assigned an icon, from Bowie to Madonna, and must take inspiration for their looks from the fashion idol, with their own personal flair of creativity. The second round will feature outfits from various randomly assigned movies. Break a heel!\n\nRound 1: \nEach team of 4-6 people will be randomly assigned a fashion icon from the 20th or 21st century upon registration (through your registration confirmation email). You must recreate their most iconic looks (which looks you pick is your choice). Please note that it is not necessary to create the look exactly, we are looking for outfits that are inspired by them with your own touch of creativity\n\nRound 2: \nAfter elimination there will be a second round on the next day. Based on the points from the first round, teams will be able to choose one of the following movies for their recreations:\nGrease (1978)\nJodha Akbar (2013)\nAlice in Wonderland (2010)\nAladdin (2019)\nStar Wars (2002 to 2008)\nCleopatra (1963)\nThe Great Gatsby (2013)\nYou will also be given a location to get ready in prior to the start of the event. Good luck!\n\nRules: \n- Do not wear overly revealing clothes like cropped tops.\n- Avoid Sheer or see-through materials.\n- Do not wear excessively short skirts or dresses.\n\n\nTeam Size: 4-6 people",
            location: "ICSE New Auditorium",
            registrations: "https://forms.gle/5KdTukPT5AyyfdvH9",
            inSite: false),
    "/events/cultural/metamorphosis": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/WsmH49D.jpg", "Ananya Krishna"],
              ["https://i.imgur.com/ArWQyzf.jpg", "Yuvika Sherawat"],
              ["https://i.imgur.com/QbHY0nZ.png", "Suhani Jha"],
            ],
            logo: "https://i.imgur.com/I5yddnf.png",
            title: "Metamorphosis",
            about:
                "A relay race for your mind where the canvas is your track and the paintbrush is your baton- sounds interesting? \n\nWatch art reshape before your eyes!\n\nEvery stroke builds upon the last and an artist's vision blooms into another's creation, building onto a masterpiece of collaboration. Bring any art mediums to display your skills. Each participant blends their insight, furnishing a blank canvas into a kaleidoscope of creativity. Show off your artworks in the mini exhibition!\n\n- Bring any art mediums to display your skills.\n- Each team member is allotted 30 mins to work on the canvas\n- The canvas is then passed on to the next member to continue\n- Once the relay is finished,a mini exhibition will be held where you can show off artwork.\n\nRound 1: The topic is only told to the starting member of each team. They have 3 minutes to ideate and 30 minutes to start off the artwork.\n\nRound 2, 3 and 4: 3 minutes is given to pass on the theme and art idea to the next teammate. They are given another 30 minutes to work on the piece.\n\nFinal round: One the piece is complete, the team can discuss the progress of the painting and get ready to present it to the judges.\n- A mini exhibition will take place and the judges (as well as other teams) can look at the pieces to be judged.\n\nRules: \n- All artwork is on A3 size paper provided at the event. The participants have to bring their own art supplies.\n- Any medium/mix of mediums can be used (pencil, charcoal, pastels, watercolour acrylics, etc.).\n-The participants who have completed the work cannot discuss with the remaining team members.\n\n\nTeam Size: 4 people",
            location: "Art Block Bottom Floor",
            registrations: "https://forms.gle/2vwaJKy8msAKtEko9",
            inSite: false),
    "/events/cultural/kryptos_visos": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/xywvJQe.jpg", "Ananya Vartak"],
              ["https://i.imgur.com/0ovJqP9.jpg", "Krithika Paruchuri"],
              ["https://i.imgur.com/hawKBo1.jpg", "Trisha Gupta"]
            ],
            logo: "https://i.imgur.com/t3nTznY.png",
            title: "Kryptos Visos",
            about:
                "Mystique meets creativity and imagination as a face is transformed into a colorful canvas over two days. Villains are crucial to a story - for every Batman there is a Joker, for every Jekyll there's a Hyde. Pick up your brushes and palettes and represent these complex villains in round 1. Compete with artists all over Bangalore to make it into round 2, where a new theme and a few surprises are waiting for you.\n\nRules:\n- Participants must bring their tools, including but not limited to facepaint, makeup paintbrushes, tissues, etc.\n- All participants must keep their work areas clean. Everything should look as it did before they arrived. If participants choose to wash off their face paint in the washroom, they must ensure it is left clean afterward.\n- No props\n- No gore\n- No sabotaging anyone else's work\n- No extra points will be awarded for costumes or props\n\n\nTeam Size: 2 people",
            location: "Art Block Gallery & Steps",
            registrations: "https://forms.gle/499xw83SSco6XPQh6",
            inSite: false),
    "/events/cultural/dyed_in_crimson": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/uHcV18G.jpg", "Harihar Prasad"],
              ["https://i.imgur.com/uPvKNKg.jpg", "Ayaan Gupta"],
              ["https://i.imgur.com/y0L6iaz.jpg", "Anish Vivek"]
            ],
            logo: "https://i.imgur.com/W2EcJsP.png",
            title: "Dyed in Crimson",
            about:
                "Families shattered. Bloodied hands. A hidden killer.\n\nA murder mystery without compare.\n\nEnter a world filled with secrets, intrigue, and murder galore. As you find yourself in the midst of two feuding families and a murder that threatens their very legacies, you must maneuver around veils of deceit and concealed motives to uncover the one true murderer. Their fate lies in your hands - the last chance to piece together a shattered bloodline.\n\nFind the killer or die trying.\n\n\nWalk in registrations only!!!\n\n\nTeam Size: Individual",
            location: "Booth on the Left of the IB Entrance"),
    "/events/cultural/dealers_choice": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/sauO30h.jpg", "Riana Kapoor"],
              ["https://i.imgur.com/SC9M03A.jpg", "Mukul Kumar"],
              ["https://i.imgur.com/6rchotG.jpg", "Atreyi Saha"]
            ],
            logo: "https://i.imgur.com/ozRDzqn.png",
            title: "Dealer's Choice",
            about:
                "Embark on voyage of business brilliance. Are you ready to gamble it all? Join us in this real of cultural showdown of strategy and creativity that test both your skill and luck. Is your business acumen enough? Or will you succumb to the trigger.\n\nRound 1:\nParticipants will be asked to submit an advertisement for any product that they choose (can be fictional) that they build their own business around. They can be as creative as they want with the advertisement i.e., it can be a simple document or a 1-minute video. They will be given 3 minutes total time to present their product and advertisement and have a small question answer session.\n\nRound 2:\nParticipants will have to spilt their team for two separate mini games that will be played simultaneously.\n\nRound 3:\nEach team will be given a crisis situation to respond to based on their product and company they built around it and they will have to respond to it and its consequences. They will be given 10 minutes to come up with a strategic plan and then will have to respond to public and political reactions to the implementation of their plan on the spot.\n\nRules:\n- No AI usage\n- No cross-team collaboration\n- Required to bring their laptops and phones\n- We are not liable for the loss of any gadgets\n\n\nTeam Size: 3-4 people",
            location: "IPYP AV Room",
            registrations: "https://forms.gle/nFdyqZh8exG7989v5",
            inSite: false),
    "/events/cultural/shoot_your_shot": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/s8XQnmA.jpg", "Thanvi Krishnamurthy"],
              ["https://i.imgur.com/wVabaMb.jpg", "Yashaswini Chinta"],
              ["https://i.imgur.com/qU82cFf.jpg", "Nivedhita Kumar"]
            ],
            logo: "https://i.imgur.com/nMTu7YX.png",
            title: "Shoot your Shot",
            about:
                "Get ready to embark on a visual journey like no other in our photography event! Join us for an immersive experience that celebrates the art of photography and individuality. Showcase your skills across 2 rounds and capture the fleeting and breathtaking moments that make each individual unique. The best photographers will be moving onto round 2 which requires them to take their talents to a whole new level in capturing pictures that relate to a surprise prompt within IGNITE. Whether you're a seasoned pro or a budding enthusiast, this event promises to IGNITE your passion and spark your creativity. Come, be a part of this mesmerising celebration of the art at Shoot Your Shot !!\n\nRound 1:\nAll participants will be allowed to freely photograph on day 1 of IGNITE throughout the whole venue. They are asked to photograph up to 3 portraits of people from the event who stand out to them personally.\n\nRound 2:\nOn day 2, the qualifiers from round 1 will be given a surprise prompt in which they must submit one photo to the judges. Winners of this round will also be judged on their ability to portray this emotion to an audience through their portrait.\n\nRules:\n1. Participants are to ensure they inform the person they are taking a photo of and make sure they have consent. We will provide them a piece of paper to take down their name and/or phone number as well a space for their signature to confirm their consent has been taken.\n2. Participants are only allowed to photograph within the venue of IGNITE, strictly no photos from outside of the campus\n3. All participants are to submit their photos by 6 pm latest on a google drive and form that will be sent out a day before the event.\n4. Strictly no use of editing/photoshop software allowed, only post processing of images is allowed\n5. Use of phones or polaroid cameras are NOT allowed to take the pics, they have to be captured on a digital camera or DSLR\n6. Any participant caught taking indecent, incriminating or inappropriate pictures, will be immediately disqualified from the event and face disciplinary action.\n\n\nTeam Size: Individual",
            location: "No Specific Venue",
            registrations: "https://forms.gle/XzAzZfLcdUizpCRq6",
            inSite: false),
    "/events/cultural/respawn": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/zk0OKgH.jpg", "Neha Kesarla"],
              ["https://i.imgur.com/ye3IHZh.jpg", "Aneesh Mamidi"],
              ["https://i.imgur.com/iWQO2VG.png", "Shrest Bhowmick"]
            ],
            logo: "https://i.imgur.com/eUWfCyk.png",
            title: "Respawn",
            about:
                "IGNITE's most iconic event returns to the grand stage this year. Keeping tradition intact, participants are invited to compete in FIFA 2022 and Clash Royale. Additionally, we will be introducing the ultimate shutdown of tactical prowess and teamwork in the form of our 3v3 Rocket League tournament and a chance to display mechanical aptitude in our League of Legends 1v1 tournament.\n\nRules:\n- All participants should carry necessary equipment themselves. This includes but is not limited to: laptops, phones, laptop chargers, phone chargers, pin converters, mouse, keyboards, batteries, controllers etc.\n- All participants are responsible for the safety of their belongings\n- FIFA is controller only (Xbox/Playstation)\n- Rocket League is PC only\n\n\nTeam Size: Individual/3 people",
            location: "Library Exam Hall & 11A & 9F",
            registrations: "/registrations/respawn",
            inSite: true),
    "/events/cultural/throwback_trifecta": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/8BoIRDZ.jpg", "Resham Prasad"],
              ["https://i.imgur.com/uk8BnX0.jpg", "Aarnav Jain"],
              ["https://i.imgur.com/objObOS.jpg", "Deepta Bhat"]
            ],
            logo: "https://i.imgur.com/7Us373q.png",
            title: "Throwback Trifecta",
            about:
                "Brace yourself for a triple dose of adrenaline-pumping fun with Capture the Flag, Ultimate Frisbee, and Chor-Police. It's the ultimate showdown where excitement reigns supreme - don't miss out on this action-packed thrill ride. Picture yourself sprinting through the field, strategizing to capture the flag, or diving to make that epic Frisbee catch. Feel the adrenaline rush as you chase and strategize in a heart-pounding game of Chor-Police. Throwback Trifecta isn't just about games; it's about forging friendships, building teamwork, and making memories that will last a lifetime.\n\nRound 1:\nTo begin, 2 games of Capture The Flag will be held (Game A & Game B). For Game A, one large team of 8 is formed by combining 2 teams, this is repeated to form another combined team of 8. So for Game A and B, it's 8v8, Game B having the same format as Game A. The losers of Game A & Game B will be eliminated. 16 people advance to round 2.\n\nRound 2:\nThe game of Ultimate Frisbee will have only 1 game played. Which will be 8v8. Losers will be eliminated. The winners of this game will further advance to The Final game in round 3.\n\nRound 3:\nThe Final game of Chor-Police will conclude with the winning team of 4 participants. This game will be 4v4. The winning team will be the one who wins the Best Of 3 Games in Chor-Police, granting us the Throwback Trifecta Champions.\n\n\nTeam Size: 4 people",
            location: "Next to ICSE Turf",
            registrations: "https://forms.gle/jehQpmcucD9XvJRPA",
            inSite: false),
    "/events/sports/basketball": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/bUTIOIP.jpg", "Shiven Bhaskarabatla"],
              ["https://i.imgur.com/TYSZxP7.jpg", "Ashwin Ganapathy"],
              ["https://i.imgur.com/T8uuuFC.jpg", "Anjini Basu"]
            ],
            logo: "https://i.imgur.com/myq8aq1.png",
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
            logo: "https://i.imgur.com/vro8CWT.png",
            title: "Football",
            about:
                "It's time to lace up and get ready for the fifth edition of IGNITE's football event! This event promises 2 days of action packed, heart-pounding football extravaganza filled with awe-inspiring plays. May the best teams triumph.\n\nCategory specific rules\n- Boys: 11 players on the pitch; minimum 1, maximum 5 substitutes.\n- Girls: 7 players on the pitch; minimum 1, maximum 4 substitutes.\n- For the boys category the offside rule will be in effect. For the girls category the offside rule will not be in effect\n- For the boys category in case of a tie in normal time, the game will go to penalties with each team getting 5 kicks.\n- For the girls category in case of a tie in normal time, the game will go to penalties with each team getting 3 kicks.\n\nCommon rules (for both girls and boys):\n- The game format for all group stage matches is 20-5-20. Both semi-finals and the final will be played in a 30-10-30 format.\n- Players will receive yellow and red cards during the match at the discretion of the referee. The referee's decision will be the final decision and players cannot argue with the referee.\n- If the ball crosses the sideline, only throw-ins are allowed, no kick-ins",
            location: "ICSE Turf & IB Sports Complex Field"),
    "/events/sports/hockey": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/zJFp4P6.jpg", "Rahul Prabhu"],
              ["https://i.imgur.com/bmxbKjf.jpg", "Ashvik Mishra"]
            ],
            logo: "https://i.imgur.com/85etvSD.png",
            title: "Hockey",
            about:
                "Prepare to experience the electrifying adrenaline that a hockey tournament can only provide—the crack of the sticks, the shout of the crowd, and the electrifying action. It's a universe where power and precision coexist, where dexterity and ferocity clash, and where champions are made. This is more than just a competition; it's a journey through the heart of the game. Grab your seats, gather your supporters, and get ready to be enthralled by the exciting drama as heroes emerge, rivalries flare, and the spirit of hockey assumes a central role.\n\n- Two categories: Boys and Girls\n- 7 players aside\n- A maximum of 3 substitutes\n- Playing time (boys): 7.5 minutes per quarter\n- Playing time (girls): 5 minutes per quarter\n- Rules will follow according to the FIH standards with minor modifications for your collective benefit\n- Group stages open with an eliminator round\n- Top 4 teams will compete in a league round before the finals\n\nIn the inspirational words of Major Dhyan Chand - \"Hockey is not just a game, it's a passion that runs through my veins\". Welcome to the hockey tournament of a lifetime, the heart of all the excitement!",
            location: "IB Sports Complex Field"),
    "/events/sports/badminton": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/ZP17LkH.jpg", "Vedant Chowdhary"],
              ["https://i.imgur.com/KelfCSR.jpg", "Sanjeevani Kale"],
            ],
            logo: "https://i.imgur.com/DflBZC9.png",
            title: "Badminton",
            about:
                "Allow us to introduce a game of coordination, strength and agility. Badminton is an exciting and fast paced sport characterized by its elegance and precision.The sport requires  quick reflexes and strategic finesse. Welcome to the IGNITE 2023 Badminton Tournament, where speed meets strategy, and every rally is a heartbeat.\n\n- There will be 4 categories - Boys Singles, Girls Singles, Boys Doubles and Girls Doubles. \n- Teams will be allowed to bring 8 students maximum. (2 players for the singles categories, 2 pairs of players for the doubles categories and 2 optional subs)\n- The tournament will follow a knockout format (One loss elimination)\n- Each match till the Semi-finals will be a best of 3 games, 15 points. Semi-finals and Finals will be 21 points best of 3. Golden point will be for 15 point matches and deuce for 21 point matches.\n- BWF rules will be followed\n- We will be using AS2 feather shuttles. Employ the power in your wrists and the strength of your mind to place the shuttle in the most strategic places possible. Smash your way to glory by joining us at this fun-filled and exciting event!!",
            location: "IB Sports Complex Indoor Badminton Court"),
    "/events/sports/tennis": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/1J69SFz.jpg", "Medha Varma"],
              ["https://i.imgur.com/XnVi6KV.jpg", "Maadhav Prem"],
            ],
            logo: "https://i.imgur.com/HrQCltb.png",
            title: "Tennis",
            about:
                "Welcome to the Tennis Tournament at IGNITE '23! Where strategy meets stamina, and where you can take significant strides on the staircase to success.\n\nAt this year's edition, the following format will be adhered to:\n- We will have both boys' and girls' tournaments - on hard courts.\n- Each participating team may have:\n\t- 3-4 members for only boys/girls - 1 player from the singles category, 2 players from the doubles category, and 1 optional substitute.\n\t- 6-8 members for both boys and girls - 1 boy and 1 girl from the singles category, 2 boys and 2 girls from the doubles category, and 1-2 optional substitutes.\n- The tournaments will be held in a knockout format.\n- For the first round of doubles the team that wins 3 games first shall advance.\n- Likewise, the player that wins 4 games first for singles shall advance.\n- In the semis and finals, it will be a one-set match.\n- All games shall be played according to ATP and WTA rules.\n\nRegister now and grab the opportunity to participate in fast-paced and fun-filled sporting beauty, and experience an intense cross-court adrenaline rush!",
            location: "IB Tennis Courts near ICSE Turf"),
    "/events/sports/table_tennis": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/aAfV2xz.jpg", "Dhanush Kilari"],
              ["https://i.imgur.com/rjtQiQW.jpg", "Harsh Naren"]
            ],
            logo: "https://i.imgur.com/GOO5D5g.png",
            title: "Table Tennis",
            about:
                "\"I fear not the man who has practiced 10,000 backhands once, but i do fear a man who has practiced one backhand 10,000 times\" - Bruce Lee\n\nIn our sport, it's that one spin, that one smash, that one return perfected over time that can make all the difference. We welcome you to the Table Tennis event at IGNITE'24, See you at the court…\n\nFormat:\n- There will be 3 rounds,(qualifiers,semi finals,finals)\n- 10 teams will compete against each other in round 1. 5 teams will be qualified to compete in round 2. The finals will have a secret format which will be revealed before the match begins, the last 2 standing teams will compete to win.\n- Each round will have matches. Matches will have 2 levels: Singles, Doubles (11 points each)\n- Reverse singles (tiebreaker) will happen if points are tied.\n- Team with the highest score after each level  will proceed to move on to further levels and win at finals.\n- Official ITTF Rules will be followed and decision of the umpires will be final. \n- The teams will have to come up with their player sequence to play in singles and doubles.\n- There shall be separate events for boys and girls.",
            location: "IB Sports Complex Table Tennis Room"),
    "/events/sports/relay": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/OUNjtTQ.jpg", "Ashna Muktibodh"],
              ["https://i.imgur.com/g14kLj1.jpg", "Somya Gupta"]
            ],
            logo: "https://i.imgur.com/vPCf5Fl.png",
            title: "Relay",
            about:
                "Relay, the essence of teamwork and speed, takes the stage this year at IGNITE 2023. We call all athletes to take part in this thrilling competition. Teams will go through heats, before the top teams are selected to move on to the finals. So get ready, every stride and second brings you closer to victory!\n\n- There are two categories: 4 x 100m (boys) | 4 x 100m (girls)\n- Each team should consist of 4 runners with 1 optional substitute.\n- There will be two rounds: Heats on day 1 | Finals on day 2\n- The standard world athletics rules will be followed for the relay.\n\nPlease note dropping of the baton during any point of the race will lead to disqualification.",
            location: "ICSE Turf"),
    "/events/sports/chess": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/35HeWOx.jpg", "Adit Bakshi"],
              ["https://i.imgur.com/40vrju7.jpg", "Shreya Seshadri"]
            ],
            logo: "https://i.imgur.com/mdC64lY.png",
            title: "Chess",
            about:
                "\"Chess is a sea in which a gnat may drink and an elephant may swim\"\n\nThe nature of chess accommodates players of all skill levels.The  spirit of the game teaches us the virtues of patience, foresight and the art of calculated risk. Pertaining to strategy and driven by the perception of patterns it leaves no room for chance and emphasizes that the game is for everyone, where intelligence and creativity know no bounds.\n\nThe tournament for this year's edition of IGNITE has the following parameters: \n- 6 Rounds\n- Open \n- Swiss Format\n- Time control: 10+5\n- FIDE Regulations \n- Boys & Girls will compete in the same category.\n- Each school will be allowed to bring 4 players maximum, but they will play individually, not as a team.",
            location:
                "IB Sports Complex Chess Room & IB Sports Complex Dance Room"),
    "/events/sports/swimming": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/7pj0Ls9.jpg", "Nidhi Iyer"],
              ["https://i.imgur.com/mshbLGa.jpg", "Risha Reddy"]
            ],
            logo: "https://i.imgur.com/KfIJPdE.png",
            title: "Swimming",
            about:
                "In the world of competitive swimming, athletes must master various strokes, each with its unique style and demands. Swimming, in all its forms, is a testament to the ability of the swimmers, and their synchrony with the water.\n\nEach team can have a minimum of 4 participants and a maximum of 6 participants.\n\nThe events conducted are: \n- 25 meter race for both boys and girls in the following categories: Breaststroke, butterfly, backstroke and freestyle. \n- The 50 meters individual boys and girls freestyle race. \n- Relay and medley will also be conducted. \n- A randomly chosen interactive game for the swimming event to conclude.\n\nPlease be aware that we will strictly be following FINA rules.",
            location: "Swimming Pool near ICSE Turf"),
    "/events/sports/squash": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/r6oTOzJ.jpg", "Alina Prasad"],
              ["https://i.imgur.com/DaHF6ry.jpg", "Ansh Jhunjhunwala"]
            ],
            logo: "https://i.imgur.com/lnmXe4T.png",
            title: "Squash",
            about:
                "Squash is boxing with racquets; it's the powerful and intimidating game of agility and strategic moves. Take the court by awe and by the strength of your power and resilience during this year's Ignite'23. Which awaits to see each individual in their best form and show us what you have got!\n\n- One category: Singles (mixed gender). \n- Schools are allowed to send up to 3 participants, but the participants will play as individual players, not as a team. \n- Every game will have a race of 11 points each. Consisting of 2 rounds with a side switch.  \n- Each game will be around 20-25 minutes\n- Olympic squash rules will be the judging criteria for the game. If any rules are not precisely followed it will lead to disqualification.\n- Further information will be communicated with the players. \n\nRegister now and be a part of a fully fledged and an exciting game day! Hoping to see you all soon at Ignite'23.",
            location: "IB Sports Complex Squash Court"),
    "/events/sports/flag_football": (context) => EventGeneral(
            eventHeads: const [
              ["https://i.imgur.com/WnDFVpu.jpg", "Rishabh Girish"],
              ["https://i.imgur.com/P1R8HPI.jpg", "Vikramaditya Rontala"]
            ],
            logo: "https://i.imgur.com/rZLYerc.png",
            title: "Flag Football",
            about:
                "Get ready for a thrilling event of non-stop action and sportsmanship at the Ignite Flag Football 2023 event! This event is unlike any other, where the spirit of the game and the love for competition come together in a celebration of athleticism and teamwork. In this spirited event, 10 teams will battle against each other with sheer determination, and only 1 will emerge victorious.\n\nIn this event, each team will:\n- Contain only a men's bracket\n- Contain a minimum of 6 players and a maximum of 8 players, with 5 players on the field at all times\n- The tournament will follow a Knock-Out format\n- We will be following the official NFL Flag Football rulebook, with some rules modified towards the benefit of the players\n\nWe hope to see you all there!",
            location: "Grass Field near ICSE Turf"),
  }));
}

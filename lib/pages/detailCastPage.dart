import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class detailCast extends StatelessWidget {
  const detailCast({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detail",
          style: TextStyle(
              color: Color.fromARGB(255, 0, 6, 66),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Color.fromARGB(255, 0, 6, 66),
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          SizedBox(height: 5),
          Align(
            alignment: Alignment.topCenter,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                "assets/cast2.png",
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 15),
          Text(
            "Sarah Collins",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF01004E),
            ),
            textAlign: TextAlign.center,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "26 Years Old",
                style: TextStyle(
                  color: Color(0xFF01004E),
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 65), // Menyesuaikan padding di kedua sisi
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Weight",
                      style: TextStyle(
                        color: Color(0xFF01004E),
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 6),
                      child: Align(
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            Text(
                              "55Kg",
                              style: TextStyle(
                                color: Color(0xFFA4A4A4),
                                fontSize: 14,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Height",
                      style: TextStyle(
                        color: Color(0xFF01004E),
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: Align(
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            Text(
                              "165cm",
                              style: TextStyle(
                                color: Color(0xFFA4A4A4),
                                fontSize: 14,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Text(
                    "Role",
                    style: TextStyle(
                      color: Color(0xFF01004E),
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Text(
                    "Sarah Collins, often referred to by her teammates as\nThe Sniper,is a key member of a professional gaming\nteam competing in a high-stakes international\ntournament called Winner Winner Chicken Dinner. She is\nknownfor her exceptional marksmanship, strategic\nthinking, and calm demeanor under pressure.\nSarah's journey in the film is not just about\nher gaming skills but also about overcoming personal\nchallenges and proving herself in a male-dominated industry.",
                    style: TextStyle(
                      color: Color(0xFFA4A4A4),
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Text(
                    "Personality",
                    style: TextStyle(
                      color: Color(0xFF01004E),
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Text(
                    "Focused: Sarah is incredibly focused, often getting lost\nin her thoughts about strategy and gameplay.\nResilient: She has faced numerous setbacks in her\ncareer and personal life but has always managed\nto bounce back stronger\nTeam Player: Despite being a solo player in her\nspecialty (sniping),she values her team and works hard\nto ensure their collective success.\nCalm Under Pressure: Sarah remains composed\nin high-pressure situations,making her an invaluable\nasset during critical moments in the game.",
                    style: TextStyle(
                      color: Color(0xFFA4A4A4),
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Text(
                    "Detail",
                    style: TextStyle(
                      color: Color(0xFF01004E),
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Text(
                    "Nationality: American\nAppearance: Athletic build, with short, practical hair dyed\na striking color(blue or pink).\nOften seen in casual gamer attire but transforms into a\nsharp, tactical look during competitions.\nThe role requires a versatile actress\ncapable of portraying strength, vulnerability, and a deep\nunderstanding of gaming culture.\nMust be comfortable with physical training\nand action scenes.Ideally, someone who either has a\ngenuine interest in gaming or is willing to immerse\nthemselves in the gaming world\nto bring authenticity to the role.",
                    style: TextStyle(
                      color: Color(0xFFA4A4A4),
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ), 
          Container(
            child: (ElevatedButton(
              style:
                  ElevatedButton.styleFrom(backgroundColor: Color(0xFF01004E)),
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              child: Text(
                "Send my Profile",
                style: TextStyle(color: Colors.white),
              ),
            )),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tugas_akhir/data/actor.dart';
import 'package:tugas_akhir/data/news.dart';
import 'package:tugas_akhir/data/poster.dart';
import 'package:tugas_akhir/widget/bottom_nav.dart';

class HomePage extends StatelessWidget {
  final List<String> kategori = [
    'Movie',
    'Theater',
    'Actress',
    'Actor',
  ];

  final List<String> actor = [
    "assets/Ellipse 59.png",
    "assets/Ellipse 49.png",
    "assets/Ellipse 48.png",
    "assets/Ellipse 51.png",
    "assets/Ellipse 58.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello,",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            "Shah Rukh Khan",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context,
                                  '/profilpage'); // Ganti dengan rute yang sesuai
                            },
                            child: Image.asset(
                              ("assets/p1.png"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.1,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: Color(0xFFF3F3F3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 40,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: kategori.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 0),
                          child: Center(
                            child: Text(
                              kategori[index],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Actor",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF01004E),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 5), // Padding awal
                  Actor(
                    imagePath: "assets/ac1.png",
                  ),
                  SizedBox(width: 5), // Jarak antara cast cards
                  Actor(
                    imagePath: "assets/ac2.png",
                  ),
                  SizedBox(width: 5), // Jarak antara cast cards
                  Actor(
                    imagePath: "assets/ac3.png",
                  ),
                  SizedBox(width: 5), // Jarak antara cast cards
                  Actor(
                    imagePath: "assets/ac4.png",
                  ),
                  SizedBox(width: 5), // Jarak antara cast cards
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/detailactor');
                        },
                        child: Image.asset(
                          ("assets/p1.png"),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 5), // Jarak antara cast cards
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Actress",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF01004E),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 5), // Padding awal
                  Actor(
                    imagePath: "assets/ta1.png",
                  ),
                  SizedBox(width: 5), // Jarak antara cast cards
                  Actor(
                    imagePath: "assets/ta2.png",
                  ),
                  SizedBox(width: 5), // Jarak antara cast cards
                  Actor(
                    imagePath: "assets/ta3.png",
                  ),
                  SizedBox(width: 5), // Jarak antara cast cards
                  Actor(
                    imagePath: "assets/ta4.png",
                  ),
                  SizedBox(width: 5),
                  // Jarak antara cast cards
                  Actor(
                    imagePath: "assets/ta5.png",
                  ),
                  SizedBox(width: 5), // Jarak antara cast cards
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Align(
                alignment: Alignment.centerLeft,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                        context, '/moviePage'); // Ganti dengan rute yang sesuai
                  },
                  child: Text(
                    "Movie",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF01004E),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.pushNamed(context,
                                          '/detailMovie'); // Ganti dengan rute yang sesuai
                                    },
                                    child: Image.asset(
                                      ("assets/po1.png"),
                                             width: 100,
                                          height: 150,
                                    ),
                                  ),
                                ),
                              ),
                          SizedBox(height: 3),
                              Text(
                                "Winner Winner\nChicken Dinner",
                                style: TextStyle(
                                  color: Color(0xFF01004E),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                                textAlign: TextAlign.start,
                              )
                            ],
                          )),
                    ),
                  ),
                  SizedBox(width: 10), // Jarak antara cast cards
                  poster(
                    PosterPath: "assets/po2.png",
                    name: "Alien Invasion",
                  ),
                  SizedBox(width: 15), // Jarak antara cast cards
                  poster(
                    PosterPath: "assets/po3.png",
                    name: "Eternal Ghost",
                  ),
                               SizedBox(width: 10),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.pushNamed(context,
                                          '/detailMovie'); // Ganti dengan rute yang sesuai
                                    },
                                    child: Image.asset(
                                      ("assets/po1.png"),
                                             width: 100,
                                          height: 150,
                                    ),
                                  ),
                                ),
                              ),
                          SizedBox(height: 3),
                              Text(
                                "Winner Winner\nChicken Dinner",
                                style: TextStyle(
                                  color: Color(0xFF01004E),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                                textAlign: TextAlign.start,
                              )
                            ],
                          )),
                    ),
                  ),
                  SizedBox(width: 15), // Jarak antara cast cards
                  poster(
                    PosterPath: "assets/po2.png",
                    name: "Alien Invasion",
                  ),
                  SizedBox(width: 15), // Jarak antara cast cards
                  poster(
                    PosterPath: "assets/po3.png",
                    name: "Eternal Ghost",
                  ),
                  SizedBox(width: 15), // Padding awal
                  poster(
                    PosterPath: "assets/po1.png",
                    name: "Winner Winner\nChicken Dinner",
                  ),
                  SizedBox(width: 15), // Jarak antara cast cards
                  poster(
                    PosterPath: "assets/po2.png",
                    name: "Alien Invasion",
                  ),
                  SizedBox(width: 15), // Jarak antara cast cards
                  poster(
                    PosterPath: "assets/po3.png",
                    name: "Eternal Ghost",
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context,
                        '/theaterPage'); // Ganti dengan rute yang sesuai
                  },
                  child: Text(
                    "Theater",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 15), // Padding awal
                  poster(
                    PosterPath: "assets/t1.png",
                    name: "My Friend is\nAbove the Moon",
                  ),
                  SizedBox(width: 15), // Jarak antara cast cards
                  poster(
                    PosterPath: "assets/t2.png",
                    name: "Transformer from\na Far",
                  ),
                  SizedBox(width: 15), // Jarak antara cast cards
                  poster(
                    PosterPath: "assets/t3.png",
                    name: "The Last Moon",
                  ),
                  SizedBox(width: 15), // Padding awal
                  poster(
                    PosterPath: "assets/t1.png",
                    name: "My Friend is\nAbove the Moon",
                  ),
                  SizedBox(width: 15), // Jarak antara cast cards
                  poster(
                    PosterPath: "assets/t2.png",
                    name: "Transformer from\na Far",
                  ),
                  SizedBox(width: 15), // Jarak antara cast cards
                  poster(
                    PosterPath: "assets/t3.png",
                    name: "The Last Moon",
                  ),
                  SizedBox(width: 15), // Padding awal
                  poster(
                    PosterPath: "assets/t1.png",
                    name: "My Friend is\nAbove the Moon",
                  ),
                  SizedBox(width: 15), // Jarak antara cast cards
                  poster(
                    PosterPath: "assets/t2.png",
                    name: "Transformer from\na Far",
                  ),
                  SizedBox(width: 15), // Jarak antara cast cards
                  poster(
                    PosterPath: "assets/t3.png",
                    name: "The Last Moon",
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Text(
                    "Hot News",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF01004E),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 15), // Jarak antara cast cards
                  news(
                    PosterPath: "assets/h1.png",
                    name:
                        "Neuromancer: Callum Turner to Lead\nApples Series Adaptation of Sci-Fi Classic",
                  ),
                  SizedBox(width: 30), // Padding awal
                  news(
                    PosterPath: "assets/h2.png",
                    name:
                        "Mila Kunis and Ashton Kutcher Not\nReturning for That 90s Show Season 2:\nWe Did Our Thing (Watch)",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(selectedItem: 0),
    );
  }
}

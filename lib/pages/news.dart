import 'package:flutter/material.dart';
import 'package:tugas_akhir/widget/bottom_nav.dart';

class newsPage extends StatelessWidget {
  const newsPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(1.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 35),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Webinar",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF01004E),
                    ),
                  ),
                ),
              ),
              Container(
                height: 180,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 15), // Jarak antara cast cards
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image(image: AssetImage('assets/webinar.jpg')),
                    ),
                    SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image(image: AssetImage('assets/webinar1.jpg')),
                    ),
                    SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image(image: AssetImage('assets/webinar2.jpg')),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 35),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Top Movie",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF01004E),
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 15), // Jarak antara cast cards
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Container(
                          height: 200,
                          child: Column(
                            children: [
                              Image.asset("assets/film.jpg"),
                              SizedBox(height: 8),
                              Image.asset("assets/star.jpg"),
                              SizedBox(height: 1),
                              Text(
                                "Free Guy",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.start,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Container(
                          height: 200,
                          child: Column(
                            children: [
                              Image.asset("assets/film1.jpg"),
                              SizedBox(height: 8),
                              Image.asset("assets/star.jpg"),
                              SizedBox(height: 1),
                              Text(
                                "Megan",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.start,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Container(
                                  height: 200,
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
                                                  '/DetailMovie'); // Ganti dengan rute yang sesuai
                                            },
                                            child: Image.asset(
                                              ("assets/Pathaan.jpg"),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Image.asset("assets/star.jpg"),
                                      SizedBox(
                                        height: 1,
                                      ),
                                      Text(
                                        "Pathaan",
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.start,
                                      )
                                    ],
                                  )),
                            ),
                          ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Container(
                          height: 200,
                          child: Column(
                            children: [
                              Image.asset("assets/film.jpg"),
                              SizedBox(height: 8),
                              Image.asset("assets/star.jpg"),
                              SizedBox(height: 1),
                              Text(
                                "Free Guy",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.start,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Container(
                          height: 200,
                          child: Column(
                            children: [
                              Image.asset("assets/film1.jpg"),
                              SizedBox(height: 8),
                              Image.asset("assets/star.jpg"),
                              SizedBox(height: 1),
                              Text(
                                "Megan",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.start,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Container(
                          height: 200,
                          child: Column(
                            children: [
                              Image.asset("assets/Pathaan.jpg"),
                              SizedBox(height: 8),
                              Image.asset("assets/star.jpg"),
                              SizedBox(height: 1),
                              Text(
                                "Pathaan",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.start,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 35),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Top Theater",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF01004E),
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 15), // Jarak antara cast cards
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Container(
                          height: 200,
                          child: Column(
                            children: [
                              Image.asset("assets/theater.jpg"),
                              SizedBox(height: 8),
                              Image.asset("assets/star.jpg"),
                              SizedBox(height: 1),
                              Text(
                                "Phantom Opera",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.start,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Container(
                          height: 200,
                          child: Column(
                            children: [
                              Image.asset("assets/theater1.jpg"),
                              SizedBox(height: 8),
                              Image.asset("assets/star.jpg"),
                              SizedBox(height: 1),
                              Text(
                                "Mary Poppins",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.start,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Container(
                          height: 200,
                          child: Column(
                            children: [
                              Image.asset("assets/theater2.jpg"),
                              SizedBox(height: 8),
                              Image.asset("assets/star.jpg"),
                              SizedBox(height: 1),
                              Text(
                                "Into the Woods",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.start,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Container(
                          height: 200,
                          child: Column(
                            children: [
                              Image.asset("assets/theater.jpg"),
                              SizedBox(height: 8),
                              Image.asset("assets/star.jpg"),
                              SizedBox(height: 1),
                              Text(
                                "Phantom Opera",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.start,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Container(
                          height: 200,
                          child: Column(
                            children: [
                              Image.asset("assets/theater1.jpg"),
                              SizedBox(height: 8),
                              Image.asset("assets/star.jpg"),
                              SizedBox(height: 1),
                              Text(
                                "Mary Poppins",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.start,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Container(
                          height: 200,
                          child: Column(
                            children: [
                              Image.asset("assets/theater2.jpg"),
                              SizedBox(height: 8),
                              Image.asset("assets/star.jpg"),
                              SizedBox(height: 1),
                              Text(
                                "Into the Woods",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.start,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(selectedItem: 1),
    );
  }
}

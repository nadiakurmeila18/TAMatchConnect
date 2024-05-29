import 'package:flutter/material.dart';
import 'package:tugas_akhir/data/movie.dart';

class MoviePage extends StatelessWidget {
  MoviePage({Key? key}) : super(key: key);

  final List<Movie> movies = [
    Movie(
        name: "Winner Winner\nChicken Dinner",
        Posterpath: "assets/po1.png"),
    Movie(name: "Alien Invasion", Posterpath: "assets/po2.png"),
    Movie(name: "Eternal Ghost", Posterpath: "assets/po3.png"),
   Movie(
        name: "Winner Winner\nChicken Dinner",
        Posterpath: "assets/po1.png"),
    Movie(name: "Alien Invasion", Posterpath: "assets/po2.png"),
    Movie(name: "Eternal Ghost", Posterpath: "assets/po3.png"),
    Movie(
        name: "Winner Winner\nChicken Dinner",
        Posterpath: "assets/po1.png"),
    Movie(name: "Alien Invasion", Posterpath: "assets/po2.png"),
    Movie(name: "Eternal Ghost", Posterpath: "assets/po3.png"),
   Movie(
        name: "Winner Winner\nChicken Dinner",
        Posterpath: "assets/po1.png"),
    Movie(name: "Alien Invasion", Posterpath: "assets/po2.png"),
    Movie(name: "Eternal Ghost", Posterpath: "assets/po3.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Movie",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Color(0xFF01004E),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
         leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
          Navigator.pushNamed(context, '/home');
          },
        ),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical, 
        itemCount:
            (movies.length / 3).ceil(), // Membagi item menjadi grup 3 per baris
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(height: 35), // Memberikan jarak antar baris
              Row(
                children: [
                  for (var i = index * 3;
                      i < (index + 1) * 3 && i < movies.length;
                      i++)
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset(
                                movies[i].Posterpath,
                                width: 100,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                          SizedBox(height: 7),
                            Text(
                              movies[i].name,
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.left,
),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
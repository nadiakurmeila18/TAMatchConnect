import 'package:flutter/material.dart';
import 'package:tugas_akhir/data/theater.dart';

class theaterPage extends StatelessWidget {
  theaterPage({Key? key}) : super(key: key);

  final List<theater> theaters = [
    theater(
        name: "My Friend is\nAbove the Moon",
        Posterpath: "assets/t1.png"),
    theater(name: "Transformer\from a Far", Posterpath: "assets/t2.png"),
    theater(name: "The Last Moon", Posterpath: "assets/t3.png"),
     theater(
        name: "My Friend is\nAbove the Moon",
        Posterpath: "assets/t1.png"),
    theater(name: "Transformer\from a Far", Posterpath: "assets/t2.png"),
    theater(name: "The Last Moon", Posterpath: "assets/t3.png"),
     theater(
        name: "My Friend is\nAbove the Moon",
        Posterpath: "assets/t1.png"),
    theater(name: "Transformer\from a Far", Posterpath: "assets/t2.png"),
    theater(name: "The Last Moon", Posterpath: "assets/t3.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Theather",
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
            (theaters.length / 3).ceil(), // Membagi item menjadi grup 3 per baris
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(height: 35), // Memberikan jarak antar baris
              Row(
                children: [
                  for (var i = index * 3;
                      i < (index + 1) * 3 && i < theaters.length;
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
                                theaters[i].Posterpath,
                                width: 100,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                          SizedBox(height: 7),
                            Text(
                              theaters[i].name,
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
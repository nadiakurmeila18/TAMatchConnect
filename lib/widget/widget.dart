import 'package:flutter/material.dart';


Container header(String path) {
  return Container(
    child: Center(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: 120,
                height: 170,
                child: Image.asset('$path',
                height: 350,
                width: 200,
                fit: BoxFit.cover,
            ),
          )
          )
        ],
      ),
    ),
  );
}

Container name(String name) {
  return Container(
    child: Center(
      child: Column(
        children: [Text('$name', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),)
        ],
      ),
    ),
  );
}

Container publisher(String publisher) {
  return Container(
    child: Center(
      child: Column(
        children: [Text('$publisher', style: TextStyle(fontWeight: FontWeight.w500, color: Color.fromARGB(255, 0, 0, 91)),)
        ],
      ),
    ),
  );
}

Container rate(String rate, String genre1, String genre2) {
  return Container(
    child: Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star_rate),
                        Text('$rate'.toString(), style: TextStyle(fontWeight: FontWeight.w700, color: Color.fromARGB(255, 0, 0, 91), fontSize: 20),),
                        Card(
                          child: Container(
                            margin: EdgeInsets.only(top: 3, bottom: 3, left: 18, right: 18),
                            child: Row(
                              children: [
                                Text("$genre1", style: TextStyle(fontWeight: FontWeight.w600, color: Colors.grey),)
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            margin: EdgeInsets.only(top: 3, bottom: 3, left: 18, right: 18),
                            child: Row(
                              children: [
                                Text("$genre2", style: TextStyle(fontWeight: FontWeight.w600, color: Colors.grey),)
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
  );
}

Container desk(String desk) {
  return Container(
    margin: EdgeInsets.only(left: 20, right: 20),
    child: Center(
      child: Column(
        children: [
          Text('$desk', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15, color: Colors.grey),)
        ],
      )
      ),
  );
}

Container director(String path, String name) {
  return Container(
    margin: EdgeInsets.only(left: 20, right: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle
              ),
              child: ClipOval(
                child: Image.asset('$path',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
                )
                ),
            ),
            Text('$name', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Color.fromARGB(255, 0, 0, 91)),textAlign: TextAlign.left,)
          ],
        ),
      ],
    ),
  );
}

Container star(String path, String name, String char) {
  return Container(
    margin: EdgeInsets.only(left: 20, right: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle
              ),
              child: ClipOval(
                child: Image.asset('$path',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
                )
                ),
            ),
            Text('$name', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Color.fromARGB(255, 0, 0, 91)),),
            Text('$char', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.grey),)
          ],
        ),
      ],
    ),
  );
}

Container Similar(String path, String name) {
  return Container(
    height: 150,
    margin: EdgeInsets.only(left: 20, right: 20),
    child: Column(
      children: [
        Container(
          // height: ,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: 170,
              height: 230,
                child: Image.asset('$path',
                height: 350,
                width: 200,
                fit: BoxFit.cover,
            ),
            )
          )
          ),
        Text('$name', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),),
      ],
    ),
  );
}
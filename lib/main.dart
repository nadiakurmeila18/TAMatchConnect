import 'package:flutter/material.dart';
import 'package:tugas_akhir/pages/DetailMovie.dart';
import 'package:tugas_akhir/pages/detailActor.dart';
import 'package:tugas_akhir/pages/detailCastPage.dart';
import 'package:tugas_akhir/pages/detailMoviePage.dart';
import 'package:tugas_akhir/pages/home.dart';
import 'package:tugas_akhir/pages/login.dart';
import 'package:tugas_akhir/pages/moviePage.dart';
import 'package:tugas_akhir/pages/news.dart';
import 'package:tugas_akhir/pages/profilPage.dart';
import 'package:tugas_akhir/pages/theaterPage.dart';
void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
initialRoute: '/',
    routes: {
      '/': (context) => login(),
      '/home' :(context) => HomePage(),
      '/news' :(context) => newsPage(),
      '/profil' :(context) => profile(),
      '/detailMovie' :(context) => detailMovie(),
      '/moviePage' :(context) => MoviePage(),
      '/theaterPage' :(context) => theaterPage(),
      '/profilpage' :(context) => profile(),
      '/detailactor' :(context) => DetailActor(),
      '/DetailMovie' :(context) => DetailMovie(),
      '/DetailCast' :(context) => detailCast(),
},
    );
  }
}
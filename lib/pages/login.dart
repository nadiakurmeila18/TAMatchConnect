import 'package:flutter/material.dart';
import 'package:tugas_akhir/pages/login2.dart';

class login extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Image.asset(
                "assets/login.png"
              ),
            ),
            SizedBox(height: 30),
            Text(
              "dream of",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
           SizedBox(height: 5,),
           Center(
            child: Column(
            children: [
             Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Text(
              "becoming a ",
              style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
              ),           
            ),
            
            Text(
              "star ",
              style: TextStyle(
                color : Color.fromARGB(255, 10, 40, 65),
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              "?",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
           
                  ],
                )
                ,
                 SizedBox(height: 30,),
            Material(
              color: Color.fromARGB(255, 10, 40, 65),
              borderRadius: BorderRadius.circular(50),
              child: InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => login2()
                    )
                    );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 150),
                  child: Text(
                    "Next",
                    style: TextStyle(
                      color: Colors. white,
                      fontSize: 20,
                      
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 100,),
            Image.asset(
              "assets/titik.png"
            )
              ],
            ),
            
           )
            
          ],
        ),
        
      ),
    );
  }
}
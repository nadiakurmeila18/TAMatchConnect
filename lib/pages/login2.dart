import 'package:flutter/material.dart';
import 'package:tugas_akhir/pages/login3.dart';

class login2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 50,),
            Padding(
              padding: EdgeInsets.all(20),
              child: Image.asset(
                "assets/login2.png",
                height: 280,
                width: 300,
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Column(
              children: [
            Row(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
             Text(
                "Lacks of",
                style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
                " actor/actress ",
                style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 10, 40, 65),
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
                "for",
                style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
           ],
           ),
           SizedBox(height: 10,),
           Text(
              "a movie and theater? ",
              style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
              ),           
            ),  
                ],
              ),
            ),
            
           SizedBox(height: 5,),
           Center(
            child: Column(
            children: [
                 SizedBox(height: 30,),
            Material(
              color: Color.fromARGB(255, 10, 40, 65),
              borderRadius: BorderRadius.circular(50),
              child: InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => login3()
                    )
                    );
                },
                
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 150),
                  child: Text(
                    "Start!",
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
              "assets/titik2.png"
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
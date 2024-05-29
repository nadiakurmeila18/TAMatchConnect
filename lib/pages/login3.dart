import 'package:flutter/material.dart';
import 'package:tugas_akhir/pages/SignIn.dart';
import 'package:tugas_akhir/pages/SignUp.dart';

void main()=> runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: login3(),
  )
);

class login3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(0),
       child:Column(
        children: <Widget> [
          SizedBox(height: 5,),
          Padding(
            padding: EdgeInsets.all(20),
            child: Image.asset(
              "assets/login2.png",
              height: 220,
              width: 220,
            ),
          ),
          SizedBox(height: 5),
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
            SizedBox(height: 30),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height*0.4,
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 10, 6, 134),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)
                    )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 15),
                      child: Row(
                        children: [
                          SizedBox(height: 10,),
                          Text(
                            "Welcome Connecters!",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                      ),
                      Padding(padding: 
                      EdgeInsets.only(top:10, bottom: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Match Connect will help you to find easiest job that best match for you! Build your account now and access all the features for free!",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18
                            ),
                          ),
                        ],
                      ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded (
                            child: InkWell(
                            onTap: (){
                             Navigator.push(
                              context,
                            MaterialPageRoute(
                         builder: (context) => signUp()
                       )
                    );
                },
                            child: 
                              Container(
                                height: 50,
                                width: 200,
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.black
                                ),
                                child: Center(
                                  child: Text(
                                    "Sign Up",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18
                                    ),
                                )),
                              ),
                          ),
                          ),
                          Expanded(
                            child: InkWell(
                            onTap: (){
                             Navigator.push(
                              context,
                            MaterialPageRoute(
                         builder: (context) => signIn()
                       )
                    );
                },
                            child:Container(
                            height: 50,
                            width: 200,
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white,
                              
                            ),
                            child: Center(
                              child: Text(
                                "Log in",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18
                                ),
                            )),
                          ),
                          )
                          )
                        ],
                      )
                  ],
                ),
              ),
            )
        ],
       ) ,
      )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:tugas_akhir/pages/home.dart';
import 'package:tugas_akhir/pages/SignUp.dart';
import 'package:tugas_akhir/pages/login2.dart';
import 'package:tugas_akhir/pages/news.dart';

class signIn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      
      body: Scrollbar(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Welcome Back!", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromARGB(255, 209, 209, 209)
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Your Name",
                          
                      ),
                    )
                    ),
                    
                    Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromARGB(255, 209, 209, 209)
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Your Password",
                          
                      ),
                    )
                    ),
                    Text(
                      "Forgot Password?",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 10, 40, 65)
                      ),
                      ),
                    
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
                          builder: (context) => HomePage()
                        )
                        );
                    },
                    
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 130),
                      child: Text(
                        "Log In",
                        style: TextStyle(
                          color: Colors. white,
                          fontSize: 20,
                          
                        ),
                      ),
                    ),
                  
                  ),
                ),
                  ],
                ),
                
               ),
               SizedBox(height: 20,),
               
               Center(
                child: Column(
                  children: [
                    Text("OR", style: TextStyle(fontSize: 20),)
                  ],
                ),
               ),
               SizedBox(height: 20,),
               Column(
                children: <Widget> [
                  MaterialButton(
                    minWidth: 380,
                    height: 50,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => signIn())
                      );
                    },
                    shape: RoundedRectangleBorder(side: BorderSide(
                      color: Colors.black
                    ),
                    
                    borderRadius: BorderRadius.circular(50)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/google.png"
                        ),
                        Text(
                         "Google",
                         style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                          
                         ),
                        )
                      ],
                    ),
                    
                  ),
                ],
               ),
               SizedBox(height: 10,),
               Column(
                children: <Widget> [
                  MaterialButton(
                    minWidth: 380,
                    height: 50,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => signIn())
                      );
                    },
                    shape: RoundedRectangleBorder(side: BorderSide(
                      color: Colors.black
                    ),
                    
                    borderRadius: BorderRadius.circular(50)
                    ),
                    
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/apple.png"
                        ),
                        Text(
                         "Apple",
                         style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                          
                         ),
                        )
                      ],
                    ),
                    
                  ),
                ],
               ),
               SizedBox(height: 150,),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text(
                    "Don't have an account yet? "
                   ),
                   
                   Column(
                     children: [
                        GestureDetector(
                          child: Text(
                        " Sign Up",
                        style: TextStyle(
                          color: Color.fromARGB(255, 10, 40, 65),
                        ) , 
                        
                       ),
                       onTap: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=> signUp()));
                       },
                        )
                       
                     ],
                   ),
                   
                   
                 ],
               )
               
                  ],
                  
                ),
                
              ),
            )
          ),
        ],
      ),
        )
      ),
    );
  }
}
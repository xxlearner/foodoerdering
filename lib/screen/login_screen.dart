
import 'package:flutter/material.dart';
import 'package:loginapp/screen/home_screen.dart';



TextStyle myStyle = const TextStyle(fontSize: 25);

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> { 
late String Username;
late String Password;

  @override
  Widget build(BuildContext context) {

     final usernameField = TextField(
      onChanged: (val){
        setState(() {
          Username = val;
        });
      },
    style: myStyle,
    decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(5),
        hintText: "Username",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
  );



  final passwordField = TextField(
    onChanged: (val){
        setState(() {
          Password = val;
        });
      },
    obscureText: true,
    style: myStyle,
    decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(10),
        hintText: "Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0))),
  );


  final myLoginButton = Material(
  elevation: 5.0,
  borderRadius: BorderRadius.circular(20.0),
  color: Colors.blue,
  child: MaterialButton(
    minWidth: MediaQuery.of(context).size.width,
    padding: const EdgeInsets.all(20),
    onPressed: (){
     
     if(Username == "Ram" && Password =="pass123"){
      Navigator.push(context, MaterialPageRoute(builder:(context)=> HomeScreen(Username)));
      
     }
      else{
        print("Failed");
      }

    },
    child: const Text('Login', style: TextStyle(color: Colors.white, fontSize: 30),
    ),
     )
);
    return Scaffold(

      body: Center(
        child: Container(
          
         // decoration: BoxDecoration(
           // image: DecorationImage(
             // image: AssetImage
              //("images/hills.jpg",
             //fit: BoxFit.cover,
            //  ),
           // ),
          //),
          child: Padding(
            padding: const EdgeInsets.all(30),
          child: ListView(
            children: [
              Column(
          
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

            const Icon(Icons.supervised_user_circle, size: 200,),
            const SizedBox(height: 100),
            usernameField ,
             const SizedBox(height: 20),
             passwordField,
             const SizedBox(height: 20),

             
             myLoginButton,
               const SizedBox(height: 30),

             const Text('#Flutter', style: TextStyle(color: Colors.white, fontSize: 10),
             ),

            ],
            )
            ]
          )
            )
        )

      )
    );
  }
}
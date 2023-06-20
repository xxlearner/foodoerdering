import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  final String username;
  


  HomeScreen(this.username);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home Page", style: TextStyle(fontSize: 30, decorationColor: Colors.white, ),),


        ),
       
        body: Stack(
         children: [
          //  Positioned.fill(
          //  child: Image(
            //  image: widget(
              //  child: Image.asset(
               // "images/plant.jpg",
               // fit: BoxFit.cover,
              //  ),
             // ),
           // ), 
           // ),
        
           Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            SizedBox(height: 25,),
            Center(child: Text("Welcome to this page "+ username, style: TextStyle(fontSize: 30),)),
            SizedBox(height: 50),

            Text('#Flutter', style: TextStyle(color: Colors.white, fontSize: 10),
             ),
          ],
        ),
          ],
        ),
    );
  }
  
  widget({required Image child}) {}
}
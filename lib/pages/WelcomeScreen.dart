import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,

       child: Stack(
         children: [
           Stack(
             children: [
               Container(
                 width: MediaQuery.of(context).size.width,
                 height: MediaQuery.of(context).size.height/1.6,
                 decoration: BoxDecoration(
                   color: Colors.white,
                 ),
               ),
               Container(
                 width: MediaQuery.of(context).size.width,
                 height: MediaQuery.of(context).size.height / 1.6,
                 decoration: BoxDecoration(
                     color: Colors.deepPurpleAccent,
                     borderRadius: BorderRadius.only(bottomRight: Radius.circular(70))
                 ),
                 child: Center(
                     child: Image.asset("assets/images/books.png", scale: 0.8,)
                 ),
               )
             ],
           ),
           Align(
             alignment: Alignment.bottomCenter,
             child: Container(
               width: MediaQuery.of(context).size.width,
               height: MediaQuery.of(context).size.height/2.666,
               decoration: BoxDecoration(
                 color: Colors.deepPurpleAccent
               ),
             )
           ),
           Align(
               alignment: Alignment.bottomCenter,
               child: Container(
                 width: MediaQuery.of(context).size.width,
                 height: MediaQuery.of(context).size.height/2.666,
                 decoration: BoxDecoration(
                     color: Colors.white,
                   borderRadius: BorderRadius.only(
                     topLeft: Radius.circular(70),
                   )
                 ),
               )
           ),
         ],
       ),

      ),
    );
  }
}

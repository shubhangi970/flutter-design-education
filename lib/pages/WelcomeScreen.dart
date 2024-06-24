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
                 padding: EdgeInsets.only(top: 40, bottom: 40),
                 child: Column(
                   children: [
                     Text("Learning is everything",
                       style: TextStyle(
                         fontSize: 25,
                         fontWeight: FontWeight.bold,
                         letterSpacing: 1,
                         wordSpacing: 2
                       ),
                     ),
                     SizedBox(height: 15,),
                     Padding(
                         padding: EdgeInsets.symmetric(horizontal: 40),
                       child: Text("Learning with Pleasure with Dear Programmer, wherever you are.",
                         textAlign: TextAlign.center,
                         style: TextStyle(
                           fontSize: 17,
                           color: Colors.black.withOpacity(0.8),

                         ),
                       ),
                     ),
                     SizedBox(height: 50,),
                     Material(
                       color: Colors.deepPurpleAccent,
                       borderRadius: BorderRadius.circular(10),
                       child: InkWell(

                         onTap: (){},
                         child: Container(
                           padding: EdgeInsets.symmetric(vertical: 15, horizontal: 90),

                           child: Text("Get Started",
                             style: TextStyle(
                               color: Colors.white,
                               fontSize: 20,
                               fontWeight: FontWeight.bold
                             ),
                           ),
                         ),
                       ),
                     )

                   ],
                 ),
               )
           ),
         ],
       ),

      ),
    );
  }
}

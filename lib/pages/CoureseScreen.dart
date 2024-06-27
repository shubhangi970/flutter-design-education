import 'package:flutter/material.dart';
import 'package:prac/widgets/DescriptionSection.dart';
import 'package:prac/widgets/VideoSection.dart';

class Couresescreen extends StatefulWidget {
  String img;

  Couresescreen(this.img);

  @override
  State<Couresescreen> createState() => _CouresescreenState();
}

class _CouresescreenState extends State<Couresescreen> {

  bool isVideoSection = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.blue,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
            widget.img,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications,
              size: 28,
              color: Colors.deepPurpleAccent,
            ),
          )
        ],
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage("assets/images/${widget.img}.png"),
                )
              ),
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle
                  ),
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle
                      ),
                      child: Icon(Icons.play_arrow_rounded, color: Colors.black, size: 45,),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Text(
              "${widget.img} Complete course",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),

            SizedBox(height: 5,),
            Text("created by programmer", style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black.withOpacity(0.7)
            ),
            ),
            SizedBox(height: 5,),
            Text(
              "55 videos",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.5)
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(
                    color: isVideoSection? Colors.deepPurpleAccent: Colors.deepPurpleAccent.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){

                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                        child: Text(
                          "Videos",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){

                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                        child: Text(
                          "Description",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            isVideoSection?VideoSection():Descriptionsection(),
          ],
        ),
      ),



    );
  }
}








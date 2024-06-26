import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List<String> catNames = [
      "Category",
      "Classes",
      "Free courses",
      "Bookstore",
      "Live Course"
    ];

    List<Color> catColor = [
      Color(0xffffcf2f),
      Color(0xff6fe08d),
      Color(0xff61bdfd),
      Color(0xffcb84fd),
      Color(0xff78e667),
      Color(0xfffc7c7f)
    ];

    List<Icon> icons = [
      Icon(Icons.category, color: Colors.white, size: 30,),
      Icon(Icons.video_library, color: Colors.white, size: 30,),
      Icon(Icons.assignment, color: Colors.white, size: 30,),
      Icon(Icons.store, color: Colors.white, size: 30,),
      Icon(Icons.play_circle_fill, color: Colors.white, size: 30,),
      Icon(Icons.emoji_events, color: Colors.white, size: 30,),
    ];

    List imageList = [
      'Flutter',
      'React Native',
      'python',
      'C#'
    ];

    return Scaffold(
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(top: 15, right: 15, left: 15, bottom: 10),
              decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)
                  )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.dashboard, size: 30, color: Colors.white,),
                      Icon(Icons.notifications, size: 30, color: Colors.white,)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: EdgeInsets.only(left: 3, bottom: 15),
                    child: Text(
                      "Hi Programmer",
                      style: TextStyle(
                          fontSize: 25,
                          wordSpacing: 2,
                          letterSpacing: 1,
                          color: Colors.white
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5, bottom: 10),
                    width: MediaQuery.of(context).size.width,
                    height: 55,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search here",
                          hintStyle: TextStyle(
                              color: Colors.black.withOpacity(0.5)
                          ),
                          prefixIcon: Icon(Icons.search, size: 25)
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Column(
                  children: [
                    GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            childAspectRatio: 1.1
                        ),
                        itemCount: catNames.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: catColor[index],
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: icons[index],
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                catNames[index],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          );
                        }
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("courses", style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 23
                        ),),
                        Text("See All", style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          color: Colors.deepPurpleAccent
                        ),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    GridView.builder(
                       itemCount: imageList.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: (MediaQuery.of(context).size.height - 50- 25)/ (4*240),
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10
                    ), itemBuilder: (context, index){
                          return InkWell(
                            onTap: (){

                            },
                            child: Container(
                                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xfff5f3ff)
                              ),
                              child: Column(
                                children: [

                                ],
                              ),
                            ),
                          );

                    })
                  ],

              ),

            ),


          ],
        )
    );
  }
}

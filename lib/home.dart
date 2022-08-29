import 'package:flutter/material.dart';
class Homepage extends StatefulWidget {
  static final String id="home_page";

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     appBar: AppBar(
       backgroundColor: Colors.white,
       elevation: 0,
       title: Text("facebook",style: TextStyle(color: Colors.blueAccent,fontSize: 30,fontWeight: FontWeight.bold),),
       actions: [
         Icon(Icons.search,color: Colors.grey,),
         SizedBox(width: 10,),
         Icon(Icons.camera_alt,color: Colors.grey,),
       ],
     ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 10,left: 10,right: 10),
            margin: EdgeInsets.only(top: 0),
            height: 120,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 45,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/images/user_5.jpeg"),
                          fit: BoxFit.cover,
                        )
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 46,
                        margin: EdgeInsets.only(right: 15,left: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(23),
                          border: Border.all(
                            width: 1,
                            color: Colors.grey,
                          )
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "What's on your mind?",
                             border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.grey[700]),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

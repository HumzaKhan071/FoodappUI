import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodieappui/subPage.dart';

void main() {
  runApp(MyApp(

  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      home: MyHomePage(),

    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Discovery",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
        ),

      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
        height: MediaQuery.of(context).size.height,
        color: Colors.grey.shade300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(child:
            Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                getExpanded("images/beer.png","Beers & Hotel","42 Places"),

             getExpanded("images/4086106.png","Fine Dining","25 Places")
              ],
            )),
            Expanded(child:
            Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                getExpanded("images/cafee.jpg","Cafes","28 Places"),
                getExpanded("images/tracking.png","Nearby","34 Places")
              ],
            )),
            Expanded(child:
            Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                getExpanded("images/fast food.png","fast Foods","29 Places"),

                getExpanded("images/cousine.png","Featured Foods","21 Places")
              ],
            ))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type:BottomNavigationBarType.fixed,
        items:<BottomNavigationBarItem>[
          getBottomNavigationBarItem(const IconData(0xead0,
              fontFamily: "outline_material_icons",
              fontPackage: "outline_material_icons")),
          getBottomNavigationBarItem(const IconData(0xebd3,
              fontFamily: "outline_material_icons",
              fontPackage: "outline_material_icons")),
          getBottomNavigationBarItem(const IconData(0xec8e,
              fontFamily: "outline_material_icons",
              fontPackage: "outline_material_icons")),
          getBottomNavigationBarItem(const IconData(0xe90c,
              fontFamily: "outline_material_icons",
              fontPackage: "outline_material_icons")),
        ],
        currentIndex: 1,
        selectedItemColor: Colors.amber[800],

      ),
    );
  }
  BottomNavigationBarItem getBottomNavigationBarItem(IconData iconName){
    return BottomNavigationBarItem(
      icon: Icon(iconName,
        size: 35.0
        ,
      ),
      title: Text("",
        style: TextStyle(
          fontSize: 10.0,
        ),
      )

    );
  }
  Expanded getExpanded(String image,String mainText,String subText){
    return  Expanded(
      child: FlatButton(
       padding: EdgeInsets.all(0),
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset("$image",height: 80.0,),
                SizedBox(
                  height: 5.0,
                ),
                Text(mainText,style:
                TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),),
                SizedBox(
                  height: 5.0,
                ),
                Text(subText,
                  style: TextStyle(
                      fontSize: 0.0
                  ),
                )

              ],
            ),
          ),
          margin: EdgeInsets.only(left: 10.0,top: 10.0,right: 10.0,bottom: 10.0),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
                bottomLeft:Radius.circular(5),
                bottomRight: Radius.circular(5),
              ),
              boxShadow: [
                BoxShadow(),

              ]
          ),
        ),
        onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context) => SubPage(mainText),));
        },
      ),
    );

  }
}
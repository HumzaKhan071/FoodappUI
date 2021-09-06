import 'package:flutter/material.dart';
class SubPage extends StatelessWidget {

  late String Title;

  SubPage(String sTitle){
    Title = sTitle;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(Title,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,

        ),),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text("Back to Home"),
        ),
      ),
    );
  }
}

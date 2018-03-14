import "package:flutter/material.dart";

class First extends StatelessWidget{
  @override
  Widget build(BuildContext build){
    return new Container(
      child: new Center(
        child: new Icon(Icons.home,size:40.0,color: Colors.redAccent,),
      ),
    );
  }
}
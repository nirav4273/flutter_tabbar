import "package:flutter/material.dart";
import './firstPage.dart' as First;
import './secondPage.dart' as Second;
import './thirdpage.dart' as Third;

//
//void main()=>runApp(
//   new Material(
//
//   )
//);
void main() => runApp(
    new MaterialApp(
      home: new AppBarView()
    )
);



class AppBarView extends StatefulWidget{
  @override
  AppBarStateView createState()=>new AppBarStateView();
}

class AppBarStateView extends State<AppBarView> with SingleTickerProviderStateMixin {
    TabController controller;

    @override
    void initState(){
      super.initState();
      controller = new TabController(vsync:this,length: 3);
    }
    @override
    void dispose(){
      controller.dispose();
      super.dispose();
    }


    @override
    Widget build(BuildContext context){
      return new Scaffold(
        appBar: new AppBar(
          title: new Text("Pages"),
          backgroundColor: Colors.orange,
          bottom: new TabBar(
            controller: controller,
            tabs: <Tab>[
              new Tab(icon: new Icon(Icons.home,color: Colors.white,size: 20.0,)),
              new Tab(icon: new Icon(Icons.message,color: Colors.white,size: 20.0,)),
              new Tab(icon: new Icon(Icons.games,color: Colors.white,size: 20.0,))
            ],
          ),
        ),
        bottomNavigationBar: new Material(
          color:Colors.orangeAccent,
          child: new TabBar(
            controller: controller,
            tabs: <Widget>[
              new Tab(icon: new Icon(Icons.home,color: Colors.white,size: 20.0,)),
              new Tab(icon: new Icon(Icons.message,color: Colors.white,size: 20.0,)),
              new Tab(icon: new Icon(Icons.games,color: Colors.white,size: 20.0,))
            ],
          ),
        ),
        body: new TabBarView(
          controller: controller,
          children: <Widget>[
            new First.First(),
            new Second.Second(),
            new Third.Third()
          ],
        ),
      );
    }
}
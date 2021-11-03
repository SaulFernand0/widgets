import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class home extends StatefulWidget{
  @override

  _homeState createState() => new _homeState();
}

class _homeState extends State<home>{
  final List<String>listof=[
    "Arroz",
    "Fideos",
    "Gaseosa",
    "Galletas",
    "Leche",
    "Azucar",
    "Detergente",
    "Jabon"];

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Bodeguita de Don Pepe",
          style: new TextStyle(fontSize: 19.0),
        ),
        backgroundColor: Colors.deepPurple,

        actions: <Widget> [
          new IconButton(
            icon: new Icon(Icons.add),
            onPressed: ()=>debugPrint("Add"),
          ),

          new IconButton(
            icon: new Icon(Icons.search),
            onPressed: ()=> debugPrint("Search"),
          )
        ],
      ),

      body: new Container(
        child: new ListView.builder(
          itemBuilder: (_,int index)=> listDataItem(this.listof[index]),
          itemCount: this.listof.length,
        ),
      ),

      floatingActionButton: new FloatingActionButton(
          onPressed: ()=>debugPrint("FB Button Click"),
          child: new Icon(Icons.add),
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
      ),

    );
  }
}

class listDataItem extends StatelessWidget{
  String itemName;
  listDataItem(this.itemName);

  @override
  Widget build(BuildContext context){
    return new Card(

      elevation: 7.0,

      child: new Container(

        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(6.0),

        child: new Row(
          children: <Widget> [

            new CircleAvatar(
              child: new Text(itemName[0]),
              backgroundColor: Colors.deepPurple,
              foregroundColor: Colors.white,
            ),
            
            new Padding(padding: EdgeInsets.all(8.0)),
            new Text(itemName,style: TextStyle(fontSize: 20.0), )

          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class PublicacionPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PublicacionState();
  }
}

class PublicacionState extends State<PublicacionPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Crear una Publicación"),
      ),
    );
  }
}
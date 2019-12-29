import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }
}

class HomeState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    final post = Padding(
      padding: EdgeInsets.symmetric(vertical: 0.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)
            ),
            minWidth: 500.0,
            height: 42.0,
            onPressed: () {
              Navigator.of(context).pushNamed('/publicacion-page');
            },
            color: Colors.lightBlueAccent,
            child: Text('Crear una Publicación', style: TextStyle(color: Colors.white))
        ),
      ),
    );

    final body = Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(28.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.white,
            Colors.white
          ]),
        ),
        child: Column(
          children: <Widget>[post],
        )
    );

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text ("WorkS")
          ],
        ),
      ),
      body: body,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Perfil'),
              onTap: () {
                Navigator.of(context).pushNamed('/perfil-page');
              },
              leading: Icon(
                  Icons.account_circle
              ),
            ),
            ListTile(
              title: Text('Solicitudes'),
              onTap: () {
                Navigator.of(context).pushNamed('/solicitudes-page');
              },
              leading: Icon(
                  Icons.reorder
              ),
            ),
            ListTile(
              title: Text('Pago'),
              onTap: () {
                Navigator.of(context).pushNamed('/pago-page');
              },
              leading: Icon(
                  Icons.payment
              ),
            ),
            ListTile(
              title: Text('Configuración'),
              onTap: () {
                Navigator.of(context).pushNamed('/configuracion-page');
              },
              leading: Icon(
                  Icons.settings
              ),
            ),
            ListTile(
              title: Text('Ayuda'),
              onTap: () {
                Navigator.of(context).pushNamed('/ayuda-page');
              },
              leading: Icon(
                  Icons.help
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Bienvenidos a WorkS', style: TextStyle(fontSize: 16.0, color: Colors.black),
      ),
    );
    
    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent
        ]),
      ),
      child: Column(
        children: <Widget>[welcome],
      )
    );

    return Scaffold(
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
import 'package:flutter/material.dart';

class Firstpage extends StatelessWidget{
  static String tag = '/first-page';

  @override
  Widget build(BuildContext context) {

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)
            ),
            minWidth: 200.0,
            height: 42.0,
            onPressed: () {
              Navigator.of(context).pushNamed('/login-page');
            },
            color: Colors.lightBlueAccent,
            child: Text('Ingresar', style: TextStyle(color: Colors.white))
        ),
      ),
    );

    final registerButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)
            ),
            minWidth: 200.0,
            height: 42.0,
            onPressed: () {
              Navigator.of(context).pushNamed('/registro-page');
            },
            color: Colors.lightBlueAccent,
            child: Text('Registrarse', style: TextStyle(color: Colors.white))
        ),
      ),
    );

    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.only(left: 24.0, right: 24.0),
              children: <Widget>[
                loginButton,
                registerButton
              ],
            )
        )
    );
  }
}
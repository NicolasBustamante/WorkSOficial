import 'package:flutter/material.dart';

class PerfilPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PerfilState();
  }
}

class PerfilState extends State<PerfilPage>{
  @override
  Widget build(BuildContext context) {
    double statusbar = MediaQuery.of(context).padding.top;

    return Scaffold(
      appBar: AppBar(
        title: Text("Datos del Usuario"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: statusbar+10),
            height: 120,
            width: 120,
            child: Image.asset('assets/user.png'),
          ),
          Container(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text(
                    'Nicolás Bustamante',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
                Container(
                  child: InkWell(
                    child: Icon(
                        Icons.edit
                    ),
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('Cambiar Nombre'),
                              content: TextField(
                                //controller: _textFieldController,
                                decoration: InputDecoration(hintText: "Ingrese nuevo nombre"),
                              ),
                              actions: <Widget>[
                                new FlatButton(
                                  child: new Text('Cancelar'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                                new FlatButton(
                                  child: new Text('Guardar'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                )
                              ],
                            );
                          });
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text(
                    'Pasaje Francisco Contreras 3395',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
                Container(
                  child: InkWell(
                    child: Icon(
                        Icons.edit
                    ),
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('Cambiar Dirección'),
                              content: TextField(
                                //controller: _textFieldController,
                                decoration: InputDecoration(hintText: "Ingrese nueva dirección"),
                              ),
                              actions: <Widget>[
                                new FlatButton(
                                  child: new Text('Cancelar'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                                new FlatButton(
                                  child: new Text('Guardar'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                )
                              ],
                            );
                          });
                    },
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text(
                    '+56990571876',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
                Container(
                  child: InkWell(
                    child: Icon(
                        Icons.edit
                    ),
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('Cambiar Número Telefononico'),
                              content: TextField(
                                //controller: _textFieldController,
                                decoration: InputDecoration(hintText: "Ingrese nuevo número telefonico"),
                              ),
                              actions: <Widget>[
                                new FlatButton(
                                  child: new Text('Cancelar'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                                new FlatButton(
                                  child: new Text('Guardar'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                )
                              ],
                            );
                          });
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

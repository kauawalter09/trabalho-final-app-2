import 'package:flutter/material.dart';

class Lol extends StatefulWidget {
  const Lol({Key? key}) : super(key: key);

  @override
  _LolState createState() => _LolState();
}

class _LolState extends State<Lol> {
  bool _selecionavalor = false;
  bool _selecionavalo1 = false;
  bool _selecionavalo2 = false;
  bool _selecionavalo3 = false;
  bool _selecionavalo4 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text("Selecione as missões feitas hoje e o app ira conferir!",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 18,),
            CheckboxListTile(
                activeColor: Colors.amber,
                title: Text("Jogue uma partida formada por amigos:"),
                value: _selecionavalor,
                onChanged: (_valorcheck) {
                  setState(() {
                    if (_selecionavalor) {
                      _selecionavalor = false;
                    } else {
                      _selecionavalor = true;
                    }
                  });
                  print("Valor selecionado 0 =" + _selecionavalor.toString());
                }),
            SizedBox(height: 18,),
            CheckboxListTile(
                activeColor: Colors.amber,
                title: Text("Jogou por mais de 2h:"),
                value: _selecionavalo1,
                onChanged: (_valorcheck) {
                  setState(() {
                    if (_selecionavalo1) {
                      _selecionavalo1 = false;
                    } else {
                      _selecionavalo1 = true;
                    }
                  });
                  print("Valor selecionado 1 =" + _selecionavalo1.toString());
                }),
            SizedBox(height: 18,),
            CheckboxListTile(
                activeColor: Colors.amber,
                title: Text("Ganhou 3 partidas seguidas"),
                value: _selecionavalo2,
                onChanged: (_valorcheck) {
                  setState(() {
                    if (_selecionavalo2) {
                      _selecionavalo2 = false;
                    } else {
                      _selecionavalo2 = true;
                    }
                  });
                  print("Valor selecionado 1 =" + _selecionavalo2.toString());
                }),
            SizedBox(height: 18,),
            CheckboxListTile(
                activeColor: Colors.amber,
                title: Text("n sei oque colocar:"),
                value: _selecionavalo3,
                onChanged: (_valorcheck) {
                  setState(() {
                    if (_selecionavalo3) {
                      _selecionavalo3 = false;
                    } else {
                      _selecionavalo3 = true;
                    }
                  });
                  print("Valor selecionado 3 =" + _selecionavalo3.toString());
                }),
            SizedBox(height: 18,),
            CheckboxListTile(
                activeColor: Colors.amber,
                title: Text("n sei oque colocar:"),
                value: _selecionavalo4,
                onChanged: (_valorcheck) {
                  setState(() {
                    if (_selecionavalo4) {
                      _selecionavalo4 = false;
                    } else {
                      _selecionavalo4 = true;
                    }
                  });

                  print("Valor selecionado 4 =" + _selecionavalo4.toString());
                }),

            SizedBox(height: 25,),
            //ignore: deprecated_member_use
            RaisedButton(
              hoverElevation: 20,
              color: Colors.amber,
              textColor: Colors.white,
              splashColor: Colors.lightBlueAccent,
              child: Text('Conferir!',),
              onPressed: () {
                _selecionavalo1 = false;
              },

            ),
          ],
        ),
      ),
    );
  }
}

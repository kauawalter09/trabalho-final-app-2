import 'package:flutter/material.dart';
import 'package:parte_um/jogos.dart';

class Cores {
  static Color verde = Color(0xff1DF272);
  static Color roxo = Color(0xff291333);
}

class principal extends StatefulWidget {
  const principal({Key? key}) : super(key: key);

  @override
  _principalState createState() => _principalState();
}

class _principalState extends State<principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Cores.roxo,
        title: Text('LevelUp',
        style: TextStyle(
          color: Cores.verde,
        )),
      ),



      drawer: Drawer(
        child: Container(
          color: Cores.verde,
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text('LevelUp'),
            ),
              ListTile(
              title: Text('Missões'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => jogos())
                );
              },
            ),
            Divider(),
            ListTile(
              title: Text('nao definido'),
              onTap: () {},
              focusColor: Cores.roxo,
            ),
            Divider(),
            ListTile(
              title: Text('nao definido'),
              onTap: () {},
            ),
            Divider(),
          ],
        ),
      ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Cores.roxo,
        ),
      ),

    );
  }
}

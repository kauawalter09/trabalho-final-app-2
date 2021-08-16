import 'package:flutter/material.dart';
import 'package:parte_um/ClashRoyale.dart';
import 'package:parte_um/FreeFire.dart';
import 'package:parte_um/Lol.dart';


class jogos extends StatefulWidget {
  const jogos({Key? key}) : super(key: key);

  @override
  _jogosState createState() => _jogosState();
}

class _jogosState extends State<jogos> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Hora de ganhar dinheiro!",
        style: TextStyle(
          fontSize: 22,
        ),
        ),
        bottom: TabBar(
          indicatorWeight: 5,
          indicatorColor: Colors.green,
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              text: "Free Fire",
              icon: Icon(Icons.local_fire_department, color: Colors.red,),

            ),
            Tab(
              text: "Clash Royale",
              icon: Icon(Icons.bolt, color: Colors.blue,),
            ),
            Tab(
              text: "LoL",
              icon: Icon(Icons.add_moderator_rounded, color: Colors.amber,),

            ),
          ],
        ),
      ),

      body: TabBarView(
        controller: _tabController,
        children: [
          FreeFire(),
          ClashRoyale(),
          Lol(),
        ],
      ),
    );
  }
}


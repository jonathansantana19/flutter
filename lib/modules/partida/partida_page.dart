import 'package:flutter/material.dart';
import 'package:hello/data/model/item_model.dart';

class PartidaPage extends StatelessWidget {
  ItemModel model;

  PartidaPage({required this.model});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    ItemModel item = this.model;
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Column(
        children: <Widget>[buildDataBody(item, size)],
      ),
    );
  }
}

Widget buildDataBody(ItemModel item, Size size) {
  return Column(
    children: <Widget>[
      SizedBox(height: 30),
      buildScoreContainer(item, size),
      buildTabs(item, size),
    ],
  );
}

Widget buildTabs(ItemModel item, Size size) {
  return Container(
    width: size.width,
    height: size.height - 200,
    child: DefaultTabController(
      length: 4,
      child: Column(
        children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(height: 50),
            child: TabBar(
              tabs: [
                Tab(text: "Tempo Real"),
                Tab(text: "Escalação"),
                Tab(text: "Estatisticas"),
                Tab(text: "Informações"),
              ],
              indicatorColor: Colors.deepOrange,
              labelColor: Colors.deepOrange,
              unselectedLabelColor: Colors.black,
            ),
          ),
          Expanded(
            child: Container(
              child: TabBarView(children: [
                buildEventsList(item),
                buildFormationPage(item, size),
                buildEventsList(item),
                buildEventsList(item),
              ]),
            ),
          )
        ],
      ),
    ),
  );
}

Widget buildFormationPage(ItemModel item, Size size) {
  // Widget buildFormationPage(Formation formation) {
  return Container(
    width: size.width,
    height: size.height - 250,
    child: DefaultTabController(
      length: 2,
      child: Column(
        children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(height: 50),
            child: TabBar(
              tabs: [
                Tab(text: 'Time Casa'),
                Tab(text: 'Time Visitante'),
              ],
              indicatorColor: Colors.deepOrange,
              labelColor: Colors.deepOrange,
              unselectedLabelColor: Colors.black,
            ),
          ),
          Expanded(
            child: Container(
              child: TabBarView(children: [
                SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      // if (teamData.formation != null)
                      //   Container(
                      //     width: MediaQuery.of(context).size.width * 0.75,
                      //     height: 45,
                      //     padding:
                      //         EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                      //     margin: EdgeInsets.symmetric(
                      //         vertical: 20, horizontal: 10),
                      //     child: Text(
                      //       teamData.formation,
                      //       textAlign: TextAlign.center,
                      //       style: TextStyle(color: Colors.white, fontSize: 30),
                      //     ),
                      //     decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.circular(10),
                      //       color: Colors.deepOrange.withOpacity(0.8),
                      //     ),
                      //   ),
                      Divider(),
                      ListTile(
                        title: Text('teamData.coach'),
                        subtitle: Text('Coach'),
                        leading: CircleAvatar(
                          child: Text('C'),
                          backgroundColor: Colors.black,
                        ),
                      ),
                      Divider(),
                      Text(
                        'Time',
                        style: TextStyle(color: Colors.black),
                      ),
                      // ...teamData.startXI.map((StartXI player) {
                      //   return ListTile(
                      //     title: Text(player.player),
                      //     leading: CircleAvatar(
                      //       child: Text(
                      //         player.pos ?? 'P',
                      //         style: TextStyle(color: Colors.white),
                      //       ),
                      //       backgroundColor: getPosColor(player.pos),
                      //     ),
                      //     trailing: CircleAvatar(
                      //       child: Text(
                      //         '${player.number ?? ''}',
                      //         style: TextStyle(color: Colors.black),
                      //       ),
                      //       backgroundColor: Colors.white,
                      //     ),
                      //   );
                      // }).toList(),
                      Divider(),
                      
                      // if (teamData.substitutes != null &&
                      //     teamData.substitutes.length > 1)
                      //   Padding(
                      //     padding: const EdgeInsets.symmetric(vertical: 15),
                      //     child: Text(
                      //       'Substitutes',
                      //       style: TextStyle(color: Colors.black),
                      //     ),
                      //   ),
                      // if (teamData.substitutes != null &&
                      //     teamData.substitutes.length > 1)
                      //   ...teamData.substitutes.map((StartXI player) {
                      //     return ListTile(
                      //       title: Text(player.player),
                      //       leading: CircleAvatar(
                      //         child: Text(
                      //           player.pos ?? 'P',
                      //           style: TextStyle(color: Colors.white),
                      //         ),
                      //         backgroundColor: getPosColor(player.pos ?? ' '),
                      //       ),
                      //       trailing: CircleAvatar(
                      //         child: Text(
                      //           '${player.number ?? ''}',
                      //           style: TextStyle(color: Colors.black),
                      //         ),
                      //         backgroundColor: Colors.white12,
                      //       ),
                      //     );
                      //   }).toList()buildEventsList
                    ],
                  ),
                ),
                // FormationColumn(formation.awayTeam),
                // buildEventsList(item),
                // buildEventsList(item)
                SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      // if (teamData.formation != null)
                      //   Container(
                      //     width: MediaQuery.of(context).size.width * 0.75,
                      //     height: 45,
                      //     padding:
                      //         EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                      //     margin: EdgeInsets.symmetric(
                      //         vertical: 20, horizontal: 10),
                      //     child: Text(
                      //       teamData.formation,
                      //       textAlign: TextAlign.center,
                      //       style: TextStyle(color: Colors.white, fontSize: 30),
                      //     ),
                      //     decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.circular(10),
                      //       color: Colors.deepOrange.withOpacity(0.8),
                      //     ),
                      //   ),
                      Divider(),
                      ListTile(
                        title: Text('teamData.coach'),
                        subtitle: Text('Coach'),
                        leading: CircleAvatar(
                          child: Text('C'),
                          backgroundColor: Colors.black,
                        ),
                      ),
                      Divider(),
                      Text(
                        'Time Visitante',
                        style: TextStyle(color: Colors.black),
                      ),
                      // ...teamData.startXI.map((StartXI player) {
                      //   return ListTile(
                      //     title: Text(player.player),
                      //     leading: CircleAvatar(
                      //       child: Text(
                      //         player.pos ?? 'P',
                      //         style: TextStyle(color: Colors.white),
                      //       ),
                      //       backgroundColor: getPosColor(player.pos),
                      //     ),
                      //     trailing: CircleAvatar(
                      //       child: Text(
                      //         '${player.number ?? ''}',
                      //         style: TextStyle(color: Colors.black),
                      //       ),
                      //       backgroundColor: Colors.white,
                      //     ),
                      //   );
                      // }).toList(),
                      Divider(),
                      
                      // if (teamData.substitutes != null &&
                      //     teamData.substitutes.length > 1)
                      //   Padding(
                      //     padding: const EdgeInsets.symmetric(vertical: 15),
                      //     child: Text(
                      //       'Substitutes',
                      //       style: TextStyle(color: Colors.black),
                      //     ),
                      //   ),
                      // if (teamData.substitutes != null &&
                      //     teamData.substitutes.length > 1)
                      //   ...teamData.substitutes.map((StartXI player) {
                      //     return ListTile(
                      //       title: Text(player.player),
                      //       leading: CircleAvatar(
                      //         child: Text(
                      //           player.pos ?? 'P',
                      //           style: TextStyle(color: Colors.white),
                      //         ),
                      //         backgroundColor: getPosColor(player.pos ?? ' '),
                      //       ),
                      //       trailing: CircleAvatar(
                      //         child: Text(
                      //           '${player.number ?? ''}',
                      //           style: TextStyle(color: Colors.black),
                      //         ),
                      //         backgroundColor: Colors.white12,
                      //       ),
                      //     );
                      //   }).toList()buildEventsList
                    ],
                  ),
                ),
              ]),
            ),
          )
        ],
      ),
    ),
  );
}

Widget buildEventHead() {
  switch ('card') {
    case 'card':
      return Container(
        width: 35,
        height: 50,
        // child: Transform.rotate(
        //   // angle: -math.pi / 12.0,
        //   child: Material(
        //     elevation: 15,
        //     borderRadius: BorderRadius.circular(10),
        //     // color: event.detail == 'Yellow Card' ? Colors.yellow : Colors.red,
        //   ),
        // ),
      );
    case 'normal goal':
    case 'goal':
      return Text(
        'Goal',
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      );

    case 'own goal':
      return Text(
        'Own Goal',
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      );

    case 'penalty':
      return Text(
        'Penality',
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      );

    case 'missed penalty':
      return Text(
        'Missed Penality',
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      );
  }
  return Container();
}

Widget buildScoreContainer(ItemModel item, Size size) {
  return Container(
    width: size.width,
    height: 150,
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(8),
    child: Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: GestureDetector(
            onTap: () {},
            child: buildTeamHeader(
                item.logoB.toString(), item.nomeB.toString(), size),
          ),
        ),
        Expanded(
            flex: 1,
            child: GestureDetector(
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      '${item.resultado} : ${item.resultadoB}',
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                  ],
                )
            )
          ),
        Expanded(
          flex: 1,
          child: GestureDetector(
            onTap: () {
              // Navigator.of(context).pushNamed(TeamDetails.routeName,
              //     arguments: {'teamID':fixture.awayTeam.teamId, 'leagueID':fixture.leagueId});
            },
            child: buildTeamHeader(
                item.logo.toString(), item.nome.toString(), size),
          ),
        ),
      ],
    ),
    decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[Colors.blue, Colors.blue]),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(8),
          topLeft: Radius.circular(60),
          bottomRight: Radius.circular(60),
          bottomLeft: Radius.circular(8),
        )),
  );
}

Column buildTeamHeader(String logo, String name, Size size) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Image.network(
        logo,
        width: size.width * 0.25,
        height: 100,
        fit: BoxFit.fitHeight,
      ),
      FittedBox(
        child: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Text(
            name,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      )
    ],
  );
}

/** Tab Events FixtureEvents*/
Widget buildEventsList(ItemModel item) {
  return ListView.builder(
    itemCount: 1,
    itemBuilder: (BuildContext context, int index) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          // Text(''${events[index].elapsed}'),
          Text('Tempo de Jogo 43 M'),
          Text(item.resultado.toString()),
          Padding(
            padding: const EdgeInsets.only(bottom: 30, top: 8),
            child: Material(
              color: Colors.white,
              elevation: 10,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                padding: EdgeInsets.all(15),
                child:
                    /**substituição */
                    Row(children: <Widget>[
                  Column(children: <Widget>[
                    Icon(Icons.arrow_drop_up, size: 50, color: Colors.green),
                    Icon(Icons.arrow_drop_down, size: 50, color: Colors.red)
                  ]),
                  SizedBox(width: 10),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(item.nome.toString()),
                      Divider(),
                      Text(
                        'events[index].detail',
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        ' events[index].player',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ))
                ]),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          )
        ],
      );
    },
  );
}

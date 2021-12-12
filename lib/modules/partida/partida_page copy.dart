
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:hello/controller/home_controller.dart';

// class PartidaPage extends StatelessWidget {
//   final item = Get.find<HomeController>().getDetails(Get.arguments[0]);

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Scaffold(
//         backgroundColor: Color(0xff465bd8),
//         appBar: AppBar(
//           title:
//               // MarqueeWidget(
//               // child:
//               Text(
//             item.localidade.toString(),
//             style: TextStyle(color: Colors.black),
//           ),
//           // ),
//           elevation: 0,
//           backgroundColor: Colors.white,
//           iconTheme: IconThemeData(color: Colors.black),
//         ),
//         bottomNavigationBar: Container(
//           padding: EdgeInsets.symmetric(horizontal: 16),
//           decoration: BoxDecoration(
//             color: Color(0xff465bd8),
//           ),
//           width: double.infinity,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 "\$" + item.nomeB.toString(),
//                 style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                     fontSize: 15.0),
//               ),
//               TextButton(
//                 onPressed: () {
//                   // cartController.addToCart(item);
//                 },
//                 child: Row(
//                   children: [
//                     // Icon(
//                     //   FI.FlutterIcons.shop_ent,
//                     //   color: Colors.white,
//                     // ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Text(
//                       "Add to cart",
//                       style: TextStyle(color: Colors.white),
//                     )
//                   ],
//                 ),
//                 style: ButtonStyle(
//                   backgroundColor: MaterialStateProperty.all(Colors.black),
//                   overlayColor: MaterialStateProperty.all(Colors.blue),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         // body: SingleChildScrollView(
//         //   child: Container(
//         //     padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
//         //     decoration: BoxDecoration(
//         //         color: Colors.white,
//         //         borderRadius: BorderRadius.only(
//         //             bottomLeft: Radius.circular(30),
//         //             bottomRight: Radius.circular(30))),
//         //     width: double.infinity,
//         //     child: Column(
//         //       children: [
//         //         Image.network(
//         //           item.logo.toString(),
//         //           width: size.width / 2,
//         //         ),
//         //         SizedBox(
//         //           height: 20,
//         //         ),
//         //         Align(
//         //             alignment: Alignment.centerLeft, child: Text(item.nome.toString())),
//         //         SizedBox(
//         //           height: 10,
//         //         ),
//         //         Text(
//         //           item.nomeB.toString(),
//         //           style:
//         //               TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
//         //         ),
//         //         SizedBox(
//         //           height: 10,
//         //         ),
//         //         Row(
//         //           children: [
//         //             // Icon(
//         //             //   FI.Octicons.star,
//         //             //   color: Colors.amber,
//         //             // ),
//         //             // Text(item.rating.rate.toString()),
//         //           ],
//         //         ),
//         //         SizedBox(
//         //           height: 10,
//         //         ),
//         //         Divider(),
//         //         SizedBox(
//         //           height: 10,
//         //         ),
//         //         Text(
//         //           item.nomeB.toString(),
//         //           style: TextStyle(fontSize: 10.0),
//         //         ),
//         //         SizedBox(
//         //           height: 10,
//         //         ),
//         //       ],
//         //     ),
//         //   ),
//         // ),
//         body: Column(
//           children: 
//           // <Widget>[SizedBox(height: 30), buildTabs()],
//           [],
//         ));
//   }

//   buildTabs() {
//     return Container(
//       // width: 300,
//       // height: 800 - 200,
//       child: DefaultTabController(
//         length: 0,
//         child: Column(
//           children: <Widget>[
//             Container(
//               constraints: BoxConstraints.expand(height: 50),
//               child: TabBar(
//                 tabs: [
//                   // Tab(text: "Events"),
//                   // Tab(text: "Formation"),
//                   // Tab(text: "Statistics"),
//                   // Tab(text: "Info"),
//                 ],
//                 indicatorColor: Colors.deepOrange,
//                 labelColor: Colors.deepOrange,
//                 unselectedLabelColor: Colors.black,
//               ),
//             ),
//             Expanded(
//               child: Container(
//                 child: TabBarView(children: 
//                 [
//                   // FixtureFormation(),
//               //     // FixtureStatistics(),
//               //     // FixtureInfo(fixture),
//                 ]
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class FixtureEvents {
//   @override
//   Widget build(BuildContext context) {
//     // return StreamBuilder<List<Event>>(
//     //   stream: Provider.of<ActiveFixtureProvider>(context).currentEventsStream,
//     //   builder: (BuildContext context, AsyncSnapshot<List<Event>> snapshot) {
//     //     if (snapshot.hasError) return Center(child: Text(snapshot.error));
//     //     return snapshot.hasData && snapshot.data.length >= 1
//     //         ? buildEventsList(snapshot.data)
//     //         : Center(child: CircularProgressIndicator());
//     //   },
//     // );

//     return  buildEventsList();
//   }

//   Widget buildEventsList() {
//     return ListView.builder(
//       itemCount: 1,
//       itemBuilder: (BuildContext context, int index) {
//         return Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisSize: MainAxisSize.min,
//           children: <Widget>[
//             // Text('${events[index].elapsed}\''),
//             Padding(
//               padding: const EdgeInsets.only(bottom: 30, top: 8),
//               child: Material(
//                 color: Colors.white,
//                 elevation: 10,
//                 borderRadius: BorderRadius.circular(10),
//                 child: Container(
//                   width: MediaQuery.of(context).size.width * 0.9,
//                   padding: EdgeInsets.all(15),
//                    child: 
//                   //events[index].assistId == null &&
//                           // events[index].type != 'subst'
//                       // ?
//                       // normal event
//                       Row(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: <Widget>[
//                             SizedBox(width: 25),
//                             Expanded(
//                                 flex: 3,
//                                 child: Padding(
//                                   padding:
//                                       const EdgeInsets.symmetric(vertical: 5),
//                                   child: Column(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceEvenly,
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     mainAxisSize: MainAxisSize.min,
//                                     children: <Widget>[
//                                       // Text(
//                                       //   events[index].player,
//                                       //   style: TextStyle(color: Colors.black),
//                                       // ),
//                                       // Text(events[index].teamName),
//                                     ],
//                                   ),
//                                 )),
//                             // if (events[index].assist != null)
//                             //   Expanded(
//                             //       flex: 1,
//                             //       child: FittedBox(
//                             //           child: Text(events[index].assist))),
//                           ],
//                         )
//                       // subst event
//                       // : Row(
//                       //     children: <Widget>[
//                       //       Column(
//                       //         children: <Widget>[
//                       //           Icon(Icons.arrow_drop_up,
//                       //               size: 50, color: Colors.green),
//                       //           Icon(Icons.arrow_drop_down,
//                       //               size: 50, color: Colors.red)
//                       //         ],
//                       //       ),
//                       //       SizedBox(width: 10),
//                       //       Expanded(
//                       //           child: Column(
//                       //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       //         children: <Widget>[
//                       //           // Text(events[index].teamName),
//                       //           // Divider(),
//                       //           // Text(
//                       //           //   events[index].detail,
//                       //           //   style: TextStyle(color: Colors.black),
//                       //           // ),
//                       //           // Text(
//                       //           //   events[index].player,
//                       //           //   style: TextStyle(color: Colors.black),
//                       //           // ),
//                       //         ],
//                       //       ))
//                       //     ],
//                       //   ),
//                       ,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//             )
//           ],
//         );
//       },
//     );
//   }

//   // Widget buildEventHead(Event event) {
//   //   switch (event.type.toLowerCase()) {
//   //     case 'card':
//   //       return Container(
//   //         width: 35,
//   //         height: 50,
//   //         // child: Transform.rotate(
//   //         //   // angle: -math.pi / 12.0,
//   //         //   child: Material(
//   //         //     elevation: 15,
//   //         //     borderRadius: BorderRadius.circular(10),
//   //         //     // color: event.detail == 'Yellow Card' ? Colors.yellow : Colors.red,
//   //         //   ),
//   //         // ),
//   //       );
//   //     case 'normal goal':
//   //     case 'goal':
//   //       return Text(
//   //         'Goal',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
//   //       );

//   //     case 'own goal':
//   //       return Text(
//   //        'Own Goal',
//   //         style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
//   //       );

//   //     case 'penalty':
//   //       return Text(
//   //         'Penality',
//   //         style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
//   //       );

//   //       case 'missed penalty':
//   //       return Text(
//   //         'Missed Penality',
//   //         style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
//   //       );
//   //   }
//   //   return Container();
//   // }
// }

// import 'package:flutter/material.dart';
// class DetailScreen extends StatefulWidget {
//   const DetailScreen({super.key});
//
//   @override
//   State<DetailScreen> createState() => _DetailScreenState();
// }
//
// class _DetailScreenState extends State<DetailScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: MediaQuery
//             .of(context)
//             .size
//             .width,
//         height: MediaQuery
//             .of(context)
//             .size
//             .height,
//         decoration: BoxDecoration(
//           // shape: BoxShape.rectangle,
//           color: Color(0xff141519),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//
//             children: [
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Container(
//                           height: 35,
//                           width: 32,
//                           margin: EdgeInsets.all(6),
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(15),
//                             // border :Border.all(color: )
//                           ),
//                           child: GestureDetector(
//                             onTap: () {
//                               Navigator.of(context).pop('/');
//                             },
//                             child: Icon(
//                               Icons.arrow_back_rounded,
//                               color: Colors.black,
//                               size: 25,
//                             ),
//                           )),
//                       InkWell(
//                         onTap: () {
//                           selectedindex=index;
//                           Navigator.of(context).pushNamed('/cart');
//                         },
//                         child: Container(
//                           height: 35,
//                           width: 32,
//                           margin: EdgeInsets.all(6),
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(15),
//                             // border :Border.all(color: )
//                           ),
//                           child: Icon(
//                             Icons.shopping_cart_rounded,
//                             color: Color(0xffD12546),
//                             size: 25,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   detail_Box(context),
//                 ],
//               ),
//               productDetailBox(selectedindex,
//                   wineList[selectedindex]['description'],
//                   wineList[selectedindex]['serve'],
//                   wineList[selectedindex]['taste']),
//
//               InkWell(
//                 onTap: () {
//                   add_to_cart.add(wineList[selectedindex]);
//                   Navigator.of(context).pushNamed('/cart');
//                 },
//                 child: Container(
//                   height: 50,
//                   width: 360,
//                   decoration: BoxDecoration(
//                     color: Color(0xffD12546),
//
//                     // border: Border.all(color: Colors.white10),
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(
//                         Icons.shopping_cart_rounded,
//                         color: Colors.white,
//                         size: 25,
//                       ),
//                       Text(
//                         'ADD TO CART',
//                         style: TextStyle(color: Colors.white, fontSize: 18),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Padding detail_Box(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(5.0),
//       child: Container(
//         width: MediaQuery.of(context).size.width,
//         decoration: BoxDecoration(
//           shape: BoxShape.rectangle,
//           gradient: RadialGradient(
//             colors: [
//               Color(0xff230b21),
//               Color(0xff0b1a1a),
//               Color(0xff120321),
//
//             ],
//             radius: 1.5,
//             center: const Alignment(0.8, 0),
//           ),
//           border: Border.all(
//               color: Colors.white12, width: 0.7),
//           // color: Color(0xff222126),
//
//           borderRadius: BorderRadius.circular(25),
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           // crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Column(
//               mainAxisAlignment: MainAxisAlignment
//                   .spaceEvenly,
//               children: [
//                 Container(
//                   height: 385,
//                   width: 155,
//                   decoration: BoxDecoration(
//
//                     image: DecorationImage(
//                       fit: BoxFit.cover,
//                       image: AssetImage(
//                         wineList[selectedindex]['img'],
//                       ),
//                     ),
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                 )
//               ],
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Container(
//                   height: 350,
//                   width: 200,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       Align(
//                         alignment: Alignment.topLeft,
//                         child: Text(
//                           overflow: TextOverflow.clip,
//                           // 'name',
//                           wineList[selectedindex]['name'].toString(),
//                           style: TextStyle(
//                               color: Colors.white),
//                         ),
//                       ),
//                       Row(
//                         children: [
//                           Text(
//                             "Taste 🍬",
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 10),
//                           ),
//                           Text(
//                             '🍻🥂'+ wineList[selectedindex]['quantity'],
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 10),
//                           ),
//                           Icon(
//                             Icons.device_thermostat,
//                             color: Color(0xffE5CDA7),
//                             size: 15,
//                           ),
//                           Text(
//                             wineList[selectedindex]['temperature'],
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 10),
//                           ),
//                         ],
//                       ),
//                       /*taste & quantity and temperature row*/
//                       Row(
//                         children: [
//                           Text(
//                             "\nProducer : ",
//                             style: TextStyle(
//                                 color: Color(0xffE5CDA7)),
//                           ),
//                           SizedBox(
//                             width: 130,
//                             child: Text(
//                               overflow: TextOverflow.clip,
//                               '\n'+wineList[selectedindex]['producer'],
//                               style: TextStyle(
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ), //
//                       Row(
//                         children: [
//                           Text(
//                             "Region :",
//                             style: TextStyle(
//                                 color: Color(0xffE5CDA7)),
//                           ),
//                           Text(
//                             wineList[selectedindex]['country'],
//                             style: TextStyle(
//                                 color: Colors.white),
//                           ),
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           Text(
//                             "Volume :",
//                             style: TextStyle(
//                                 color: Color(0xffE5CDA7)),
//                           ),
//                           Text(
//                             wineList[selectedindex]['volume'],
//                             style:
//                             TextStyle(
//                                 color: Colors.white),
//                           ),
//                         ],
//                       ),
//
//                       Align(
//                         alignment: Alignment.topLeft,
//                         child: SizedBox(
//                           width: 100,
//                           child: Row(
//                             crossAxisAlignment: CrossAxisAlignment
//                                 .start,
//                             mainAxisAlignment:
//                             MainAxisAlignment.spaceEvenly,
//                             children: [
//                               InkWell(onTap: () {
//                                 setState(() {
//                                   if(wineList[index]['count']>0)
//                                     wineList[index]['count']--;
//                                 });
//                               },
//                                 child: Container(
//                                   height: 30,
//                                   width: 30,
//                                   decoration: BoxDecoration(
//                                     border: Border.all(
//                                       color: Color(0xffE5CDA7),
//                                     ),
//                                     borderRadius: BorderRadius
//                                         .circular(3),
//                                   ),
//                                   child: Align(
//                                       alignment: Alignment
//                                           .center,
//                                       child: Icon(
//                                         Icons.remove,
//                                         color: Color(
//                                             0xffE5CDA7),
//                                         size: 15,
//                                       )),
//                                 ),
//                               ),
//                               Container(
//                                 height: 30,
//                                 width: 30,
//                                 decoration: BoxDecoration(
//                                   border: Border.all(
//                                     color: Color(0xffE5CDA7),
//                                   ),
//                                   borderRadius: BorderRadius
//                                       .circular(3),
//                                 ),
//                                 child: Align(
//                                     alignment: Alignment
//                                         .center,
//                                     child: Text(
//                                       '${wineList[index]['count']}',
//                                       style: TextStyle(
//                                           color: Color(
//                                               0xffE5CDA7),
//                                           fontSize: 22),
//                                     )),
//                               ),
//                               InkWell(onTap: () {
//                                 setState(() {
//
//                                   wineList[index]['count']++;
//                                 });
//                               },
//                                 child: Container(
//                                   height: 30,
//                                   width: 30,
//                                   decoration: BoxDecoration(
//                                     border: Border.all(
//                                       color: Color(0xffE5CDA7),
//                                     ),
//                                     borderRadius: BorderRadius
//                                         .circular(3),
//                                   ),
//                                   child: Align(
//                                       alignment: Alignment
//                                           .center,
//                                       child: Icon(
//                                         Icons.add,
//                                         color: Color(
//                                             0xffE5CDA7),
//                                         size: 15,
//                                       )),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ), //Quantity row
//                       Align(
//                         alignment: Alignment.topLeft,
//                         child: Text(
//                           '\$' + wineList[selectedindex]['price'].toString(),
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 30,
//                             // fontWeight: FontWeight.bold
//                           ),
//                         ),
//                       ), //price text
//
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//         // detail_box(),
//       ),
//
//
//     );
//   }
//
//   Widget productDetailBox(int index, String description, String taste,
//       String serve) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//         height: 290,
//         width: 390,
//         decoration: BoxDecoration(
//             color: Color(0xff222126),
//             gradient: RadialGradient(
//               colors: [
//                 Color(0xff230b21),
//                 Color(0xff0b1a1a),
//                 // Color(0xff010127),
//                 Color(0xff120321),
//                 // Color(0xff2b1b17),
//                 // Color(0xff362832),
//               ],
//               radius: 1.5,
//               center: const Alignment(0.8, 0),
//             ),
//             border: Border.all(color: Colors.white10),
//             borderRadius: BorderRadius.circular(15)),
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: SingleChildScrollView(
//             physics: BouncingScrollPhysics(),
//             scrollDirection: Axis.vertical,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               // crossAxisAlignment: CrossAxisAlignment.,
//               children: [
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     'Product Detail ',
//                     style: TextStyle(color: Color(0xffE5CDA7), fontSize: 20),
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: SizedBox(
//                     width: 345,
//                     child: Text(
//                       overflow: TextOverflow.clip,
//                       '$description',
//                       style: TextStyle(color: Colors.white, fontSize: 15),
//                     ),
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     'Taste :',
//                     style: TextStyle(color: Color(0xffE5CDA7), fontSize: 20),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 345,
//                   child: Align(
//                     alignment: Alignment.centerLeft,
//                     child: Text(
//                       overflow: TextOverflow.clip,
//                       '$taste',
//                       style: TextStyle(color: Colors.white, fontSize: 15),
//                     ),
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     'Serve : ',
//                     style: TextStyle(color: Color(0xffE5CDA7), fontSize: 20),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 345,
//                   child: Text(
//                     overflow: TextOverflow.clip,
//                     '$serve',
//                     style: TextStyle(color: Colors.white, fontSize: 15),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// int count=0;
// var index=0;
// int amt =0;
//

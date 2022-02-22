// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:collection/collection.dart';

class Home extends StatefulWidget {
  Home({ Key? key }) : super(key: key);

  

  
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home>  with SingleTickerProviderStateMixin  {
  static List<Tab> myTab = <Tab>[
     Tab(
       child: Container(
         margin: EdgeInsets.only(right: 23),
         child: Text('Home'),
       ),
     ),
     Tab(
       child: Container(
         margin: EdgeInsets.only(right: 23),
         child: Text('Best Seller'),
       ),
     ),
     Tab(
       child: Container(
         margin: EdgeInsets.only(right: 23),
         child: Text('MyBook'),
       ),
     ),

                  //   child: Container(
                  //     margin: EdgeInsets.only(right: 23),
                  //     child: Text("MyBook"),
                  //   ),
                  // ),
  ];

  List<String> pop = [
    'Healthy Food',
    'Life',
    'Magic World',
    'Sweet Life',
  ];
  List<double> rating = [
    4.6,
    4.5,
    4.4,
    4.4,
    4.3
  ];

  List<NetworkImage> popular = [
    NetworkImage('https://source.unsplash.com/random/150x210/?healthy'),
    NetworkImage('https://source.unsplash.com/random/150x210/?fitness'),
    NetworkImage('https://source.unsplash.com/random/150x210/?dragon'),
    NetworkImage('https://source.unsplash.com/random/150x210/?scary'),
  ];

  List<String> judul = [
    'Code',
    'Fantasy World',
    'New Technology',
    'The Green',
    'Office',
    'World of Coffee'
  ];

  List<NetworkImage> myimage = [
    NetworkImage('https://source.unsplash.com/random/150x210/?code'),
    NetworkImage('https://source.unsplash.com/random/150x210/?fantasy'),
    NetworkImage('https://source.unsplash.com/random/150x210/?tech'),
    NetworkImage('https://source.unsplash.com/random/150x210/?green'),
    NetworkImage('https://source.unsplash.com/random/150x210/?office'),
    NetworkImage('https://source.unsplash.com/random/150x210/?coffee'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
      body: Container(
        child:ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 25,top: 25
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Halo,Radit",style:GoogleFonts.openSans(
                  fontSize: 13,
                  fontWeight:FontWeight.w400,
                  color: Colors.grey
                ),),

                Text("Discover Latest Book",style:GoogleFonts.openSans(
                  fontSize: 22,
                  fontWeight:FontWeight.bold,
                  color: Colors.black
                ),),
              ],
            ),
            ),
            Container(
              height: 39,
              margin: EdgeInsets.only(left: 25,right: 25,top: 10),
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[100]
              ),
              child:Stack(
                children: [
                  TextField(
                    style:GoogleFonts.openSans(
                      fontSize:12,
                      color: Colors.black,
                      fontWeight: FontWeight.normal
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 19,right: 50,bottom: 8),
                      border: InputBorder.none,
                      hintText: "Search Name..",
                      hintStyle: GoogleFonts.openSans(
                        fontSize:12,
                        color:Colors.grey,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: IconButton(icon: Icon(Icons.search_rounded,color: Colors.deepPurple,),onPressed: (){},),
                  )
                ],
              )
            ),

            Container(
              height: 25,
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.only(left: 25),
              child: DefaultTabController(
                length: 3,
                child: TabBar(
                  labelPadding: EdgeInsets.all(0),
                  indicatorPadding: EdgeInsets.all(0),
                  isScrollable: true,
                  labelColor: Colors.black,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: Colors.deepPurple,
                  labelStyle: GoogleFonts.openSans(
                    fontSize: 14,fontWeight: FontWeight.w400,
                  ),
                  unselectedLabelStyle: GoogleFonts.openSans(
                    fontSize:14,fontWeight:FontWeight.w300
                  ),
                  tabs:myTab),
              ),
            ),
            Container(
              margin:EdgeInsets.only(top:21),
              height: 210,
              child: ListView.builder(
                padding: EdgeInsets.only(left: 25,right: 6),
                itemCount: myimage.length,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) 
                {
                return Container(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.only(bottom: 15),
                  child: Text(judul[index],style: GoogleFonts.openSans(
                    color:Colors.white
                  ),),
                  margin: EdgeInsets.only(right: 19),
                  height: 210,
                  width: 150,
                  decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(10),
                color: Colors.deepPurple,
                image: DecorationImage(image: myimage[index])
                
              )
                );
              },)
            ),
            Padding(padding: EdgeInsets.only(left: 25,top: 25),
            child: Text(
              'Popular',
              style: GoogleFonts.openSans(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black
              ),
            ),
            ),
            Container(
              margin:EdgeInsets.only(top: 20),
              child: Column(
                children: pop.mapIndexed((index,pop) {
                  return Container(
                  margin:EdgeInsets.only(bottom: 19),
                  height: 90,
                  width: MediaQuery.of(context).size.width-50,
                  child: Row(
                    children: [
                      Container(
                        height:100,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: popular[index]
                          )
                        ),
                      ),
                      SizedBox(width: 25,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(pop,style: GoogleFonts.openSans(
                            fontSize: 14,
                            fontWeight:FontWeight.w500
                          ),),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.star,color: Colors.yellow,size: 13),
                              Text((rating[index]).toString(),style: GoogleFonts.openSans(
                                fontSize: 12,

                              ),),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                );
                }).toList(),
              ),
            )
          ],
        )
      ),
    );
  }
}

// DefaultTabController(
//       initialIndex: 0,
//       length: 3, 
//       child: Scaffold(
//         appBar: AppBar(
//           actions: [
//             // TextField(decoration: InputDecoration(suffixIcon: Icon(Icons.searc))),
//             IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.deepPurple,)),
//             CircleAvatar(backgroundColor: Colors.deepPurple,radius: 15,),
//             SizedBox(width: 20,)
//           ],
//           elevation: 0,
//           backgroundColor: Colors.transparent,
//           title: Text("MyLib" ,style: TextStyle(color: Colors.deepPurple,fontFamily: "ptserif"),),
//           bottom: TabBar(
//             unselectedLabelColor: Colors.black,
//             // isScrollable: true,
//             indicatorSize: TabBarIndicatorSize.label,
//             labelStyle: TextStyle(fontSize: 10),
//             indicatorColor: Color.fromRGBO(103, 58, 183, 1),
//             labelColor: Colors.deepPurple,
//             tabs: [
              
//               const Tab(text: "Home"),
//               const Tab(text: "MyBook"),
//               const Tab(text: "Report"),
//             ]
//           ),
//         ),
//         body: Page(),
//       )
//     );
// class Page extends StatelessWidget {
//   Page({
//     Key? key,
//     Widget? widget
//   }) : super(key: key);

//   final mycontainer = List<Container>.generate(7, (index){
//     return Container();
//   });
//   @override
//   Widget build(BuildContext context) {
//     return TabBarView(
//       children: [
//         ListView(
//           children: [
//             Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 padding: EdgeInsets.fromLTRB(30, 20, 0, 5),
//                 child: Text(
//                   "Halo , Radit",
//                   style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//               Center(
//                 child: Container(
//                   height: 200,
//                   width: 320,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Container(
//                         child: Padding(
//                           padding: const EdgeInsets.all(10),
//                           child: Text("Popular Book",style: TextStyle(fontSize: 15),),
//                         ),
//                       ),
//                       SizedBox(height: 20,),
//                       Padding(
//                         padding: const EdgeInsets.fromLTRB(10,0,0,10),
//                         child: SingleChildScrollView(
//                           physics: BouncingScrollPhysics(),
//                           scrollDirection: Axis.horizontal,
//                           child: Row(
//                             children: [
//                               Container(
//                                 height: 120,
//                                 width: 90,
//                                 child: Card(
//                                   color: Colors.red,
//                                   child: InkWell(
//                                     onTap: (){},
//                                     child: Column(
//                                       mainAxisAlignment: MainAxisAlignment.end,
//                                       children: [
//                                         Padding(
//                                           padding: const EdgeInsets.all(8.0),
//                                           child: Text("Judul",style: TextStyle(fontSize: 15),),
//                                         )
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 height: 120,
//                                 width: 90,  
//                                 child: Card(
//                                   color: Colors.orange,
//                                   child: InkWell(
//                                     onTap: (){},
//                                     child: Column(
//                                       mainAxisAlignment: MainAxisAlignment.end,
//                                       children: [
//                                         Padding(
//                                           padding: const EdgeInsets.all(8.0),
//                                           child: Text("Judul",style: TextStyle(fontSize: 15),),
//                                         )
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               GestureDetector(
//                                 onTap: (){
//                                   print("Tapped");
//                                 },
//                                 child: Container(
//                                   height: 120,
//                                   width: 90,
//                                   child: Card(
//                                     color: Colors.yellow,
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 height: 120,
//                                 width: 90,
//                                 child: Card(
//                                   color: Colors.green,
//                                 ),
//                               ),
//                               Container(
//                                 height: 120,
//                                 width: 90,
//                                 child: Card(
//                                   color: Colors.blue,
//                                 ),
//                               ),
//                               Container(
//                                 height: 120,
//                                 width: 90,
//                                 child: Card(
//                                   color: Colors.indigo,
//                                 ),
//                               ),
//                               Container(
//                                 height: 120,
//                                 width: 90,
//                                 child: Card(
//                                   color: Colors.purple,
//                                 ),
//                               ),
                              
//                             ],
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//           Container(
//             width:200,
//             height: 100,
//             child: Card(
//               color: Colors.lightGreen,
//             ),
//           ),
//           SizedBox(height: 10,),
//         ]
//         ),
//         Container(
//           child: Center(child: Text("Lesson")),
//         ),
//         Container(
//           child: Center(child: Text("Report")),
//         ),
//       ],
//     );
//   }
// }
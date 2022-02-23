// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:collection/collection.dart';

class Home extends StatefulWidget {
  final String name;
  const Home({ Key? key ,this.name = 'User'}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home>  with SingleTickerProviderStateMixin  {
  static List<Tab> myTab = <Tab>[
     Tab(
       child: Container(
         margin: EdgeInsets.only(right: 23),
         child: Text('New'),
       ),
     ),
     Tab(
       child: Container(
         margin: EdgeInsets.only(right: 23),
         child: Text('Trending'),
       ),
     ),
     Tab(
       child: Container(
         margin: EdgeInsets.only(right: 23),
         child: Text('Best Seller'),
       ),
     ),
  ];

  List<String> pop = [
    'Healthy Lifestyle',
    'Lets Workout',
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
                Text("Hi, Admin",style:GoogleFonts.openSans(
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
                    fontSize:14,fontWeight:FontWeight.w400
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
                  height: 120,
                  width: MediaQuery.of(context).size.width-50,
                  child: Row(
                    children: [
                      Container(
                        height:120,
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
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
        backgroundColor: Colors.deepPurple,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[200],
        selectedItemColor: Colors.deepPurple,
        items:[
        
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.book),label: "My Book"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: 'My Account'),
      ] ),
    );
  }
}
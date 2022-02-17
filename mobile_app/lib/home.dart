import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3, 
      child: Scaffold(
        appBar: AppBar(

          actions: [
            // TextField(decoration: InputDecoration(suffixIcon: Icon(Icons.searc))),
            IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.deepPurple,)),
            CircleAvatar(backgroundColor: Colors.deepPurple,radius: 15,),
            SizedBox(width: 20,)
          ],
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text("MyLib" ,style: TextStyle(color: Colors.deepPurple,fontFamily: "ptserif"),),
          bottom: TabBar(
            unselectedLabelColor: Colors.black,
            // isScrollable: true,
            indicatorSize: TabBarIndicatorSize.label,
            labelStyle: TextStyle(fontSize: 10),
            indicatorColor: Colors.deepPurple,
            labelColor: Colors.deepPurple,
            tabs: [
              const Tab(text: "Home"),
              const Tab(text: "MyBook"),
              const Tab(text: "Report"),
            ]
          ),
        ),
        body: Page(),
      )
    );
  }
}

class Page extends StatelessWidget {
  const Page({
    Key? key,
    Widget? widget
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        ListView(
          children: [
            Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(30, 20, 0, 5),
                child: Text(
                  "Halo , Radit",
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                ),
              ),
              Center(
                child: Container(
                  height: 200,
                  width: 330,
                  child: Card(
                    // shape: RoundedRectangleBorder(
                    //   side: BorderSide(color: Colors.deepPurple,width: 3,),
                    //   borderRadius: BorderRadius.circular(10)
                    // ),
                    
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text("Popular Book",style: TextStyle(fontSize: 15),),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10,0,0,10),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                  height: 120,
                                  width: 90,
                                  child: Card(
                                    color: Colors.red,
                                  ),
                                ),
                                Container(
                                  height: 120,
                                  width: 90,
                                  child: Card(
                                    color: Colors.orange,
                                  ),
                                ),
                                Container(
                                  height: 120,
                                  width: 90,
                                  child: Card(
                                    color: Colors.yellow,
                                  ),
                                ),
                                Container(
                                  height: 120,
                                  width: 90,
                                  child: Card(
                                    color: Colors.green,
                                  ),
                                ),
                                Container(
                                  height: 120,
                                  width: 90,
                                  child: Card(
                                    color: Colors.blue,
                                  ),
                                ),
                                Container(
                                  height: 120,
                                  width: 90,
                                  child: Card(
                                    color: Colors.indigo,
                                  ),
                                ),
                                Container(
                                  height: 120,
                                  width: 90,
                                  child: Card(
                                    color: Colors.purple,
                                  ),
                                ),
                                
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.blue,
          ),
          SizedBox(height: 10,),
        ]
        ),
        Container(
          child: Center(child: Text("Lesson")),
        ),
        Container(
          child: Center(child: Text("Report")),
        ),
      ],
    );
  }
}
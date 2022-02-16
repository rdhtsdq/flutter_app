import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
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
            // isScrollable: true,
            indicatorSize: TabBarIndicatorSize.label,
            labelStyle: TextStyle(fontSize: 12),
            indicatorColor: Colors.deepPurple,
            labelColor: Colors.deepPurple,
            tabs: [
              Tab(text: "Home"),
              Tab(text: "Lesson"),
              Tab(text: "Report"),
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
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 0, 5),
              child: Text(
                "Halo , Radit",
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              height: 200,
              width: 600,
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 10,
                      width: 15,
                      color: Colors.deepPurple,
                    )
                  ],
                ),
              ),
            )
          ],
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
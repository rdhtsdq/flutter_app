import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_view.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('MyLib',style: GoogleFonts.notoSerifDisplay(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.deepPurple
                ),),
                Image.network('assets/images/landing.png',width: 800, height: 500,),
                Text(
                  'Your Simple Library',
                  style: TextStyle(fontSize: 18, height: 1.0),
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text('next'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple,
                    padding: EdgeInsets.symmetric(horizontal: 150,vertical: 20),
                    textStyle: GoogleFonts.openSans(
                      fontSize:16
                    )
                  ),
                  )
            ]
          )

      );
  }
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'theme.dart';
import '../widgets/custom_checkbox.dart';
import '../widgets/primary_button.dart';
import 'home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  TextEditingController ucon = new TextEditingController();
  TextEditingController pcon = new TextEditingController();
  String uname = 'Admin';
  String pw = 'password';
  bool passwordVisible = false;
  void togglePassword() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(24, 40, 24, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'MyLib',
                    style: heading2.copyWith(color: textBlack),
                  ),
                  SizedBox(height: 20,),
                  Image.asset(
                    'assets/images/accent.png',
                    width: 99,
                    height: 4,
                  )
                ],
              ),
              SizedBox(height: 48,),
              Form(

                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: textWhiteGrey,
                        borderRadius: BorderRadius.circular(14)
                      ),
                      child: TextFormField(
                        controller: ucon,
                        decoration: InputDecoration(
                          hintText: 'Username',
                          hintStyle: heading6.copyWith(color: textGrey),
                          border: OutlineInputBorder(borderSide: BorderSide.none)
                        ),
                      ),
                    ),
                    SizedBox(height: 32,),
                    Container(
                      decoration: BoxDecoration(
                        color: textWhiteGrey,
                        borderRadius: BorderRadius.circular(14)
                      ),
                      child: TextFormField(
                        controller: pcon,
                        obscureText: !passwordVisible,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: heading6.copyWith(color: textGrey),
                          suffixIcon: IconButton(
                            color: textGrey,
                            splashRadius: 1,
                            icon: Icon(passwordVisible ? Icons.visibility_outlined : Icons.visibility_off_outlined),
                            onPressed: togglePassword, 
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none
                          )
                        ),
                      ),
                    )
                  ],
                )
              ),
              SizedBox(height: 32,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomCheckbox(),
                  SizedBox(width: 12,),
                  Text('Remember me', style: regular16pt,)
                ],
              ),
              SizedBox(height: 32,),
              Center(
                child: ElevatedButton(
                    onPressed: (){
                      if(ucon.text != uname && pcon.text != pw){
                        return print('Gagal');
                      }else{
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                      }
                    },
                    child: Text('Login',style: GoogleFonts.openSans(
                      fontSize: 18,
                      fontWeight: FontWeight.w400
                    ),),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurple,
                      padding: EdgeInsets.symmetric(horizontal: 130,vertical: 18),
                    )
                  ),
                
              ),
              SizedBox(height: 24,),
              Center(
                child: Text(
                  'Or',
                  style: heading6.copyWith(color: textGrey),
                ),
              ),
              SizedBox(height: 24,),
              CustomPrimaryButton(
                buttonColor: colorLight,
                textValue: 'Login with Google',
                textColor: textBlack,
              )
            ],
          ),
        ),
        ),
    );
  }
}
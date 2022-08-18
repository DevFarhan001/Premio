import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:premio/screens/signup_screen.dart';

import 'login_screen.dart';


class StartupScreen extends StatelessWidget {
  const StartupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.3),
                child: Center(
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Image.asset('assets/logo.PNG',fit: BoxFit.contain,
                     width: 80,),
                    Text('Premio',textAlign: TextAlign.center, style: TextStyle(
                      color:  Theme.of(context).buttonColor,
                           fontSize: 32,
                           fontWeight: FontWeight.bold,
                       ),),
                   ],
                 ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Cet été, venez soutenir vos\n       artistes préférés', style: TextStyle(
                  color:  Theme.of(context).buttonColor,
                fontSize: 18,
                fontWeight: FontWeight.w600
              ),),
              SizedBox(
                height: 200,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpScreen()));

                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF1B3B6F),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 55,
                    child: Align(
                      alignment: Alignment.center,

                      child: Text('Sign Up',textAlign: TextAlign.center, style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18
                      ),),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (contex)=> LoginScreen()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 55,
                    child: Align(
                      alignment: Alignment.center,

                      child: Text('Log In',textAlign: TextAlign.center, style: TextStyle(
                          color: Theme.of(context).buttonColor,

                          fontWeight: FontWeight.w600,
                          fontSize: 18
                      ),),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Passer', style: TextStyle(
                  color:  Theme.of(context).buttonColor,
                fontSize: 17,
                fontWeight: FontWeight.w600
              ),)

            ],
          )
        ],
      )

    );
  }
}
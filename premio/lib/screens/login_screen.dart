                                                                                                                                                              import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'home_screen.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _formKey = GlobalKey<FormState>();
  movetoHome(BuildContext context)async{
    if (_formKey.currentState!.validate()){
      setState(() {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
      });
    }
  }


  TextEditingController emailcontroller= TextEditingController();
  TextEditingController passwordcontroller= TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.25),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/logo.PNG',fit: BoxFit.contain,
                            width: 80,),

                          Text('Premio',textAlign: TextAlign.center, style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1B3B6F)
                          ),),
                        ],
                      ),
                    ),),
                  SizedBox(
                    height: 20,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: TextFormField(
                      style: TextStyle(
                          color: Theme.of(context).buttonColor
                      ),
                      controller: emailcontroller,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'Email',labelStyle: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                          hintText: 'Your email'
                      ),
                      validator: MultiValidator([
                        RequiredValidator(errorText: 'Required *'),
                        EmailValidator(errorText: 'not a valid Email')
                      ]),

                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: TextFormField(
                      style: TextStyle(
                          color: Theme.of(context).buttonColor
                      ),
                      controller:  passwordcontroller,
                      decoration: InputDecoration(
                          labelText: 'Password',labelStyle: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                          hintText: 'Your password'
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Required *';
                        }
                        else if (value.length < 8) {
                          return 'Password length should be Atleaset eight';
                        }
                      },


                    ),
                  ),

                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: InkWell(
                      onTap: (){
                        movetoHome(context);
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

                          child: Text('Login',textAlign: TextAlign.center, style: TextStyle(
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
                      onTap: (){},
                      child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blueAccent),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          width: MediaQuery.of(context).size.width,
                          height: 55,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Image.asset('assets/google.PNG'),
                              ),
                              SizedBox(width:50 ,),
                              Align(
                                alignment: Alignment.center,

                                child: Text('Continue with Google',textAlign: TextAlign.center, style: TextStyle(
                                    color:  Theme.of(context).buttonColor,

                                    fontWeight: FontWeight.w600,
                                    fontSize: 18
                                ),),
                              ),
                            ],
                          )
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: InkWell(
                      onTap: (){},
                      child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blueAccent),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          width: MediaQuery.of(context).size.width,
                          height: 55,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Image.asset('assets/apple.PNG'),
                              ),
                              SizedBox(width:50 ,),
                              Align(
                                alignment: Alignment.center,

                                child: Text('Continue with Apple',textAlign: TextAlign.center, style: TextStyle(
                                    color:  Theme.of(context).buttonColor,

                                    fontWeight: FontWeight.w600,
                                    fontSize: 18
                                ),),
                              ),

                            ],
                          )
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueAccent),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 55,
                      child: Align(
                        alignment: Alignment.center,

                        child: Text('Connect your Wallet',textAlign: TextAlign.center, style: TextStyle(
                            color:  Theme.of(context).buttonColor,

                            fontWeight: FontWeight.w600,
                            fontSize: 18
                        ),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

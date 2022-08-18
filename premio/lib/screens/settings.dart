import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color:  Theme.of(context).buttonColor,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0,),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  child: Image.asset('assets/user.png'),
                ),
                SizedBox(
                  width: 20,
                ),
               Container(
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(top: 10.0),
                       child: Text('Farhan', style: TextStyle(
                           color:  Theme.of(context).buttonColor,
                           fontWeight: FontWeight.bold,
                           fontSize: 24
                       ),),
                     ),
                     Text('View and edit profile', style: TextStyle(
                         color:  Theme.of(context).buttonColor,
                       decoration: TextDecoration.underline,
                       fontSize: 20,
                       fontWeight: FontWeight.w600
                     ),)
                   ],
                 ),
               )
              ],
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
            border: Border(
            bottom: BorderSide(color:Theme.of(context).buttonColor,)
            )
            ),
                child:Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.credit_card, ),

                      Padding(
                        padding: const EdgeInsets.only(right: 50.0),
                        child: Container(
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Buy Packages & My Orders', style: TextStyle(
                                  color:  Theme.of(context).buttonColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500
                              ),),
                              SizedBox(
                                height: 2,
                              ),
                              Text('Packages, orders, billing and invoices',style: TextStyle(
                                color:  Theme.of(context).buttonColor,
                                fontWeight: FontWeight.w200,
                                fontSize: 15
                              ),)
                            ],
                          ),
                        ),
                      ),

                      Icon(Icons.arrow_forward_ios, size: 20,  color:  Theme.of(context).buttonColor,)
                    ],
                  ),
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color:Theme.of(context).buttonColor,)
                    )
                ),
                child:Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.settings, ),

                      Padding(
                        padding: const EdgeInsets.only(right: 165.0),
                        child: Container(
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Settings', style: TextStyle(
                                  color:  Theme.of(context).buttonColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500
                              ),),
                              SizedBox(
                                height: 2,
                              ),
                              Text('Privacy and logout',style: TextStyle(
                                  color:  Theme.of(context).buttonColor,
                                  fontWeight: FontWeight.w200,
                                  fontSize: 15
                              ),)
                            ],
                          ),
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios, size: 20,  color:  Theme.of(context).buttonColor,)
                    ],
                  ),
                )),
          ),
        ],

      ),
    );
  }
}

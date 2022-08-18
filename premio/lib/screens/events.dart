import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

import 'bookings.dart';

class Events extends StatelessWidget {
  const Events({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset('assets/dance.jpg', fit: BoxFit.fill,height: 320,),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, top: 30),
                  child: GestureDetector(
                      onTap:(){
                        Navigator.pop(context);
                  },child: Icon(Icons.arrow_back,  color:  Theme.of(context).buttonColor,size: 30,)),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text('LITTLE SIMZ', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 21,
              color: Color(0xFF1B3B6F),

            ),),
            SizedBox(
              height: 10,
            ),
            Text('Sam 03/12/2022', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Color(0xFF1B3B6F),

            ),),
            SizedBox(
              height: 10,
            ),
            Text('Accord Hotel Arena', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Color(0xFF1B3B6F),

            ),),
            SizedBox(
              height: 30,
            ),
            Text('Little Simz est une jeune rappeuse anglaise adepte\ndes rythmes solides et des productions dentelées.\nNé Simbi Ajikawo à Islington, en Angleterre, elle se\nfait remarquer par ses performances télévisuelles\n dans la série Spirit Warriors.',
             textAlign: TextAlign.center, style: TextStyle(
                  color:  Theme.of(context).buttonColor,
              fontSize: 15
            ),),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 110),
              child: Container(
                height: 110,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all( color:  Theme.of(context).buttonColor,)
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text('30€', style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                        color:  Theme.of(context).buttonColor,
                    ),),
                    SizedBox(
                      height: 10
                    ),
                    OpenContainer(
                      closedColor: Colors.transparent,
                      closedElevation: 0,
                      transitionType: ContainerTransitionType.fadeThrough,
                      transitionDuration: Duration(milliseconds: 500),
                      openShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(20))
                      ),
                      openBuilder: (context , _){
                        return Bookings();
                      },
                      closedBuilder: (context , VoidCallback openContainer){
                        return InkWell(
                          onTap: (){
                            openContainer();
                          },
                          child: Container(
                            width: 120,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Color(0xFFD9D9D9),
                                border: Border.all(color: Theme.of(context).buttonColor,)
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text('Réserver',style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17
                              ),),
                            ),
                          ),
                        );
                      },
                    ),


                  ],
                ),

              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('découvrir sur :',style: TextStyle(
                color:  Theme.of(context).buttonColor,
                fontSize: 17,
                fontWeight: FontWeight.w600
            ),),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/spotify.PNG'),
                  SizedBox(
                    width:50 ,
                  ),
                  Image.asset('assets/apple.PNG'),
                  SizedBox(
                    width:50 ,
                  ),
                  Image.asset('assets/data.PNG'),
                  SizedBox(
                    width:50 ,
                  ),
                  Image.asset('assets/insta.PNG'),
                  SizedBox(
                    width:50 ,
                  ),

                ],
              ),
            )
          ],
        ),
      )
    );
  }
}

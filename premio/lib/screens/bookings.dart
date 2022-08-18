import 'package:flutter/material.dart';

class Bookings extends StatelessWidget {
  const Bookings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Align(
              alignment: Alignment.centerRight,child: GestureDetector(
              onTap: (){Navigator.pop(context);},
              child: Icon(Icons.close,  color:  Theme.of(context).buttonColor, size: 40,))),
          SizedBox(
            height: 10,
          ),
          Text('LITTLE SIMZ', style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 21,
              color :Theme.of(context).buttonColor

          ),),
          SizedBox(
            height: 10,
          ),
          Text('Sam 03/12/2022', style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Theme.of(context).buttonColor,

          ),),
          SizedBox(
            height: 10,
          ),
          Text('Accord Hotel Arena', style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Theme.of(context).buttonColor,

          ),),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Typ de billet          Prix      Quantitié',style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
                color: Theme.of(context).buttonColor
              ),),

            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Placement libre        30€               1',style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                color: Theme.of(context).buttonColor
              ),)
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Balcon                       50€                0',style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                color: Theme.of(context).buttonColor
              ),)
            ],
          ),
          SizedBox(
            height: 30,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 110),
            child: Container(
              width: 120,
              height: 40,
              color: Colors.white,
              child: Align(
                alignment: Alignment.center,
                child: Text('Réserver',style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                ),),
              ),
            ),

              ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 315,
            width: 310,
            decoration: BoxDecoration(
              border: Border.all( color:  Theme.of(context).buttonColor,),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text('Plus dinformations sur les billets Little Simz\n Organisateur : ROCKHAL',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color:  Theme.of(context).buttonColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 15
                ),),
                SizedBox(
                  height: 30,
                ),
                Text('Ouverture portes:__20h00___ // Accès PMR:\nmerci de bien vouloir nous contacter par mail\ntickets@rockhal.lu ou par téléphone +352 24 555\n-1 afin de pouvoir vous réserver une place sur notre plateforme PMR. Les enfantes de moins de\n16 ans doivent être accompagnés d\' un adulte.\nConsulter notre politique d\' âge: https://\nwww.rockhal.lu/fr/faq/politique-dage/',
                textAlign: TextAlign.center,style: TextStyle(
                  color:  Theme.of(context).buttonColor,
                  fontSize: 15),)
              ],
            ),
          )


        ],
      ),
    );
  }
}

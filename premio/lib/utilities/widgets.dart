import 'package:flutter/material.dart';

import '../modal.dart';
import '../screens/details.dart';
class MusicCard extends StatelessWidget {
  final Music music;
  MusicCard({required this.music});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailScreen(music: music)));
      },
      child: Container(
        margin: const EdgeInsets.only(
          right:8,
        ),

        child:Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 120,
                child: Hero(
                  tag: Key(music.name),
                  child: ClipRRect(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                      child: Image.asset(music.imagepath,width: 150,
                        fit: BoxFit.fill,
                      )),
                ),
              ),


              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
                  color: Color(0xFF1B3B6F),
                ),

                width: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 11,
                    ),

                    Text(music.name, style: const TextStyle(fontWeight: FontWeight.w700,color: Colors.white, fontSize: 15,),),
                    SizedBox(
                      height: 5,
                    ),
                    Text(music.date, style: const TextStyle(fontWeight: FontWeight.w600,color: Colors.white, fontSize: 14,)),
                    SizedBox(
                      height: 5,
                    ),
                    Text(music.location, style: const TextStyle(fontWeight: FontWeight.w600,color: Colors.white, fontSize: 14,)),
                    SizedBox(
                      height: 5,
                    ),

                  ],
                ),
              ),

            ],
          ),
        ),


      ),
    );
  }
}
import 'package:flutter/material.dart';

import '../modal.dart';


class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color:  Theme.of(context).buttonColor,

        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text('Watch List', style: TextStyle(
          fontWeight: FontWeight.bold,
          color:  Theme.of(context).buttonColor,
        ),),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Icon(Icons.search, color:  Theme.of(context).buttonColor, size: 28,),
            )
          ],
      ),
      body: ListView.builder(
        shrinkWrap: true,
          itemCount: music.length,
          itemBuilder: (context , index){
            return Container(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                       borderRadius: BorderRadius.circular(20),
                      child: Image.asset(music[index].imagepath,fit: BoxFit.fill, height: 200, width: 140,),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 35.0),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(music[index].name, style: TextStyle(
                              color:  Theme.of(context).buttonColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),),
                            SizedBox(
                              height: 15,
                            ),
                            Text(music[index].date, style: TextStyle(
                              color:  Theme.of(context).buttonColor,
                              fontWeight: FontWeight.w200,
                              fontSize: 15
                            ),),
                            SizedBox(
                              height: 15,
                            ),
                            Text(music[index].location, style: TextStyle(
                              color:  Theme.of(context).buttonColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w200
                            ),),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                GestureDetector(child: Icon((music[index].isfavourite == true) ? Icons.favorite  : Icons.favorite_outline_rounded , ),
                                    onTap: (){
                                  setState(() {
                                   if(music[index].isfavourite){
                                     music[index].isfavourite = false;
                                   }else{
                                     music[index].isfavourite = true;
                                   }
                                  });
                                    },),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('Add to Favourites', style: TextStyle(
                                  color:  Theme.of(context).buttonColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15
                                ),)
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),

            );
          }),

    );
  }
}

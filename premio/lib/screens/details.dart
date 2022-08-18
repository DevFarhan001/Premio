import 'package:flutter/material.dart';

import '../modal.dart';

class DetailScreen extends StatefulWidget {
  final Music music;
  const DetailScreen({Key? key, required this.music}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool click=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color:  Theme.of(context).buttonColor,

        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text('Movie Details', style: TextStyle(
          fontWeight: FontWeight.bold,
          color:  Theme.of(context).buttonColor,
        ),),
        elevation: 0,
        actions: [
        Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: GestureDetector(
          onTap: (){
            setState(() {
              click =!click;
            });
          },
            child: Icon((click== true) ? Icons.favorite_outline_rounded  : Icons.favorite )),
        ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70),
          child: Container(
             width: 300,
             child: Hero(
               tag: Key(widget.music.name),
               child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(widget.music.imagepath, fit: BoxFit.fill,height: 350,)),
             ),
           ),
        ),
            SizedBox(height: 20,),
            Text(widget.music.name, style: TextStyle(fontWeight: FontWeight.w700,color: Theme.of(context).buttonColor, fontSize: 20,),),
            SizedBox(
              height: 10,
            ),
            Text('Fight,Adventure · 2008 · 2h 32m', style: TextStyle(
              color:  Theme.of(context).buttonColor,
              fontWeight: FontWeight.w200,
            ),),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Synopsis', style: TextStyle(
                        color:  Theme.of(context).buttonColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),),
                      Text('Batman ventures into Gotham City\'s underworld when a\n\n sadistic killer leaves behind a trail of cryptic clues. As the\n evidence begins to lead closer to home and the scale of\n the perpetrator\'s plans become clear, he must forge new\n relationships, unmask the culprit and bring justice to the\n abuse of power and corruption that has long plagued the\n metropolis.',
                        style: TextStyle(
                        color:  Theme.of(context).buttonColor,
                        fontWeight: FontWeight.w200
                      ),)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 170,
                  decoration: BoxDecoration(
                    border: Border.all(color:  Theme.of(context).buttonColor,),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('+', style: TextStyle(
                          color:  Theme.of(context).buttonColor,
                          fontWeight: FontWeight.w300,
                          fontSize: 30
                      ),),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Add to watchlist', style: TextStyle(
                        color:  Theme.of(context).buttonColor,
                        fontWeight: FontWeight.w300,
                        fontSize: 18
                      ),),
                    ],
                  ),
                ),
        SizedBox(
          width: 30,
        ),
        Container(
          height: 50,
          width: 170,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(20),
           color: Color(0xFFE23639)
         ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text('Watch Now', style: TextStyle(
                    color:  Theme.of(context).buttonColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 18
                ),),
              ),
              ],
            )
        ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:premio/screens/events.dart';
import 'package:premio/screens/settings.dart';

import '../modal.dart';
import '../utilities/widgets.dart';
import 'favourites.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      iconSize: 30,
      selectedItemColor:  Theme.of(context).buttonColor,
      unselectedItemColor: Theme.of(context).buttonColor,

      items: [
        BottomNavigationBarItem(icon: IconButton(onPressed: () {  },
            icon: Icon(Icons.home_outlined, color: Theme.of(context).buttonColor,)), label: 'Home',),
        BottomNavigationBarItem(icon: Padding(
          padding: const EdgeInsets.only(top: 8,bottom: 8.0),
          child: Icon(Icons.messenger_outline, color: Theme.of(context).buttonColor,),
        ), label: 'Messagerie',),
        BottomNavigationBarItem(icon: IconButton(onPressed: () {  Navigator.push(context, MaterialPageRoute(builder: (context)=> FavouriteScreen())); },
            icon:  Icon(Icons.favorite_border ,color: Theme.of(context).buttonColor,)),label: 'Favoris'),
        BottomNavigationBarItem( icon:IconButton(
          onPressed: () {  Navigator.push(context, MaterialPageRoute(builder: (context)=> SettingScreen()));}, icon: Icon(Icons.settings_outlined,color: Theme.of(context).buttonColor,),),  label: 'Settings'),

      ],
    ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 64.0),
          child: Column(
              children: [
                Container(
                  height: 500,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextFormField(
                          style: TextStyle(
                              color: Theme.of(context).buttonColor
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)
                            ),
                            prefixIcon: Icon(Icons.search,  color:  Theme.of(context).buttonColor,),
                            labelText: 'Artiste, Ville, Dates...'
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child:Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                                child: Image.asset('assets/dance.jpg'),

                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: Text('Cet été, venez soutenir vos\n artistes préférés', style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,color: Color(0xFF1B3B6F)
                                ),),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 110.0),
                                child: InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Events() ));
                                  },
                                  child: Container(
                                    height: 40,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Color(0xFF1B3B6F)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Text('Découvrir', textAlign: TextAlign.center,style: TextStyle(
                                          color: Colors.white, fontWeight: FontWeight.w600)),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text('Participez aux évènements près de chez\n vous',textAlign: TextAlign.center, style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF1B3B6F)
                ),),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 204,
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,

                    child: Row(
                      children: [
                        const SizedBox(width: 16,),
                        for (int i = 0; i < music.length; i++)
                          MusicCard(music:music[i]),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text('Lorem ipsum dolor', style: TextStyle(
                  color: Color(0xFF1B3B6F),
                  fontWeight: FontWeight.w700,
                  fontSize: 18
                ),),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    height: 508,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),

                      child: Stack(
                       children: [
                         ClipRRect(
                             borderRadius: BorderRadius.circular(20),
                             child: Image.asset('assets/text.jpg', fit: BoxFit.fill,height: 500,)),
                         Padding(
                           padding: const EdgeInsets.only(top: 117, left: 53, right: 53, bottom: 280),
                           child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
                             textAlign: TextAlign.center,
                           style: TextStyle(
                             fontSize: 17,
                             fontWeight: FontWeight.w600,
                             color: Colors.white
                           ),),
                         ),

                         Padding(
                           padding: const EdgeInsets.only(top: 371.0, bottom: 90, left: 130,right: 130),
                           child: Container(
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(20),
                               color: Colors.white,
                             ),
                             height: 100,
                             width: 146,

                             child: Align(
                               alignment: Alignment.center,
                               child: Text('Découvrir', style: TextStyle(
                                   color: Color(0xFF1B3B6F),
                                   fontSize: 16,
                                   fontWeight: FontWeight.w700

                               ),),
                             ),
                           ),
                         ),


                       ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text('Lorem ipsum dolor sit amet', style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 17,
                  color: Color(0xFF1B3B6F),
                ),),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 270,
                    decoration: BoxDecoration(
                      color: Color(0xFF1B3B6F),
                      borderRadius: BorderRadius.circular(20)

                    ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 80, left: 80, top: 70),
                            child: Text('Lorem ipsum dolor sit amet,\n consectetur adipiscing elit.' ,style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              color:  Colors.white
                            ),),
                          ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    height: 50,
                    width: 130,

                    child: Align(
                      alignment: Alignment.center,
                      child: Text('Découvrir', style: TextStyle(
                          color: Color(0xFF1B3B6F),
                          fontSize: 16,
                          fontWeight: FontWeight.w700

                      ),),
                    ),
                  ),

                        ],
                      ),

                  ),
                )

            ]
        ),
          ),
      ),

    );
  }
}




class Music{
  String imagepath, name, date, location;
  bool isfavourite;
  Music({required this.imagepath, required this.name, required this.date, required this.location, required this.isfavourite});
}
final music= [
  Music(
       imagepath: 'assets/dance1.jpg',
       name:'PAB THE KID',
       date: 'Ven 20/05/2022',
       location: 'Paris',
    isfavourite: true

  ),

  Music(imagepath: 'assets/dance2.jpg', name: 'KALASH', date: 'Mar 29/11/2022', location: 'Paris', isfavourite: true),
  Music(imagepath: 'assets/dance3.jpg', name: 'LITTLE SIMZ', date: 'Sam 03/12/2022', location: 'Paris', isfavourite: true),
  Music(imagepath: 'assets/dance4.jpg', name: 'LEFA', date: 'Jeu 01/12/2022', location: 'Paris', isfavourite: true)
];
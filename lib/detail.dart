import 'package:flutter/material.dart';




class DetailMovies extends StatefulWidget {

     final String imgUrl;
    DetailMovies({required this.imgUrl});

 
  

  @override
  State<DetailMovies> createState() => _DetailMoviesState();
}

class _DetailMoviesState extends State<DetailMovies> {
 
   
 
  @override
  Widget build(BuildContext context) {
    return Stack(
  children: [
    Container(
      height: 300,
      child: Image.asset(
        'assets/img/bg.jpg',
        fit: BoxFit.cover,
      ),
    ),
    Positioned(
      top: 30, // Adjust based on your needs
      left: 10, // Adjust based on your needs
      child: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.white), // Back arrow with white color
        onPressed: () {
          Navigator.pop(context); // Navigate back to the previous screen
        },
      ),
    ),
  ],
);


}
}


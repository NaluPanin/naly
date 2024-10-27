import 'package:flutter/material.dart';
import 'detail.dart';


void main(){
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: popularMovies(),
    );
  }
}


class popularMovies extends StatefulWidget {
  const popularMovies({super.key});

  @override
  State<popularMovies> createState() => _popularMoviesState();
}

class _popularMoviesState extends State<popularMovies> {

  final List popularMovies =[
    
    'https://m.media-amazon.com/images/M/MV5BZmEyYjE4NWUtODkxZS00ODVmLTgxOGQtYWI4YjUxOWY5N2ViXkEyXkFqcGc@._V1_.jpg',
    'https://m.media-amazon.com/images/S/pv-target-images/c6fb58055b3649eae203ec37aa4825594dad40fcaa8360bd2a09a9cffb7c7917.jpg',
    'https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9781524877552/puss-in-boots-the-last-wish-junior-novel-9781524877552_hr.jpg',
    'https://m.media-amazon.com/images/M/MV5BMTc0MTM3NzEzMl5BMl5BanBnXkFtZTcwNjE5MTU3NQ@@._V1_FMjpg_UX1000_.jpg',
    'https://m.media-amazon.com/images/M/MV5BMjA3MjAzOTQxNF5BMl5BanBnXkFtZTgwOTc5OTY1OTE@._V1_.jpg',
    'https://m.media-amazon.com/images/M/MV5BMjA5MTE1MjQyNV5BMl5BanBnXkFtZTcwODI4NDMwNw@@._V1_FMjpg_UX1000_.jpg',
    'https://m.media-amazon.com/images/M/MV5BMDJkMGY4MDktYjY3OC00MzU4LWE3ODQtZjFhY2FmMGUwYjcxXkEyXkFqcGc@._V1_.jpg',
    'https://m.media-amazon.com/images/M/MV5BMWU3OWYwNjAtNWExZS00ODY4LTgwMGQtNzliMzM2MjEyNDBkXkEyXkFqcGc@._V1_.jpg',
    'https://m.media-amazon.com/images/M/MV5BMGM5NzFiM2QtYzE1Ni00ODAxLTgzMzUtZWQyZTcxMTgwMGZhXkEyXkFqcGc@._V1_.jpg',
    'https://m.media-amazon.com/images/M/MV5BMTY0N2MzODctY2ExYy00OWYxLTkyNDItMTVhZGIxZjliZjU5XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
    'https://m.media-amazon.com/images/M/MV5BYzY1M2I0NjEtYzU0My00NTlhLWE4YjItNWMwNTJjZDlhYWM1XkEyXkFqcGc@._V1_.jpg',
    'https://m.media-amazon.com/images/M/MV5BMTU1NzI2MzgyOV5BMl5BanBnXkFtZTcwNDk2MDM2NQ@@._V1_.jpg',
    'https://m.media-amazon.com/images/M/MV5BYTAyOTE3MjItODljMi00ZjhjLTkyYmEtMTkzOGE1YzgzMjg0XkEyXkFqcGc@._V1_.jpg',
    'https://resizing.flixster.com/6EsKYnFR0dkIHly2XtX38sYCeUQ=/fit-in/352x330/v2/https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p13937884_v_v13_ag.jpg',
    'https://images.moviesanywhere.com/6f6e0b0744b86b7aae64370dd0103ac4/7ba90ebe-b697-4721-936a-7b40a6bc6612.jpg',
    'https://upload.wikimedia.org/wikipedia/en/8/8b/Bad_Boys_Ride_or_Die_%282024%29_poster.jpg',
    'https://m.media-amazon.com/images/M/MV5BNzY0ZTlhYzgtOTgzZC00ZTg2LTk4NTEtZDllM2E2NGE5Njg2XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
    'https://m.media-amazon.com/images/M/MV5BMTg5N2U4ZTItMjc2NC00NDg2LWIzODYtOWZmNzY5Yzc5MzUxXkEyXkFqcGc@._V1_.jpg',
    'https://m.media-amazon.com/images/M/MV5BZjE0ZjgzMzYtMTAxYi00NGMzLThmZDktNzFlMzA2MWRmYWQ0XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
    'https://m.media-amazon.com/images/M/MV5BOGVkZWYyZGMtMTUwMS00NzJhLThiMDUtZjUzNzdhOWFkN2U1XkEyXkFqcGc@._V1_.jpg',
    'https://www.dreamworks.com/storage/cms-uploads/abominable-printables-1.jpg',
    'https://raisingchildren.net.au/__data/assets/image/0017/77003/spies-in-disguise-poster.jpg',
    'https://image.tmdb.org/t/p/original/jpKOSdxzEno6Din9viUFwWdJUgT.jpg',
    'https://images.moviesanywhere.com/30d688d095a9783d8a0aa590f52def30/08b506d0-f254-4f8d-b779-097a81dc971b.jpg',

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("POPULAR MOVIES",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0XFFc1121f),
          ),
        ),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios),),
        backgroundColor: Colors.white,
        elevation:1,
        centerTitle: true,
        actions:  [
          Padding(
            padding: const EdgeInsets.all(5.0),
           child: IconButton(onPressed:(){
            
           },
            icon: const Icon(Icons.search,
                size: 27,
            ),),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  ), 
                itemCount: popularMovies.length,
                itemBuilder: (context, index){
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: InkWell(
                      onTap: (){
                        // print(popularMovies[index]);
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => DetailMovies(
                          imgUrl: popularMovies[index],
                        )
                        )
                        );
                    
                      },
                      child: Image.network(popularMovies[index] , fit: BoxFit.cover,)
                      )
                    );
                },
              
              ),
            )
          ],
        ),
      ),
      
    );
  }
}
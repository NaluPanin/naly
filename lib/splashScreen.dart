import 'package:flutter/material.dart';
import 'popularMo.dart';



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List listmovie =<String>[
    'https://www.dreamworks.com/storage/cms-uploads/abominable-printables-1.jpg',
    'https://raisingchildren.net.au/__data/assets/image/0017/77003/spies-in-disguise-poster.jpg',
    'https://image.tmdb.org/t/p/original/jpKOSdxzEno6Din9viUFwWdJUgT.jpg',
    'https://images.moviesanywhere.com/30d688d095a9783d8a0aa590f52def30/08b506d0-f254-4f8d-b779-097a81dc971b.jpg',
    'https://m.media-amazon.com/images/M/MV5BZmEyYjE4NWUtODkxZS00ODVmLTgxOGQtYWI4YjUxOWY5N2ViXkEyXkFqcGc@._V1_.jpg',
    'https://m.media-amazon.com/images/S/pv-target-images/c6fb58055b3649eae203ec37aa4825594dad40fcaa8360bd2a09a9cffb7c7917.jpg',
    'https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9781524877552/puss-in-boots-the-last-wish-junior-novel-9781524877552_hr.jpg',
  ];
  final List listmovie2 = <String>[
   
    'https://m.media-amazon.com/images/M/MV5BMTc0MTM3NzEzMl5BMl5BanBnXkFtZTcwNjE5MTU3NQ@@._V1_FMjpg_UX1000_.jpg',
    'https://m.media-amazon.com/images/M/MV5BMjA3MjAzOTQxNF5BMl5BanBnXkFtZTgwOTc5OTY1OTE@._V1_.jpg',
    'https://m.media-amazon.com/images/M/MV5BMjA5MTE1MjQyNV5BMl5BanBnXkFtZTcwODI4NDMwNw@@._V1_FMjpg_UX1000_.jpg',
    'https://m.media-amazon.com/images/M/MV5BMDJkMGY4MDktYjY3OC00MzU4LWE3ODQtZjFhY2FmMGUwYjcxXkEyXkFqcGc@._V1_.jpg',
    'https://m.media-amazon.com/images/M/MV5BMWU3OWYwNjAtNWExZS00ODY4LTgwMGQtNzliMzM2MjEyNDBkXkEyXkFqcGc@._V1_.jpg',
    'https://m.media-amazon.com/images/M/MV5BMGM5NzFiM2QtYzE1Ni00ODAxLTgzMzUtZWQyZTcxMTgwMGZhXkEyXkFqcGc@._V1_.jpg',
    'https://m.media-amazon.com/images/M/MV5BMTY0N2MzODctY2ExYy00OWYxLTkyNDItMTVhZGIxZjliZjU5XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
    'https://m.media-amazon.com/images/M/MV5BYzY1M2I0NjEtYzU0My00NTlhLWE4YjItNWMwNTJjZDlhYWM1XkEyXkFqcGc@._V1_.jpg',
     'https://m.media-amazon.com/images/M/MV5BMTU1NzI2MzgyOV5BMl5BanBnXkFtZTcwNDk2MDM2NQ@@._V1_.jpg',
  ];

  final List listmovie3 =<String> [
    'https://m.media-amazon.com/images/M/MV5BYTAyOTE3MjItODljMi00ZjhjLTkyYmEtMTkzOGE1YzgzMjg0XkEyXkFqcGc@._V1_.jpg',
    'https://resizing.flixster.com/6EsKYnFR0dkIHly2XtX38sYCeUQ=/fit-in/352x330/v2/https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p13937884_v_v13_ag.jpg',
    'https://images.moviesanywhere.com/6f6e0b0744b86b7aae64370dd0103ac4/7ba90ebe-b697-4721-936a-7b40a6bc6612.jpg',
    'https://upload.wikimedia.org/wikipedia/en/8/8b/Bad_Boys_Ride_or_Die_%282024%29_poster.jpg',
    'https://m.media-amazon.com/images/M/MV5BNzY0ZTlhYzgtOTgzZC00ZTg2LTk4NTEtZDllM2E2NGE5Njg2XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
    'https://m.media-amazon.com/images/M/MV5BMTg5N2U4ZTItMjc2NC00NDg2LWIzODYtOWZmNzY5Yzc5MzUxXkEyXkFqcGc@._V1_.jpg',
    'https://m.media-amazon.com/images/M/MV5BZjE0ZjgzMzYtMTAxYi00NGMzLThmZDktNzFlMzA2MWRmYWQ0XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
    'https://m.media-amazon.com/images/M/MV5BOGVkZWYyZGMtMTUwMS00NzJhLThiMDUtZjUzNzdhOWFkN2U1XkEyXkFqcGc@._V1_.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("THE MOVIES",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0XFFc1121f),
          ),
        ),
        backgroundColor: Colors.white,
        elevation:1,
        centerTitle: true,
        actions:  [
          Padding(
            padding: EdgeInsets.all(5.0),
            
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://assets.promptbase.com/DALLE_IMAGES%2FrZHZRYckkfU3lYMhm1wJrrvtyLD2%2Fresized%2F1685818505400_800x800.webp?alt=media&token=bdce1c7e-fb50-4147-9d40-fe47860174b6'),
            ),
          )
        ],
      ),
      body:   Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ////////////////////////////////////////////////
              ///////////////////////////////////////////////
              ///         Recommend for you     ////////////
              /////////////////////////////////////////////
              /////////////////////////////////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text("Recommend For You",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                        Navigator.push(context, 
                            MaterialPageRoute(builder: (context) =>  popularMovies())
                        );
                    },
                    child: const Text("Show All",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0XFF3d348b),
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 230,
                // width: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listmovie.length,
                      itemBuilder: (context, index){
                        return InkWell(
                          onTap: (){
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                    Image.network(listmovie[index]),
                                    SizedBox(height: 10),
                                    Text('Movie details for the selected item'),
                                  ],
                                ),
                              );
                            },
                          );
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              padding: const EdgeInsets.only(left: 15),
                              child: Image.network(
                                listmovie[index] , fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        );
                      },
                ),
              ),
          
              ///////////////////////////////////////////
              ///         Coming Soon Movies
              //////////////////////////////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text("Coming Soon MOVIES",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: const Text('Show All',
                      style: TextStyle(
                      fontSize: 15,
                      color: Color(0XFF3d348b),
                      fontWeight: FontWeight.bold
                        ),
                    
                    ),
                  )
                ],
            
              ),
              Container(
                height: 230,
                
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listmovie2.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        ///////////////////////
                        ///    show dialog
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.network(listmovie2[index]),
                                  SizedBox(height: 10),
                                  Text('Movie details for the selected item'),
                                ],
                              ),
                            );
                          },
                        );
                        /////// end show dialog
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          padding: EdgeInsets.only(left:15),
                          child: Image.network(listmovie2[index] , width: 162 ,  fit: BoxFit.cover,)),
                      ),
                    );
                  },
                ),
          
              ),
              /////////////////////////////////////////
              ///         Popular Movies            ///
              /////////////////////////////////////////
              
              Column(
                children: [
                   Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Popular Movies",
                          style: TextStyle(
                            fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                          ),
                        ),
                        InkWell(
                          onTap: (){},
                          child: const Text("Show All",
                            style: TextStyle(
                          fontSize: 15,
                          color: Color(0XFF3d348b),
                          fontWeight: FontWeight.bold
                            ),
                          
                          ),
                        ),
                    
                      ],
                    ),
                  ),
                  Container(
                    height: 230,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: listmovie3.length,
                        itemBuilder: (context , index){
                          return InkWell(
                            onTap: (){
                              ///////////////////////
                              ///   show dialog
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Image.network(listmovie3[index]),
                                        SizedBox(height: 10),
                                        Text('Movie details for the selected item'),
                                      ],
                                    ),
                                  );
                                },
                              );
                              ///////////////// 
                              ///  end dialog
                            },

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Image.network(listmovie3[index]),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],


              ),
              InkWell(
                onTap: (){
                  print("Hello");
                },
                child: Image.network('https://m.media-amazon.com/images/M/MV5BMTU1NzI2MzgyOV5BMl5BanBnXkFtZTcwNDk2MDM2NQ@@._V1_.jpg')),
          
          
            ],
          ),
        ),
      ),

    );
  }
}
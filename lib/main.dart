import 'package:flutter/material.dart';
import 'splashScreen.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splash(),
      routes: {
        'splash': (context) => MyApp(),
      }
    ),
  );
}


class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2),(){
    Navigator.pushNamed(context, 'splash');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFef233c),
                Color(0XFF9b2226),
              ],

              begin: Alignment.topLeft,
              end: Alignment.bottomRight
                          
            )
          )
        ),
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage('https://assets.promptbase.com/DALLE_IMAGES%2FrZHZRYckkfU3lYMhm1wJrrvtyLD2%2Fresized%2F1685818505400_800x800.webp?alt=media&token=bdce1c7e-fb50-4147-9d40-fe47860174b6'),
            )
          ],
        )
      ],
    ) ;
  }
}







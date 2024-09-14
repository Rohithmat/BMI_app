import 'package:flutter/material.dart';
import 'package:sample_proj/home.dart';

void main() => runApp(myapp());

class myapp extends StatelessWidget {
  const myapp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'corono',
      theme: ThemeData(brightness: Brightness.dark),
      home: startscreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class startscreen extends StatelessWidget {
  const startscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://lirp.cdn-website.com/69c0b277/dms3rep/multi/opt/BMI+levels-640w.jpg'),
                      fit: BoxFit.cover),
                ),
              )),
          SizedBox(height: 35),
          Expanded(
            child: Column(
              children: [
                RichText(
                  text: TextSpan(
                    text: 'BMI',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.green, // Specify the color you want
                    ),
                  ),
                ),
                SizedBox(height: 15),
                RichText(
                  text: TextSpan(
                    text: 'self Analysis',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // Specify the color you want
                    ),
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => home()));
            },
            child: Text('next'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
            ),
          ),
        ],
      ),
    );
  }
}

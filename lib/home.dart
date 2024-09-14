import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  double height = 100.0;
  double width = 50;
  int bmi = 0;
  String condition = 'select Data';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              height: size.height * 0.45,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'BMI',
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Calculator',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'BMI : $bmi',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Condition :',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      children: [
                        TextSpan(
                          text: '  $condition',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              child: Column(
                children: [
                  Text(
                    'Chose data',
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  SizedBox(height: size.height * 0.04),
                  RichText(
                    text: TextSpan(
                      text: 'Height :',
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                      children: [
                        TextSpan(
                          text: '  $height',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.04),
                  Slider(
                    value: height,
                    min: 0.0,
                    max: 300,
                    onChanged: (height) {
                      setState(() {
                        this.height = height;
                      });
                    },
                    activeColor: Colors.blue,
                    inactiveColor: Colors.lightBlue,
                    label: '$height',
                    divisions: 200,
                  ),
                  SizedBox(height: size.height * 0.04),
                  RichText(
                    text: TextSpan(
                      text: 'weight :',
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                      children: [
                        TextSpan(
                          text: ' $width',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.03),
                  Slider(
                    value: width,
                    min: 0.0,
                    max: 300,
                    onChanged: (width) {
                      setState(() {
                        this.width = width;
                      });
                    },
                    activeColor: Colors.blue,
                    inactiveColor: Colors.lightBlue,
                    label: '$width',
                    divisions: 300,
                  ),
                  SizedBox(height: size.height * 0.02),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 33, vertical: 22),
              color: Colors.transparent,
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      bmi = (width / ((height / 100) * (height / 100)))
                          .round()
                          .toInt();
                      if (bmi >= 15 && bmi <= 25) {
                        condition = 'bad condtion';
                      } else if (bmi >= 25 && bmi <= 45) {
                        condition = 'normal';
                      } else if (bmi >= 45 && bmi <= 65) {
                        condition = 'healthy';
                      } else if (bmi >= 65 && bmi <= 90) {
                        condition = 'fat';
                      } else if (bmi >= 90 && bmi <= 150) {
                        condition = 'too fat';
                      }
                    });
                  },
                  child: Text(
                    'Calculate',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

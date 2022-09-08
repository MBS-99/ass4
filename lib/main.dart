// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool flutterCourse = false;
  bool reactCourse = false;
  String myUrl1 = " ";
  String myUrl2 = " ";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Column(
            children: [
              Text(
                "Please selecet you Course!",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold),
              ),
              Divider(height: 35),
              CheckboxListTile(
                  secondary: Icon(
                    Icons.book,
                    color: Colors.amber,
                  ),
                  subtitle: Text("based on dart programming",
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 20,
                          color: Colors.green[700])),
                  title: Text(
                    "Flutter",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                  value: flutterCourse,
                  onChanged: ((val) {
                    setState(() {
                      flutterCourse = val!;
                      if (flutterCourse == true) {
                        myUrl1 =
                            "https://docs.flutter.dev/assets/images/flutter-logo-sharing.png";
                      }
                      if (flutterCourse == false) {
                        myUrl1 = " ";
                      }
                    });
                  })),
              CheckboxListTile(
                  secondary: Icon(
                    Icons.book,
                    color: Colors.amber,
                  ),
                  subtitle: Text(
                    "based on dart programming",
                    style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        color: Colors.green[700]),
                  ),
                  title: Text(
                    "React",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                  value: reactCourse,
                  onChanged: ((val) {
                    setState(() {
                      reactCourse = val!;
                      if (reactCourse == true) {
                        myUrl2 =
                            "https://raw.githubusercontent.com/llanojs/Readme_template/master/react-logo.jpg";
                      }
                      if (reactCourse == false) {
                        myUrl2 = " ";
                      }
                    });
                  })),
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(myUrl1))),
                height: 100,
                width: 150,
              ),
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(myUrl2))),
                height: 100,
                width: 170,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

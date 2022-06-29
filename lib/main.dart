import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

int ceviriIndex = 0;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: tasarimGovde(),
    );
  }
}

class tasarimGovde extends StatefulWidget {
  const tasarimGovde({Key? key}) : super(key: key);

  @override
  State<tasarimGovde> createState() => _tasarimGovdeState();
}

class _tasarimGovdeState extends State<tasarimGovde> {
  List<String> words = [
    'Hello - Merhaba',
    'Little - Kucuk',
    'Cheese - Peynir',
    'Bonjour - Merhaba',
    'Petit - Kucuk',
    'Fromage - Peynir',
    'Hi - Merhaba',
    'Klein - Kucuk',
    'Käse - Peynir',
    'Hola - Merhaba',
    'Pequeña - Kucuk',
    'Queso - Peynir',
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Learn Words with MyApp',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 150,
              child: Image.asset('assets/falci.png'),
              margin: EdgeInsets.only(bottom: 30),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
              child: ListTile(
                leading: Icon(
                  Icons.language_rounded,
                  color: Colors.red,
                ),
                title: Text(
                  'English to Turkish',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  setState(() {
                    ceviriIndex = Random().nextInt(3) + 0;
                  });
                },
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
              child: ListTile(
                leading: Icon(
                  Icons.language_rounded,
                  color: Colors.red,
                ),
                title: Text(
                  'French to Turkish',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  setState(() {
                    ceviriIndex = Random().nextInt(3) + 3;
                  });
                },
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
              child: ListTile(
                leading: Icon(
                  Icons.language_rounded,
                  color: Colors.red,
                ),
                title: Text(
                  'Deutsch to Turkish',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  setState(() {
                    ceviriIndex = Random().nextInt(3) + 6;
                  });
                },
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
              child: ListTile(
                leading: Icon(
                  Icons.language_rounded,
                  color: Colors.red,
                ),
                title: Text(
                  'Spanish to Turkish',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  setState(() {
                    ceviriIndex = Random().nextInt(3) + 9;
                  });
                },
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              height: 150,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: Text(
                  words[ceviriIndex],
                  style: TextStyle(
                    fontSize: 16,
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

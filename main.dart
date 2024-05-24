import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Peliculas en Cartelera'),
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: GridView.count(
            crossAxisCount: 2,
            children: [
              MovieCard(
                title: 'Vaquito',
                imagePath: 'assets/aa.jpg',
              ),
              MovieCard(
                title: 'Garfield',
                imagePath: 'assets/aaa.jpg',
              ),
              MovieCard(
                title: 'Intensamente2',
                imagePath: 'assets/aaaa.jpg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MovieCard extends StatelessWidget {
  final String title;
  final String imagePath;

  MovieCard({required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 500, 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

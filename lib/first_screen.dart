import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  final List movies = [
    "Titanic",
    "Blade Runner",
    "Rambo",
    "The Avengers",
    "Avatar",
    "I Am Legend",
    "300",
    "The Wolf of Wall Street",
    "Interstellar",
    "Game of Thrones",
    "Vikings",
    "Vikings",
    "Vikings"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movies'),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      backgroundColor: Colors.blueGrey.shade400,
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 6.0,
            color: Colors.white,
            child: ListTile(
              leading: CircleAvatar(
                child: Text('H'),
              ),
              title: Text(movies[index]),
              subtitle: Text('Subtitle'),
              trailing: Icon(Icons.ac_unit),
              //onTap: ()=>debugPrint('Movie name:${movies.elementAt(index)}'),
              // onLongPress: ()=>debugPrint('Long Pressed'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListViewDetail(movieName: movies.elementAt(index),),
                  ),
                );
              },
            ),
          );
        },
        itemCount: movies.length,
      ),
    );
  }
}

class ListViewDetail extends StatelessWidget {
  final String movieName;
  ListViewDetail({this.movieName});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movies Deatils'),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      backgroundColor: Colors.blueGrey.shade400,
      body: Container(
        child: RaisedButton(
          child: Text('go back $movieName'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(basketball_points_counter());
}

class basketball_points_counter extends StatefulWidget {
  @override
  State<basketball_points_counter> createState() =>
      _basketball_points_counterState();
}

class _basketball_points_counterState extends State<basketball_points_counter> {
  int teamApoint = 0;

  int teamBpoint = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 83, 150, 67),
        title: Text('Basketball Points Counter'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 450,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Team A',
                      style: TextStyle(fontSize: 40),
                    ),
                    Text(
                      '$teamApoint',
                      style: TextStyle(fontSize: 120),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamApoint++;
                        });
                      },
                      child: Text(
                        'Add 1 Point',
                        style: TextStyle(fontSize: 17),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 83, 150, 67),
                          foregroundColor: Colors.black,
                          minimumSize: Size(137, 40)),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamApoint += 2;
                        });
                      },
                      child: Text(
                        'Add 2 Points',
                        style: TextStyle(fontSize: 17),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 83, 150, 67),
                          foregroundColor: Colors.black,
                          minimumSize: Size(130, 40)),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamApoint += 3;
                        });
                      },
                      child: Text(
                        'Add 3 Points',
                        style: TextStyle(fontSize: 17),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 83, 150, 67),
                          foregroundColor: Colors.black,
                          minimumSize: Size(130, 40)),
                    ),
                  ],
                ),
              ),
              Container(
                height: 450,
                child: VerticalDivider(
                  thickness: 2,
                ),
              ),
              Container(
                height: 450,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Team B',
                      style: TextStyle(fontSize: 40),
                    ),
                    Text(
                      '$teamBpoint',
                      style: TextStyle(fontSize: 120),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamBpoint++;
                        });
                      },
                      child: Text(
                        'Add 1 Point',
                        style: TextStyle(fontSize: 17),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 83, 150, 67),
                          foregroundColor: Colors.black,
                          minimumSize: Size(137, 40)),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamBpoint += 2;
                        });
                      },
                      child: Text(
                        'Add 2 Points',
                        style: TextStyle(fontSize: 17),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 83, 150, 67),
                          foregroundColor: Colors.black,
                          minimumSize: Size(130, 40)),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamBpoint += 3;
                        });
                      },
                      child: Text(
                        'Add 3 Points',
                        style: TextStyle(fontSize: 17),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 83, 150, 67),
                          foregroundColor: Colors.black,
                          minimumSize: Size(130, 40)),
                    ),
                  ],
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Reset',
              style: TextStyle(fontSize: 17),
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 34, 126, 87),
                foregroundColor: Colors.black,
                minimumSize: Size(130, 40)),
          ),
        ],
      ),
    ));
  }
}

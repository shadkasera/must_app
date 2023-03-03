import 'package:flutter/material.dart';

// ignore: camel_case_types
class ShowTimetable extends StatelessWidget {
  const ShowTimetable({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
        elevation: 10,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // do something when the icon is pressed
            },
          ),
        ],
        title: const Text(
          'MUST TIMETABLE',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
            Container(
              height: 40,
              width: double.infinity,
              color: Colors.grey[300],
              // ignore: prefer_const_constructors
              child: Padding(
                padding: const EdgeInsets.all(
                3,
                ),
                child: const RotatedBox(quarterTurns: 3,
                  child: Text(
                    'MON',
                    style: TextStyle(color: Colors.lightBlue),
                  ),
                ),
              ),
            ),
            Container(
              height: 40,
              width: double.infinity,
              color: Colors.grey[300],
              // ignore: prefer_const_constructors
              child: Padding(
                padding: const EdgeInsets.all(
                3,
                ),
                child: const RotatedBox(quarterTurns: 3,
                  child: Text(
                    'TUE',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
            ),
            Container(
              height: 40,
              width: double.infinity,
              color: Colors.grey[300],
              // ignore: prefer_const_constructors
              child: Padding(
                padding: const EdgeInsets.all(
                3,
                ),
                child: const RotatedBox(quarterTurns: 3,
                  child: Text(
                    'WED',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
            ),
            Container(
              height: 40,
              width: double.infinity,
              color: Colors.grey[300],
              // ignore: prefer_const_constructors
              child: Padding(
                padding: const EdgeInsets.all(
                3,
                ),
                child: const RotatedBox(quarterTurns: 3,
                  child: Text(
                    'THU',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
            ),
            Container(
              height: 40,
              width: double.infinity,
              color: Colors.grey[300],
              // ignore: prefer_const_constructors
              child: Padding(
                padding: const EdgeInsets.all(
                3,
                ),
                child: const RotatedBox(quarterTurns: 3,
                  child: Text(
                    'FRI',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    ));
  }
}

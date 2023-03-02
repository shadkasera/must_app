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
       
      ),
    );
  }
}

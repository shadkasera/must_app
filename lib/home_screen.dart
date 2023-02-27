import 'package:flutter/material.dart';

// ignore: camel_case_types
class home_screen extends StatelessWidget {
  const home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey,
            elevation: 10,
            leading: IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
              tooltip: 'Open must_app',
              onPressed: () {
                // handle the press
              },
            ),
            title: const Text(
              'MUST TIMETABLE',
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                RichText(
                  text: const TextSpan( 
                    text: 'WELCOME \n\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                    children: [
                      TextSpan(
                        text:
                            'MUST timetables have been put in different of view. You can view a timetable by room, Lecturer or class. Proceed to view your preffered timetable by the type from the buttons below.',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          )),
    );
  }
}

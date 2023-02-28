import 'package:flutter/material.dart';

// ignore: camel_case_types
class home_screen extends StatelessWidget {
  const home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey[300],
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
          drawer: SizedBox(
            width: 200, // set a fixed width for the drawer
            child: Drawer(
              backgroundColor: Colors.grey,
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  // ignore: avoid_unnecessary_containers
                  SizedBox(
                    height: 200,
                    child: DrawerHeader(
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(
                              'assets/images/must_logo.jpeg',
                            ),
                          ),
                          // ignore: prefer_const_constructors
                          SizedBox(height: 18),
                          const Text(
                            'MUST TIMETABLE',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.house_sharp, color: Colors.white,),
                    title: const Text(
                      'ROOMS',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      // Handle drawer item tap
                    },
                  ),
                  ListTile( leading: const Icon(Icons.people_alt_sharp, color: Colors.white,),
                    title: const Text(
                      'LECTURERS',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      // code to handle item 2
                    },
                  ),
                  ListTile(leading: const Icon(Icons.school, color: Colors.white,),
                    title: const Text(
                      'PROGRAMS',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      // code to handle item 1
                    },
                  ),
                  ListTile(leading: const Icon(Icons.house_siding, color: Colors.white,),
                    title: const Text( 
                      'FREE ROOMS',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      // code to handle item 1
                    },
                  ),
                ],
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(height: 20),
                RichText(
                  text: const TextSpan(
                    text: 'WELCOME! \n\n',
                    style: TextStyle(
                      fontSize: 34,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text:
                            'MUST timetables have been put in different categories of view. You can view a timetable by room, Lecturer or class. Proceed to view your preffered timetable by the type from the buttons below.',
                        style: TextStyle(fontSize: 24, color: Colors.black),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 12.0),
                        child: Text(
                          '   VIEW  ROOM TIMETABLE   ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    )),
                const SizedBox(height: 20),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 12.0),
                        child: Text(
                          'VIEW LECTURER TIMETABLE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    )),
                const SizedBox(height: 20),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 12.0),
                        child: Text(
                          ' VIEW PROGRAM TIMETABLE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    )),
                const SizedBox(height: 20),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 12.0),
                        child: Text(
                          '         VIEW FREE ROOMS       ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    )),
                const SizedBox(height: 20),
                const Divider(
                  height: 20,
                  thickness: 2,
                  indent: BorderSide.strokeAlignCenter,
                  color: Colors.black,
                )
              ],
            ),
          )),
    );
  }
}

// main.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Kindacode.com',
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      // Theme mode depends on device settings at the beginning
      home: const HomeScreen(),
    );
  }
}

// Home Screen
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' MUST TIMETABLE'),
        centerTitle: true,
        actions: [
          IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                Get.isDarkMode
                    ? Get.changeTheme(ThemeData.light())
                    : Get.changeTheme(ThemeData.dark());
              })
        ],
      ),
       drawer: SizedBox(
            width: 300, // set a fixed width for the drawer
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
                              fontSize: 13,
                            ),
                          ),

                          // ignore: prefer_const_constructors
                          SizedBox(height: 28),
                          const Text(
                            'MENU',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    title: const Text(
                      ' HOME ',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const home_screen(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.room_rounded,
                      color: Colors.white,
                    ),
                    title: const Text(
                      'ROOM TIMETABLE',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ShowTimetable(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.people_alt_sharp,
                      color: Colors.white,
                    ),
                    title: const Text(
                      'LECTURERS TIMETABLE',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ShowTimetable(),
                        ),
                      );
                    },
                  ),
                  
                  ListTile(
                    leading: const Icon(
                      Icons.school,
                      color: Colors.white,
                    ),
                    title: const Text(
                      'PROGRAMS TIMETABLE',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ShowTimetable(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    title: const Text(
                      'SEARCH FOR FREE ROOMS',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ShowTimetable(),
                        ),
                      );
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
            crossAxisAlignment: CrossAxisAlignment.center,
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ShowTimetable(),
                        ),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ShowTimetable(),
                        ),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ShowTimetable(),
                        ),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ShowTimetable(),
                        ),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                      child: Text(
                        '          VIEW FREE ROOMS       ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ),
    );
  }
}


// show timetables

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

//
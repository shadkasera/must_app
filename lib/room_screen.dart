import 'package:flutter/material.dart';

// ignore: camel_case_types
class room_screen extends StatelessWidget {
  const room_screen({super.key});

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
                leading: const Icon(
                  Icons.house_sharp,
                  color: Colors.white,
                ),
                title: const Text(
                  'ROOMS',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  //Navigator.push(context, MaterialPageRoute(builder: context.(context) => room_screen));
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const room_screen(),
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
                  'LECTURERS',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // code to handle item 2
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.school,
                  color: Colors.white,
                ),
                title: const Text(
                  'PROGRAMS',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // code to handle item 1
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.house_siding,
                  color: Colors.white,
                ),
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
    ));
  }
}

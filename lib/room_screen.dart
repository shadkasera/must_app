import 'package:flutter/material.dart';
import 'package:must_app/home_screen.dart';

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
            icon: const Icon(Icons.more_vert_sharp),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return FractionallySizedBox(
                    heightFactor: 0.97,
                    widthFactor: 0.97,
                    child: Container(
                      alignment: Alignment.topRight,
                      child: Card(
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Text(
                                'More options',
                                style: TextStyle(color: Colors.blue),
                              ),
                              const SizedBox(height: 5),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ],
        title: GestureDetector(
          child: const Text(
            'MUST TIMETABLE',
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
                  'ROOMS TIMETABLE',
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
                  'LECTURERS TIMETABLE',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
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
                      builder: (context) => const room_screen(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.house_siding,
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
                      builder: (context) => const room_screen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:must_app/home_screen.dart';
import 'package:must_app/room_screen.dart';
import 'package:must_app/show_timetable_screen.dart';

// ignore: camel_case_types
class ViewScreen extends StatelessWidget {
  const ViewScreen({super.key});

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
          title: const Text(
            'MUST TIMETABLE',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
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
                        builder: (context) => const Room_Screen(),
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
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                // ignore: prefer_const_constructors
                Center(
                  child: const Text(
                    'ROOM A1 TIMETABLE',
                    style: TextStyle(fontSize: 26.0, color: Colors.black),
                  ),
                ),
                const SizedBox(height: 20.0),
                Expanded(
                  child: Table(
                    border: TableBorder.all(),
                    columnWidths: const <int, TableColumnWidth>{
                      0: FlexColumnWidth(1.0),
                      1: FlexColumnWidth(1.0),
                      2: FlexColumnWidth(1.0),
                      3: FlexColumnWidth(1.0),
                      4: FlexColumnWidth(1.0),
                    },
                    children: const <TableRow>[
                      TableRow(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ),
                        children: <Widget>[
                          Center(child: Text('TIME')),
                          Center(child: Text('MON')),
                          Center(child: Text('TUE')),
                          Center(child: Text('WED')),
                          Center(child: Text('THUR')),
                          Center(child: Text('FRI')),
                        ],
                      ),
                      TableRow(
                        children: <Widget>[
                          Center(child: Text('08-10')),
                          Center(child: Text('2')),
                          Center(child: Text('3')),
                          Center(child: Text('4')),
                          Center(child: Text('5')),
                          Center(child: Text('5')),
                        ],
                      ),
                      TableRow(
                        children: <Widget>[
                          Center(child: Text('10-12')),
                          Center(child: Text('7')),
                          Center(child: Text('8')),
                          Center(child: Text('9')),
                          Center(child: Text('10')),
                          Center(child: Text('10')),
                        ],
                      ),
                      TableRow(
                        children: <Widget>[
                          Center(child: Text('12-01')),
                          Center(child: Text('12')),
                          Center(child: Text('13')),
                          Center(child: Text('14')),
                          Center(child: Text('15')),
                          Center(child: Text('10')),
                        ],
                      ),
                      TableRow(
                        children: <Widget>[
                          Center(child: Text('13-15')),
                          Center(child: Text('17')),
                          Center(child: Text('18')),
                          Center(child: Text('19')),
                          Center(child: Text('20')),
                          Center(child: Text('10')),
                        ],
                      ),
                      TableRow(
                        children: <Widget>[
                          Center(child: Text('15-17')),
                          Center(child: Text('MAPD \nBIT3\nM. Phiri')),
                          Center(child: Text('23')),
                          Center(child: Text('24')),
                          Center(child: Text('25')),
                          Center(child: Text('10')),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

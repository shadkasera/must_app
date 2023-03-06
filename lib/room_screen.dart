import 'package:flutter/material.dart';
import 'package:search_page/search_page.dart';

class Person implements Comparable<Person> {
  final String name;

  const Person(this.name);

  @override
  int compareTo(Person other) => name.compareTo(other.name);
}

// ignore: camel_case_types
class Room_Screen extends StatelessWidget {
  static const people = [
    Person('A1 TIMETABLE'),
    Person('A2 TIMETABLE'),
    Person('A3 TIMETABLE'),
    Person('A4 TIMETABLE'),
    Person('A5 TIMETABLE'),
    Person('A6 TIMETABLE'),
    Person('A7 TIMETABLE'),
    Person('A8 TIMETABLE'),
    Person('A9 TIMETABLE'),
    Person('A10 TIMETABLE'),
    Person('A11 TIMETABLE'),
    Person('A12 TIMETABLE'),
    Person('A13 TIMETABLE'),
  ];
  const Room_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.blue,
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () => showSearch(
                context: context,
                delegate: SearchPage(
                  onQueryUpdate: print,
                  items: people,
                  searchLabel: 'Search ', 
                  suggestion: const Center(
                    child: Text('search for a classroom timetable'),
                  ),
                  failure: const Center(
                    child: Text('No Room found'),
                  ),
                  filter: (person) => [
                    person.name,
                  ],
                  sort: (a, b) => a.compareTo(b),
                  builder: (person) => ListTile(
                    title: Text(person.name),
                  trailing: GestureDetector(
                onTap: () {
                  // do something when the "view" text is clicked
                },
                child: const Text(
                  'view',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
                  ),
                  
                ), 
              ),
            ),
          ],
          title: const Text(
            'MUST TIMETABLE',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: people.length,
          itemBuilder: (context, index) {
            final person = people[index];

            return ListTile(
              title: Text(person.name),
              trailing: GestureDetector(
                onTap: () {
                  // do something when the "view" text is clicked
                },
                child: const Text(
                  'view',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

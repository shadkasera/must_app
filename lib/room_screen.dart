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
    Person('A1'),
    Person('A2'),
    Person('A3'),
    Person('A4'),
    Person('A5'),
    
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
                    child: Text('search for Rooms'),
                  ),
                  failure: const Center(
                    child: Text('No Room found :('),
                  ),
                  filter: (person) => [
                    person.name,
                  ],
                  sort: (a, b) => a.compareTo(b),
                  builder: (person) => ListTile(
                    title: Text(person.name),
                    trailing: const Text('GROUND'),
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
              trailing: const Text('GROUND'),
            );
          },
        ),
      ),
    );
  }
}

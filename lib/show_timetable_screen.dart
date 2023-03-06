import 'package:flutter/material.dart';
import 'package:search_page/search_page.dart';

class Person implements Comparable<Person> {
  final String name, surname;

  const Person(this.name, this.surname);

  @override
  int compareTo(Person other) => name.compareTo(other.name);
}

// ignore: camel_case_types
class ShowTimetable extends StatelessWidget {
  static const people = [
    Person('Mike', 'Barron'),
    Person('Todd', 'Black'),
    Person('Ahmad', 'Edwards'),
    Person('Anthony', 'Johnson'),
    Person('Annette', 'Brooks'),
    Person('shadreck', 'kasera'),
    Person('Anthony', 'Johnson'),
    Person('goodluck', 'Brooks'),
    Person('shadreck', 'banda'),
    Person('miga', 'kamanga'),
    Person('chawer', 'kamanga'),
  ];
  const ShowTimetable({super.key});

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
                    child: Text('search for lecturers'),
                  ),
                  failure: const Center(
                    child: Text('No person found :('),
                  ),
                  filter: (person) => [
                    person.name,
                    person.surname,
                  ],
                  sort: (a, b) => a.compareTo(b),
                  builder: (person) => ListTile(
                    title: Text(person.name),
                    subtitle: Text(person.surname),
                    trailing: const Text('CSIT'),
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
              subtitle: Text(person.surname),
              trailing: const Text('CSIT'),
            );
          },
        ),
      ),
    );
  }
}

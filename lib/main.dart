// main.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        title: const Text('Kindacode.com'),
        actions: [
          IconButton(
              icon: const Icon(Icons.lightbulb),
              onPressed: () {
                Get.isDarkMode
                    ? Get.changeTheme(ThemeData.light())
                    : Get.changeTheme(ThemeData.dark());
              })
        ],
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go to Other Screen'),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const OtherScreen()));
          },
        ),
      ),
    );
  }
}

// Other Screen
class OtherScreen extends StatelessWidget {
  const OtherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Other Screen'),
      ),
      body: Center(
        child: Card(
          child: Container(
              width: 300,
              height: 300,
              alignment: Alignment.center,
              child: const Text('Other Screen')),
        ),
      ),
    );
  }
}
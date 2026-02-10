import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // خلفية سوداء
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 40),

            Center(
              child: Column(
                children: [
                  Text(
                    _counter > 0 ? '$_counter' : '',
                    style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    'Name: fawaz',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    'Email: fauaz428@gmail.com',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                  ),

                  const SizedBox(height: 20),

                  Image.network(
              'https://images.unsplash.com/photo-1501785888041-af3ef285b470',
                width: 305,
                 height: 223,
                 fit: BoxFit.cover,
                 ),
                ],
              ),
            ),

            const Spacer(),

            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.call, size: 40, color: Colors.white),
                  SizedBox(width: 30),
                  Icon(Icons.email, size: 40, color: Colors.white),
                  SizedBox(width: 30),
                  Icon(Icons.message, size: 40, color: Colors.white),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey,
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() { runApp(const MyApp()); }

class MyApp extends StatelessWidget { const MyApp({super.key});

@override Widget build(BuildContext context) { return MaterialApp( title: 'Product Box', theme: ThemeData( colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), useMaterial3: true, ), home: const MyHomePage(title: 'Product Box'), ); } }

class MyHomePage extends StatefulWidget { const MyHomePage({super.key, required this.title});

final String title;

@override State createState() => _MyHomePageState(); }

class _MyHomePageState extends State { @override Widget build(BuildContext context) { return Scaffold( appBar: AppBar( title: Text(widget.title), backgroundColor: Theme.of(context).colorScheme.inversePrimary, ),

  // Product Box
  body: Center(
    child: Container(
      width: 300,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.network(
            'https://media.zid.store/e4aadd21-62d3-4ecb-b286-5cfefed6d23c/8d952335-1345-4134-ba34-ae2435de17a5.jpg',
            height: 120,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 10),
          const Text(
            'Lenovo IdeaPad 1',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 5),
          const Text(
            'Core i7 • RAM 16GB • SSD 512GB',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 10),
          const Text(
            '4500 SAR',
            style: TextStyle(
              fontSize: 18,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  ),
);
} }

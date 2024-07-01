import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Customized Widgets Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customized Widgets Demo'),
      ),
      body: ListView(
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.map, color: Colors.green),
            title: Text('Map', style: TextStyle(fontSize: 18)),
          ),
          const ListTile(
            leading: Icon(Icons.photo_album, color: Colors.purple),
            title: Text('Album', style: TextStyle(fontSize: 18)),
          ),
          const ListTile(
            leading: Icon(Icons.phone, color: Colors.blue),
            title: Text('Phone', style: TextStyle(fontSize: 18)),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: const Text(
              'Customized Text Widget',
              style: TextStyle(fontSize: 24, color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              textStyle: const TextStyle(fontSize: 18),
            ),
            child: const Text('Elevated Button'),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.network(
              'https://w7.pngwing.com/pngs/67/315/png-transparent-flutter-hd-logo-thumbnail.png',
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your name',
                labelStyle: TextStyle(color: Colors.teal),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

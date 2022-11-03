import 'package:flutter/material.dart';
import 'package:project_1/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
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
        centerTitle: true,
        title: const Text(
          'My App Bar',
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
      ),

      //body
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.lightGreen,
            child: const Text(
              "Hi Fazla!!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
              ),
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Name',
            ),
            maxLength: 500,
            maxLines: 2,
            validator: (value) {},
            onSaved: (value) {},
          ),
          ElevatedButton(
            child: const Text('Press me!'),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewPage(
                      text: "Hello!!!",
                    ),
                  ));
            },
          ),
        ],
      ),
    );
  }
}

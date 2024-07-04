import 'package:flutter/material.dart';
import 'package:navigatepage/main.dart';
import 'package:navigatepage/student.dart';

class Admin extends StatelessWidget {
  const Admin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nagivate Pages',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyEmail(),
    );
  }
}

class MyEmail extends StatefulWidget {
  const MyEmail({super.key});

  @override
  State<MyEmail> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyEmail> {
  List<String> student = ["Sazid", "Aziz", "Shamim", "Rahat"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 100,
        title: Text('Welcome to Admin Page'),
        backgroundColor: Colors.lightGreen,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: student.length, //how many item it shows
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.all(5),
            height: 50,
            color: Colors.amber[600],
            child: Center(
              child: Text(
                student[index],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back),
        tooltip: 'go home',
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MyApp()));
          // Navigator.pop(context); ( kaj kora ai ta )
        },
      ),
    );
  }
}

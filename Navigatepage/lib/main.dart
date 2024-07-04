import 'package:flutter/material.dart';
import 'package:navigatepage/admin.dart';
import 'package:navigatepage/email.dart';
import 'package:navigatepage/nextpage.dart';
import 'package:navigatepage/phone.dart';
import 'package:navigatepage/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigate Pages',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

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
      // ---------------------- navigation drawer -----------------

      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Azizur Rahman'),
              accountEmail: Text('Aziz@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset('images/pic1.jpg'),
                ),
              ),
              decoration: const BoxDecoration(
                color: Colors.pinkAccent,
                image: DecorationImage(
                    image: AssetImage('images/bg1.png'), fit: BoxFit.cover),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Admin'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Admin()));
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('forward page'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Nextpage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.call),
              title: Text('Contact'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Phone()));
              },
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email Address'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Email()));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Settings()));
              },
            ),
          ],
        ),
      ),

      // ---------------------- app bar-----------------

      appBar: AppBar(
        titleSpacing: 100,
        title: Text('Welcome to Home Page'),
        backgroundColor: Colors.indigoAccent,
      ),

      // ---------------------- body -----------------

      body:
          // child: Text('This is a Home Page'),
          Column(
        children: [
          Text('This is a Home Page'),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              padding: EdgeInsets.all(20),
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              primary: false,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(8),
                  child: SizedBox.fromSize(
                    size: Size(80, 80),
                    child: ClipOval(
                      child: Material(
                        color: Colors.blueGrey,
                        child: InkWell(
                          splashColor: Colors.green,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.person,color: Colors.white,
                                size: 35,
                              ),
                              Text(
                                "Admin",
                                style: TextStyle(fontSize: 15 ,color: Colors.white),
                              ),
                            ],
                          ),
                          onTap: (){

                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => Admin()));

                          },
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: SizedBox.fromSize(
                    size: Size(80, 80),
                    child: ClipOval(
                      child: Material(
                        color: Colors.blueGrey,
                        child: InkWell(
                          splashColor: Colors.green,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.school,color: Colors.white,
                                size: 35,
                              ),
                              Text(
                                "student",
                                style: TextStyle(fontSize: 15,color: Colors.white),
                              ),
                            ],
                          ),
                          onTap: (){

                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => Nextpage()));
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: SizedBox.fromSize(
                    size: Size(80, 80),
                    child: ClipOval(
                      child: Material(
                        color: Colors.blueGrey,
                        child: InkWell(
                          splashColor: Colors.green,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.group,color: Colors.white,
                                size: 35,
                              ),
                              Text(
                                "teacher",
                                style: TextStyle(fontSize: 15,color: Colors.white),
                              ),
                            ],
                          ),
                          onTap: (){



                          },
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: SizedBox.fromSize(
                    size: Size(80, 80),
                    child: ClipOval(
                      child: Material(
                        color: Colors.blueGrey,
                        child: InkWell(
                          splashColor: Colors.green,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.login,color: Colors.white,
                                size: 35,
                              ),
                              Text(
                                "login",
                                style: TextStyle(fontSize: 15,color: Colors.white),
                              ),
                            ],
                          ),
                          onTap: (){



                          },

                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: SizedBox.fromSize(
                    size: Size(80, 80),
                    child: ClipOval(
                      child: Material(
                        color: Colors.blueGrey,
                        child: InkWell(
                          splashColor: Colors.green,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.app_registration,color: Colors.white,
                                size: 35,
                              ),
                              Text(
                                "Admission",
                                style: TextStyle(fontSize: 15,color: Colors.white),
                              ),
                            ],
                          ),
                          onTap: (){



                          },
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: SizedBox.fromSize(
                    size: Size(80, 80),
                    child: ClipOval(
                      child: Material(
                        color: Colors.blueGrey,
                        child: InkWell(
                          splashColor: Colors.green,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.search,color: Colors.white,
                                size: 50,
                              ),
                              Text(
                                "search",
                                style: TextStyle(fontSize: 15,color: Colors.white),
                              ),
                            ],
                          ),
                          onTap: (){



                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      // ---------------------- floating action button -----------------

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back),
        tooltip: 'go next page',
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Nextpage()));
        },
      ),
    );
  }
}

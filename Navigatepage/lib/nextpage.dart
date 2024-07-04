import 'package:flutter/material.dart';
import 'package:navigatepage/main.dart';
import 'package:navigatepage/student.dart';

class Nextpage extends StatelessWidget {
  const Nextpage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nagivate Pages',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MynextPage(),
    );
  }
}

class MynextPage extends StatefulWidget {
  const MynextPage({super.key});

  @override
  State<MynextPage> createState() => _MynextPageState();
}

class _MynextPageState extends State<MynextPage> {

  List<Student> stList = [
    Student(
        "Azizur",
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
        "https://e7.pngegg.com/pngimages/119/921/png-clipart-flower-dahlia-flower-flower-garden-annual-plant-thumbnail.png"),
    Student(
        "Sazid",
        "hi Ipsum is simply dummy text of the printing and typesetting industry.",
        "https://w7.pngwing.com/pngs/526/806/png-transparent-pink-and-red-petaled-flowers-painting-flower-decoupage-flower-watercolor-flower-arranging-photography-poster.png"),
    Student(
        "Arif",
        "Holla Ipsum is simply dummy text of the printing and typesetting industry.",
        "https://i.pinimg.com/736x/05/eb/23/05eb23c392abf2882e3708d670c2340b.jpg")
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 100,
        title: Text('Welcome to Next Page'),
        backgroundColor: Colors.deepOrange,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: stList.length,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Card(
              elevation: 50,
              shadowColor: Colors.black,
              color: Colors.amber[100],
              child: SizedBox(
                width: 300,
                height: 500,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 100,
                        backgroundImage: NetworkImage(stList[index].photo.toString(),
                           ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                     stList[index].name.toString(),
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        stList[index].detail.toString(),style:TextStyle(
                        fontSize: 15
                      ) ,
                      ),

                      SizedBox(
                     width: 300,
                        child: ElevatedButton(
                     child: Padding(
                       padding: EdgeInsets.all(5),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,

                         children: <Widget>[
                           Text("Back Home"),
                         ],

                       ),

                     ),
                          onPressed: (){},
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(Colors.green)

                          ),

                        ),
                      ),

                    ],
                  ),
                ),
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

import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'FTC PowerPlay Scoring App';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 1, 50, 90),
          foregroundColor: Colors.white,
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),

        // fontFamily: 'BebasNeue',
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        // primarySwatch: Colors.red,
      ),
      home: const MyHomePage(),
    );
  }
}

// class ListViewHome extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       padding: const EdgeInsets.all(8),
//       children: <Widget>[
//         Text('List 1'),
//         Text('List 2'),
//         Text('List 3'),
//       ],
//     );
//   }
// }

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // void _incrementCounter() {
  //   setState(() {
  //     // This call to setState tells the Flutter framework that something has
  //     // changed in this State, which causes it to rerun the build method below
  //     // so that the display can reflect the updated values. If we changed
  //     // _counter without calling setState(), then the build method would not be
  //     // called again, and so nothing would appear to happen.
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('FTC PowerPlay Scorer',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            )),
      ),
      body: ListView(
        children: const <Widget>[
          Card(
            child: ListTile(
              // height: 50,
              // color: const Color.fromARGB(255, 172, 13, 1),
              title: Center(
                child: Text(
                  'Autonomous - 30 Seconds',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 18,
                    fontFamily: 'OSwald',
                    color: Colors.white,
                  ),
                ),
              ),
              tileColor: Colors.blue,
            ),
          ),
          Card(
            child: ListTile(
              // height: 50,
              // color: const Color.fromARGB(255, 172, 13, 1),
              title: Text(
                  'Cones in Terminal',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Anton',
                    color: Color.fromARGB(255, 1, 56, 102),
                  ),
                ),
                tileColor: Color.fromARGB(255, 144, 203, 252),
              ),
          ),
          Card(
            child: ListTile(
              // height: 50,
              // color: const Color.fromARGB(255, 172, 13, 1),
              title: Text(
                  'Cones on Ground Junction',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Anton',
                    color: Color.fromARGB(255, 1, 56, 102),
                  ),
                ),
                tileColor: Color.fromARGB(255, 144, 203, 252),
              ),
          ),
          Card(
            child: ListTile(
              // height: 50,
              // color: const Color.fromARGB(255, 172, 13, 1),
              title: Text(
                  'Cones in Low Junction',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Anton',
                    color: Color.fromARGB(255, 1, 56, 102),
                  ),
                ),
                tileColor: Color.fromARGB(255, 144, 203, 252),
              ),
          ),
          Card(
            child: ListTile(
              // height: 50,
              // color: const Color.fromARGB(255, 172, 13, 1),
              title: Text(
                  'Cones in Medium Junction',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Anton',
                    color: Color.fromARGB(255, 1, 56, 102),
                  ),
                ),
                tileColor: Color.fromARGB(255, 144, 203, 252),
              ),
          ),
          Card(
            child: ListTile(
              // height: 50,
              // color: const Color.fromARGB(255, 172, 13, 1),
              title: Text(
                  'Cones in High Junction',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Anton',
                    color: Color.fromARGB(255, 1, 56, 102),
                  ),
                ),
                tileColor: Color.fromARGB(255, 144, 203, 252),
              ),
          ),
          Card(
            child: ListTile(
              // height: 50,
              // color: const Color.fromARGB(255, 172, 13, 1),
              title: Text(
                  'Parking?',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Anton',
                    color: Color.fromARGB(255, 1, 56, 102),
                  ),
                ),
                tileColor: Color.fromARGB(255, 144, 203, 252),
              ),
          ),
          Card(
            child: ListTile(
              // height: 50,
              // color: const Color.fromARGB(255, 172, 13, 1),
              title: Text(
                  'Used Signal Sleeve?',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Anton',
                    color: Color.fromARGB(255, 1, 56, 102),
                  ),
                ),
                tileColor: Color.fromARGB(255, 144, 203, 252),
              ),
          ),
          Card(
            child: ListTile(
              // height: 50,
              // color: const Color.fromARGB(255, 172, 13, 1),
              title: Center(
                child: Text(
                  'Driver Controlled - 60 Seconds',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 18,
                    fontFamily: 'OSwald',
                    color: Colors.white,
                  ),
                ),
              ),
              tileColor: Colors.blue,
            ),
          ),
          Card(
            child: ListTile(
              // height: 50,
              // color: const Color.fromARGB(255, 172, 13, 1),
              title: Text(
                  'Cones in Terminal',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Anton',
                    color: Color.fromARGB(255, 1, 56, 102),
                  ),
                ),
                tileColor: Color.fromARGB(255, 144, 203, 252),
              ),
          ),
          Card(
            child: ListTile(
              // height: 50,
              // color: const Color.fromARGB(255, 172, 13, 1),
              title: Text(
                  'Cones on Ground junction',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Anton',
                    color: Color.fromARGB(255, 1, 56, 102),
                  ),
                ),
                tileColor: Color.fromARGB(255, 144, 203, 252),
              ),
          ),
          Card(
            child: ListTile(
              // height: 50,
              // color: const Color.fromARGB(255, 172, 13, 1),
              title: Text(
                  'Cones in Low Junction',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Anton',
                    color: Color.fromARGB(255, 1, 56, 102),
                  ),
                ),
                tileColor: Color.fromARGB(255, 144, 203, 252),
              ),
          ),
          Card(
            child: ListTile(
              // height: 50,
              // color: const Color.fromARGB(255, 172, 13, 1),
              title: Text(
                  'Cones in Medium Junction',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Anton',
                    color: Color.fromARGB(255, 1, 56, 102),
                  ),
                ),
                tileColor: Color.fromARGB(255, 144, 203, 252),
              ),
          ),
          Card(
            child: ListTile(
              // height: 50,
              // color: const Color.fromARGB(255, 172, 13, 1),
              title: Text(
                  'Cones in High Junction',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Anton',
                    color: Color.fromARGB(255, 1, 56, 102),
                  ),
                ),
                tileColor: Color.fromARGB(255, 144, 203, 252),
              ),
          ),
          Card(
            child: ListTile(
              // height: 50,
              // color: const Color.fromARGB(255, 172, 13, 1),
              title: Center(
                child: Text(
                  'End-Game - 30 seconds',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 18,
                    fontFamily: 'OSwald',
                    color: Colors.white,
                  ),
                ),
              ),
              tileColor: Colors.blue,
            ),
          ),
          Card(
            child: ListTile(
              // height: 50,
              // color: const Color.fromARGB(255, 172, 13, 1),
              title: Text(
                  'Junctions Owned',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Anton',
                    color: Color.fromARGB(255, 1, 56, 102),
                  ),
                ),
                tileColor: Color.fromARGB(255, 144, 203, 252),
              ),
          ),
          Card(
            child: ListTile(
              // height: 50,
              // color: const Color.fromARGB(255, 172, 13, 1),
              title: Text(
                  'Beacon?',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Anton',
                    color: Color.fromARGB(255, 1, 56, 102),
                  ),
                ),
                tileColor: Color.fromARGB(255, 144, 203, 252),
              ),
          ),
          Card(
            child: ListTile(
              // height: 50,
              // color: const Color.fromARGB(255, 172, 13, 1),
              title: Text(
                  'Completed Circuit?',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Anton',
                    color: Color.fromARGB(255, 1, 56, 102),
                  ),
                ),
                tileColor: Color.fromARGB(255, 144, 203, 252),
              ),
          ),
          Card(
            child: ListTile(
              // height: 50,
              // color: const Color.fromARGB(255, 172, 13, 1),
              title: Text(
                  'Parked in Terminal?',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Anton',
                    color: Color.fromARGB(255, 1, 56, 102),
                  ),
                ),
                tileColor: Color.fromARGB(255, 144, 203, 252),
              ),
          ),
          Card(
            child: ListTile(
              // height: 50,
              // color: const Color.fromARGB(255, 172, 13, 1),
              title: Center(
                child: Text(
                  'Scoring Totals',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 18,
                    fontFamily: 'OSwald',
                    color: Colors.white,
                  ),
                ),
              ),
              tileColor: Colors.blue,
            ),
          ),
          Card(
            child: ListTile(
              // height: 50,
              // color: const Color.fromARGB(255, 172, 13, 1),
              title: Text(
                  'Autonomous:',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Anton',
                    color: Color.fromARGB(255, 1, 56, 102),
                    decoration: TextDecoration.underline,
                  ),
                ),
                tileColor: Color.fromARGB(255, 144, 203, 252),
              ),
          ),
          Card(
            child: ListTile(
              // height: 50,
              // color: const Color.fromARGB(255, 172, 13, 1),
              title: Text(
                  'Driver Controlled:',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Anton',
                    color: Color.fromARGB(255, 1, 56, 102),
                    decoration: TextDecoration.underline,
                  ),
                ),
                tileColor: Color.fromARGB(255, 144, 203, 252),
              ),
          ),
          Card(
            child: ListTile(
              // height: 50,
              // color: const Color.fromARGB(255, 172, 13, 1),
              title: Text(
                  'End Game:',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Anton',
                    color: Color.fromARGB(255, 1, 56, 102),
                    decoration: TextDecoration.underline,
                  ),
                ),
                tileColor: Color.fromARGB(255, 144, 203, 252),
              ),
          ),
          Card(
            child: ListTile(
              // height: 50,
              // color: const Color.fromARGB(255, 172, 13, 1),
              title: Text(
                  'Total:',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Anton',
                    color: Color.fromARGB(255, 196, 229, 255),
                    decoration: TextDecoration.underline,
                  ),
                ),
                tileColor: Color.fromARGB(255, 1, 56, 102),
              ),
          ),
        ]
        //   Container(
        //     height: 50,
        //     color: const Color.fromARGB(255, 179, 34, 23),
        //     child: const Center(
        //       child: Text(
        //       'Autonomous - 30 Seconds',
        //       style: TextStyle(
        //         fontSize: 18,
        //         fontFamily: 'Anton',
        //         color: Colors.black87,
        //       ),
        //       ),
        //     ),
        //   ),
        //   Container(
        //     padding: const EdgeInsets.all(8.0),
        //     height: 50,
        //     color: Colors.red,
        //     child: const Text(
        //       'Cones in Terminal',
        //       style: TextStyle(
        //         fontSize: 18,
        //         fontFamily: 'Anton',
        //         color: Colors.white,
        //       ),
        //     ),
        //   ),
        //   Container(
        //     padding: const EdgeInsets.all(8.0),
        //     height: 50,
        //     color: Colors.red,
        //     child: const Text(
        //       'Cones on Ground Junction',
        //       style: TextStyle(
        //         fontSize: 18,
        //         fontFamily: 'Anton',
        //         color: Colors.white,
        //       ),
        //     ),
        //   ),
        //   Container(
        //     padding: const EdgeInsets.all(8.0),
        //     height: 50,
        //     color: Colors.red,
        //     child: const Text(
        //       'Cones in Low Junction',
        //       style: TextStyle(
        //         fontSize: 18,
        //         fontFamily: 'Anton',
        //         color: Colors.white,
        //       ),
        //     ),
        //   ),
        //   Container(
        //     padding: const EdgeInsets.all(8.0),
        //     height: 50,
        //     color: Colors.red,
        //     child: const Text(
        //       'Cones in Medium Junction',
        //       style: TextStyle(
        //         fontSize: 18,
        //         fontFamily: 'Anton',
        //         color: Colors.white,
        //       ),
        //     ),
        //   ),
        //   Container(
        //     padding: const EdgeInsets.all(8.0),
        //     height: 50,
        //     color: Colors.red,
        //     child: const Text(
        //       'Cones in High Junction',
        //       style: TextStyle(
        //         fontSize: 18,
        //         fontFamily: 'Anton',
        //         color: Colors.white,
        //       ),
        //     ),
        //   ),
        //   Container(
        //     padding: const EdgeInsets.all(8.0),
        //     height: 50,
        //     color: Colors.red,
        //     child: const Text(
        //       'Parked?',
        //       style: TextStyle(
        //         fontSize: 18,
        //         fontFamily: 'Anton',
        //         color: Colors.white,
        //       ),
        //     ),
        //   ),
        //   Container(
        //     padding: const EdgeInsets.all(8.0),
        //     height: 50,
        //     color: Colors.red,
        //     child: const Text(
        //       'Used Signal Sleeve?',
        //       style: TextStyle(
        //         fontSize: 18,
        //         fontFamily: 'Anton',
        //         color: Colors.white,
        //       ),
        //     ),
        //   ),
        // ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


// class SampleListView extends StatelessWidget {
//   const SampleListView({Key? key, required this.entries}) : super(key: key);

//   final List<int> entries;

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: entries
//           .map(
//             (int e) => ListTile(
//               leading: const Icon(Icons.android),
//               title: Text('List element ${e + 1}'),
//             ),
//           )
//           .toList(),
//     );
//   }
// }
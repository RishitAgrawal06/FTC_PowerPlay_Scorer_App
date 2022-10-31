// ignore_for_file: prefer_const_constructors

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
          color: Color.fromARGB(255, 1, 56, 102),
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
      home: MyHomePage(),
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
  num _autoTerminal = 0;
  num _autoGround = 0;
  num _autoLow = 0;
  num _autoMedium = 0;
  num _autoHigh = 0;
  bool _autoParking = false;
  bool _autoSleeve = false;
  num _autoNum = 0;
  num _autoTotal = 0;
  num _teleTerminal = 0;
  num _teleGround = 0;
  num _teleLow = 0;
  num _teleMedium = 0;
  num _teleHigh = 0;
  num _teleNum = 0;
  num _teleTotal = 0;
  num _endOwned = 0;
  bool _endBeacon = false;
  bool _endCircuit = false;
  bool _endTerminal = false; 
  bool _endParked = false;
  num _totalAll = 0;
  num _defaultValue = 0;
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
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.restart_alt,
              size: 30,
              color: Colors.white,
            ),
            onPressed: () {
              setState(() {
                _autoTerminal = _defaultValue;
                _autoGround = _defaultValue;
                _autoLow = _defaultValue;
                _autoMedium = _defaultValue;
                _autoHigh = _defaultValue;
                _autoParking = false;
                _autoSleeve = false;
                _autoNum = _defaultValue;
                _autoTotal = _defaultValue;
                _teleTerminal = _defaultValue;
                _teleGround = _defaultValue;
                _teleLow = _defaultValue;
                _teleMedium = _defaultValue;
                _teleHigh = _defaultValue;
                _teleNum = _defaultValue;
                _teleTotal = _defaultValue;
                _endOwned = _defaultValue;
                _endBeacon = false;
                _endCircuit = false;
                _endTerminal = false;
                _endParked = false;
                _totalAll = _defaultValue;
              });
              },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              // height: 50,
              // color: const Color.fromARGB(255, 172, 13, 1),
              title: Center(
                child: Text(
                  'Autonomous',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 18,
                    fontFamily: 'Oswald',
                    color: Colors.white,
                  ),
                ),
              ),
              subtitle: Center(
                child: Text('30 Seconds', style: TextStyle(fontSize: 12, color: Colors.white)),
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
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  // autoConesTerminal!=0? 
                  // new IconButton(icon: new Icon(Icons.remove),onPressed: ()=>setState(()=>autoConesTerminal--),),
              	  // new Text(autoConesTerminal.toString()),
                  // new IconButton(icon: new Icon(Icons.add),onPressed: ()=>setState(()=>autoConesTerminal++)),
                  IconButton(
                    icon: Icon(Icons.remove_circle_sharp, size: 30, color: Color.fromARGB(255, 1, 56, 102), ),
                    onPressed: ()=>setState(()=>_autoTerminal--),    
                  ),
                  Text(_autoTerminal.toString()),
                  IconButton(
                    icon: Icon(Icons.add_circle_sharp, size: 30, color: Color.fromARGB(255, 1, 56, 102)),
                    onPressed: ()=>setState(()=>_autoTerminal++),
                  ),
                ]
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
                trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  // autoConesTerminal!=0? 
                  // new IconButton(icon: new Icon(Icons.remove),onPressed: ()=>setState(()=>autoConesTerminal--),),
              	  // new Text(autoConesTerminal.toString()),
                  // new IconButton(icon: new Icon(Icons.add),onPressed: ()=>setState(()=>autoConesTerminal++)),
                  IconButton(
                    icon: Icon(Icons.remove_circle_sharp, size: 30, color: Color.fromARGB(255, 1, 56, 102), ),
                    onPressed: ()=>setState(()=>_autoGround--),    
                  ),
                  Text(_autoGround.toString()),
                  IconButton(
                    icon: Icon(Icons.add_circle_sharp, size: 30, color: Color.fromARGB(255, 1, 56, 102)),
                    onPressed: ()=>setState(()=>_autoGround++),
                  ),
                ]
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
                  'Driver Controlled',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 18,
                    fontFamily: 'Oswald',
                    color: Colors.white,
                  ),
                ),
              ),
              subtitle: Center(
                child: Text('60 Seconds', style: TextStyle(fontSize: 12, color: Colors.white)),
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
                  'End-Game',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 18,
                    fontFamily: 'Oswald',
                    color: Colors.white,
                  ),
                ),
              ),
              subtitle: Center(
                child: Text('30 Seconds', style: TextStyle(fontSize: 12, color: Colors.white)),
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
                    fontFamily: 'Oswald',
                    color: Colors.white,
                    decoration: TextDecoration.underline,
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

class TooltipSample extends StatelessWidget {
  const TooltipSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Tooltip(
      message: 'I am a Tooltip',
      // Text('Hover over the text to show a tooltip.'),
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
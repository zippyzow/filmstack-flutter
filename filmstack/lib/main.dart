import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Filmstack',
      theme: ThemeData(
        fontFamily: 'AlegreyaSans',
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(title: 'Filmstack'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        bottomNavigationBar: TabBar(
          unselectedLabelColor: Colors.grey,
          labelColor: Colors.black,
          indicatorWeight: 4,
          tabs: [
            Tab(text: 'Choose'),
            Tab(text: 'Approved'),
            Tab(text: 'Rejected'),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    height: 400,
                    child: Column(
                        children: [
                          Expanded(child: Image(image: AssetImage('images/after-hours.jpg'))),
                          SizedBox(height: 8),
                          Text(
                              'After Hours',
                              style: TextStyle(fontSize: 40)
                          ),
                        ]
                    ),
                  ),
                ),
              ),
              SizedBox(height: 14),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FloatingActionButton(
                    backgroundColor: Colors.red.shade200,
                    elevation: 4,
                    child: Icon(Icons.close),
                    onPressed: (){},
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.green.shade200,
                    elevation: 4,
                    child: Icon(Icons.done),
                    onPressed: (){},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

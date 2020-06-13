import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  Homepage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _counter = 0;

  void _counterAdd() {
    setState(() {
      _counter += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Text('click FAB to recalculate data'),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ])),
        floatingActionButton: FloatingActionButton(
            onPressed: _counterAdd,
            tooltip: 'Increment',
            child: Icon(Icons.add)));
  }
}

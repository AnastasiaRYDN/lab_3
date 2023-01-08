import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter'),
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

  String currentDate = "тут будет дата";

  void _getDate() {
    setState(() {
      currentDate = DateFormat("dd-MM-yyyy HH:mm").format(DateTime.now());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Текущая дата!',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              currentDate,
              style: Theme.of(context).textTheme.headline3,
            ),
            ElevatedButton(onPressed: _getDate, child: Text("Кликни для получения даты"))
          ],
        ),
      ),
    );
  }
}

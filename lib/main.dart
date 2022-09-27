import 'package:flutter/material.dart';
import 'package:stock_app/util/color_schemes.dart';

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
        useMaterial3: true,
        colorScheme: lightColorScheme,
      ),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      themeMode: ThemeMode.system,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  List<BottomNavigationBar> items = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StockApp'),
      ),
      body: Column(
        children: [
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {},
            tooltip: 'Increment',
          ),
          Text('Colortest')
        ],
      ),
    );
  }
}

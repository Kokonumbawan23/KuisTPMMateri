import 'package:flutter/material.dart';
import 'package:kuis_tpm/kite.dart';
import 'package:kuis_tpm/profil.dart';
import 'package:kuis_tpm/triangle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Kuis TPM'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedOption = 0;

  static const List<Widget> pageOption = [
    Profil(),
    Triangle(),
    Kite(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: pageOption[selectedOption],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            selectedOption = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Profile'),
          BottomNavigationBarItem(
              icon: Icon(Icons.change_history), label: 'Triangle'),
          BottomNavigationBarItem(icon: Icon(Icons.window), label: 'Kite'),
        ],
        currentIndex: selectedOption,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
      ),
    );
  }
}

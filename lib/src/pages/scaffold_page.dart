import 'package:flutter/material.dart';

class ScaffoldPage extends StatelessWidget {
  const ScaffoldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
          alignment: Alignment.center,
          color: Colors.cyan.withAlpha(50),
          child: const Text('Home page')),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.abc),
      ),
      drawer: const Drawer(),
      endDrawer: const Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.nat), label: 'Fin'),
        ]),
    );
  }
}

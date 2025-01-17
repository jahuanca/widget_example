import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            fondo(),
            const Center(child: Text('Bienvenido')),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(right: 8, top: 8),
                child: CircleAvatar(
                  child: Icon(Icons.close),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _example2(){
    return Scaffold(
        body: Stack(
          children: [
            fondo(),
            const Center(child: Text('Bienvenido')),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(right: 8, top: 8),
                child: CircleAvatar(
                  child: Icon(Icons.close),
                ),
              ),
            )
          ],
        ),
      );
  }

  Widget fondo() {
    return Stack(
      children: [
        Positioned(
            top: -100,
            left: -25,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 10,
                  color: Colors.blueAccent
                ),
              ),
            )),
        Positioned(
            bottom: -100,
            right: -25,
            child: Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blueAccent,
              ),
            ))
      ],
    );
  }

  Widget _loading() {
    return Stack(
      children: [
        Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blueAccent,
              title: const Text('Loading page'),
              centerTitle: true,
            ),
            floatingActionButton: const FloatingActionButton(
              onPressed: null,
              child: Icon(Icons.add),
            ),
            body: const Center(child: Text('Pestaña de cargando...'))),
        Container(
            color: Colors.black54,
            child: const Center(child: CircularProgressIndicator())),
      ],
    );
  }
}

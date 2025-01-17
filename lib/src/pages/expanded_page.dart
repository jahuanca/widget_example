import 'package:flutter/material.dart';

class ExpandedPage extends StatelessWidget {
  const ExpandedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                  flex: 3,
                  child: Container(
                      alignment: Alignment.center,
                      color: Colors.amber,
                      child: const Text('Imagen'))),
              Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        color: Colors.pinkAccent,
                      )),
                      Expanded(
                          child: Container(
                        color: Colors.cyan,
                      )),
                      Expanded(
                          child: Container(
                        color: Colors.yellow,
                      )),
                    ],
                  )),
              Expanded(
                  flex: 2,
                  child: Container(
                      alignment: Alignment.topCenter,
                      color: Colors.brown,
                      child: const Text('GET STARTED'))),
            ],
          ),
        ),
      ),
    );
  }
}

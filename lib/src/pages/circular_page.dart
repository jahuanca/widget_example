import 'package:flutter/material.dart';

class CircularPage extends StatelessWidget {
  const CircularPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Circular page'),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8k1-Ez8AuFahSYaCoY8ERfa5Cx-iOKvW3WQ&s')),
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: MaterialButton(
                color: Colors.amber,
                onPressed: () => print,
                child: const Text('hola mundoooooo'),
              ),
            ),
            const CircleAvatar(
              radius: 13,
              child: Text('H'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 25,
                width: 25,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blueAccent
                ),
                child: const Center(child: Text('H')),
              ),
            ),
            GestureDetector(
              onTap: () => print('evento'),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12)),
                padding: const EdgeInsets.all(8),
                child: const Text('Get started'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:widget_test/src/pages/circular_page.dart';

class Data {
  String pais;
  String capital;

  Data({
    required this.pais,
    required this.capital,
  });
}

class ListsPage extends StatelessWidget {
  ListsPage({super.key});

  final List<Data> paises = [
    Data(pais: 'Peru', capital: 'Lima'),
    Data(pais: 'Bolivia', capital: 'La paz'),
    Data(pais: 'Colombia', capital: 'Bogota'),
    Data(pais: 'Ecuador', capital: 'Quito'),
    Data(pais: 'Peru', capital: 'Lima'),
    Data(pais: 'Bolivia', capital: 'La paz'),
    Data(pais: 'Colombia', capital: 'Bogota'),
    Data(pais: 'Ecuador', capital: 'Quito'),
    Data(pais: 'Peru', capital: 'Lima'),
    Data(pais: 'Bolivia', capital: 'La paz'),
    Data(pais: 'Colombia', capital: 'Bogota'),
    Data(pais: 'Ecuador', capital: 'Quito'),
    Data(pais: 'Peru', capital: 'Lima'),
    Data(pais: 'Bolivia', capital: 'La paz'),
    Data(pais: 'Colombia', capital: 'Bogota'),
    Data(pais: 'Ecuador', capital: 'Quito'),
  ];

  Widget _itemPais(
      {required String indice, required String pais, required String ciudad}) {
    return ListTile(
      leading: Text(indice),
      trailing: const Icon(Icons.delete),
      title: Text(pais),
      subtitle: Text(ciudad),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        itemCount: paises.length,
        itemBuilder: (context, index) => _itemPais(
            indice: '${index + 1}',
            ciudad: paises[index].capital,
            pais: paises[index].pais),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const CircularPage(),
          ))
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.notification_add,
              color: Colors.white,
            ),
          )
        ],
        centerTitle: true,
        title: const Text(
          'Mi inicio',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

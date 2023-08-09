import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget{
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arequipa Smart-Bus'),
      ),
      drawer: Container(width: 50,),
      body: const Center(
        child: Column(
          children: [
            Text('Bienvenidos!')
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.maps_home_work), label: 'Buscar'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favoritos')
        ],
        onTap: (index) {
          if(index == 1){
            Navigator.pushNamed(context, '/googleMaps');
          }
          if (index == 2) {
            Navigator.pushNamed(context, '/counterFunctions');
          }
        },
      ),
    );
  }

}
import 'package:flutter/material.dart';
import 'package:smart_bus_aqp/presentation/screens/counter_functions_screen.dart';
import 'package:smart_bus_aqp/presentation/screens/google_map_screen.dart';
import 'package:smart_bus_aqp/presentation/screens/main_screen.dart';

import 'config/theme/app_theme.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 0).theme(),
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
        '/counterFunctions': (context) => const CounterFunctionsScreen(),
        '/googleMaps': (context) => const GoogleMapsScreen()
      },
      //home: const MainScreen()
    );
  }

}
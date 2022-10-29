import 'package:app_lotus/src/pages/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'Grafic2.dart';
import 'Grafic1.dart';

class Grafica extends StatelessWidget {
  const Grafica({Key? key}) : super(key: key);
  static const String id = 'PlantillaPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors.body,
      body: Column(
        children: const <Widget>[
          const Text(
            'Resumen de la semana',
            style: TextStyle(
              fontSize: 24,
              color: Color.fromARGB(255, 10, 10, 10),
            ),
          ),
          SizedBox(
            height: 300,
            width: 400,
            child: Grafica1(),
          ),
          const Text(
            'Resumen del mes',
            style: TextStyle(
              fontSize: 24,
              color: Color.fromARGB(255, 10, 10, 10),
            ),
          ),
          SizedBox(
            height: 300,
            width: 400,
            child: Grafica2(),
          ),
        ],
      ),
    );
  }
}

import 'package:app_lotus/src/pages/colors/app_colors.dart';
import 'package:app_lotus/src/pages/preguntas/Pregunta_1_page.dart';
import 'package:flutter/material.dart';
import '../calendario/calendarioP.dart';
import 'NavDrawer.dart';
import 'package:app_lotus/src/pages/graficas/GarfiP.dart';
import 'package:app_lotus/src/pages/actividad/Actividad.dart';

class Menu extends StatefulWidget {
  int selected;
  bool estado = false;
  Menu(
      {Key? key,
      required this.selected,
      required this.estado,
      required this.idSentimiento})
      : super(key: key);
  static const String id = 'Menu';
  final String idSentimiento;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Menu> {
  int selectedScreenIndex = 0;

  final List _screens = [
    {"screen": const Grafica(), "title": "Resumen"},
  ];

  _MyHomePageState();

  void _selectScreen(int index) {
    setState(() {
      selectedScreenIndex = index;
      widget.estado = false;
    });
  }

  void _agregar() {
    _screens.addAll([
      {"screen": CalendarPr(widget.idSentimiento), "title": "Calendario"},
      {"screen": Actividad(widget.idSentimiento), "title": "Actividades"}
    ]);
  }

  @override
  Widget build(BuildContext context) {
    _agregar();
    if (widget.estado) {
      selectedScreenIndex = widget.selected;
      //selectedScreenIndex = 2;
    }

    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        backgroundColor: appColors.appbar,
        title: Text(
          _screens[selectedScreenIndex]["title"],
          style: const TextStyle(
            color: appColors.text,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Activity1Page()));
        },
        //icon: Icon(Icons.access_time),
        child: Icon(Icons.add),
        backgroundColor: appColors.appbar,
        foregroundColor: appColors.text,
      ),
      body: _screens[selectedScreenIndex]["screen"],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedScreenIndex,
        onTap: _selectScreen,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.add_chart_sharp),
            label: 'Resumen',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Calendario',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_activity),
            label: 'Actividades',
          ),
        ],
      ),
    );
  }
}

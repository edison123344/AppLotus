import 'package:app_lotus/src/pages/Informacion/Perfil.dart';
import 'package:app_lotus/src/pages/Informacion/acerca_de.dart';
import 'package:app_lotus/src/pages/colors/app_colors.dart';
import 'package:flutter/material.dart';

import 'Menu.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            child: Text(
              '',
              style: TextStyle(color: appColors.text, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage('assets/Logo.jpeg'))),
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Perfil'),
            onTap: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Perfil()))
            },
          ),
          ListTile(
            leading: Icon(Icons.calendar_month),
            title: Text('Calendario'),
            onTap: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Menu(selected: 1, estado: true, idSentimiento: '1')))
            },
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Resumen'),
            onTap: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Menu(selected: 0, estado: true, idSentimiento: '1')))
            },
          ),
          ListTile(
            leading: Icon(Icons.aod_sharp),
            title: Text('Informacion'),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Acerca()))
            },
          ),
        ],
      ),
    );
  }
}

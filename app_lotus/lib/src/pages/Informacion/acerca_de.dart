// ignore_for_file: import_of_legacy_library_into_null_safe, file_names
import 'package:app_lotus/src/pages/colors/app_colors.dart';
import 'package:app_lotus/src/pages/menu/Menu.dart';
import 'package:flutter/material.dart';

class Acerca extends StatelessWidget {
  const Acerca({Key? key}) : super(key: key);
  static const String id = 'Registration';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors.body,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          MyCustomForm(),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20),
            child: const CircleAvatar(
              backgroundImage: const NetworkImage(
                  'https://i.pinimg.com/550x/95/7c/ff/957cff9f7593b2f1e9dd0b520207cc57.jpg'),
              radius: 70,
            ),
          ),
          Text(
            'Prototipo creado por: ',
            style: TextStyle(
              fontSize: 20,
              color: appColors.text,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Edison huñaizaca y los estudiantes de la carrera de psicologia',
            style: TextStyle(
              fontSize: 15,
              color: appColors.text,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextButton(
                  child: Text('Regresar'),
                  style: TextButton.styleFrom(
                    primary: appColors.text,
                    backgroundColor: appColors.botton,
                    minimumSize: const Size(160, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Menu(
                                selected: 1,
                                estado: true,
                                idSentimiento: '1')));
                  },
                ),
              ])
        ],
      ),
    );
  }
}

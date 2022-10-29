import 'package:flutter/material.dart';
import 'package:app_lotus/src/pages/error/error_page.dart';
import 'package:app_lotus/src/pages/inicio/Registration_page.dart';
import 'package:app_lotus/src/pages/inicio/Warning_page.dart';
import 'package:app_lotus/src/pages/inicio/Question_1_page.dart';
import 'package:app_lotus/src/pages/inicio/Recomendation_page.dart';
import 'package:app_lotus/src/pages/Preguntas/Pregunta_1_page.dart';
import 'package:app_lotus/src/pages/Preguntas/Pregunta_2_page.dart';
import 'package:app_lotus/src/pages/menu/Menu.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart' show DateFormat;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('es', null);
    return MaterialApp(
      initialRoute: Registro.id,
      routes: <String, WidgetBuilder>{
        Registro.id: (context) => Registro(),
        WarningPage.id: (context) => const WarningPage(),
        RecommendationPage.id: (context) => const RecommendationPage(),
        Sentimiento.id: (context) => const Sentimiento(),
        Activity1Page.id: (context) => Activity1Page(),
        Activity2Page.id: (context) => Activity2Page(''),
        Menu.id: (context) =>
            Menu(selected: 0, estado: false, idSentimiento: ''),
      },
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (builder) => const ErrorPage());
      },
    );
  }
}

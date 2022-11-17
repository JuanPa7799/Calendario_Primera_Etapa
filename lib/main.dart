import 'package:calendar_app_avanzada/page/event_editing_page.dart';
import 'package:calendar_app_avanzada/provider/event_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'widget/calendar_widget.dart';

Future<void> main() async {
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String title =
      'Agenda'; //* Titulo de nuestra pagina en general variable "global"

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ((context) => EventProvider()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        themeMode: ThemeMode.dark,
        darkTheme: ThemeData.dark().copyWith(
          //* Color del fondo
          scaffoldBackgroundColor: Colors.black,
          backgroundColor: Colors.blue,
        ),
        home: const MyHomePage(), //* Manda llamar un StatefulWidget
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });
  @override
  State<MyHomePage> createState() =>
      _MyHomePageState(); //* Retorna nuestra clase _MyHomePageState
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(MyApp.title),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body:
          CalendarWidget(), //*Se manda llamar la funcion que creamos en el archivo de calendar_widget.dart

      //*Se agrego  un floatingActionButton para agregar una cita y que mande llamar un metodo que al terminar se cierre automaticamente.
      floatingActionButton: FloatingActionButton(
        //* Se declara su hijo y las proíedades del mismo, osea el icono y su tamaño y demas
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 30.0,
        ),
        //* Color de fondo del boton
        backgroundColor: Colors.red,
        //* Funcion a llamar al presionarlo en este caso abre una nueva ventana la cual tiene a EventEditingPage la cual se cierra al aditarlo y terminar la accion.
        onPressed: (() => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => EventEditingPage()),
            )),
      ),
    )
        // This trailing comma makes auto-formatting nicer for build methods.
        ;
  }
}

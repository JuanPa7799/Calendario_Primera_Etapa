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
  static const String title = 'Agenda';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ((context) => EventProvider()),
      child: MaterialApp(
        title: title,
        themeMode: ThemeMode.dark,
        darkTheme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Colors.black,
          backgroundColor: Colors.red,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });
  @override
  State<MyHomePage> createState() => _MyHomePageState();
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
      body: CalendarWidget(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: Colors.red,
        onPressed: (() => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => EventEditingPage()),
            )),
      ),
    )
        // This trailing comma makes auto-formatting nicer for build methods.
        ;
  }
}

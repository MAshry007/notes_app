import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/views/notes_view.dart';
import 'package:notes_app/widgets/constants.dart';

void main() async {
  runApp(NotesApp());

  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: NotesView.id,
      routes: {NotesView.id: (context) => NotesView()},
      theme: ThemeData(
        useMaterial3: false,
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
    );
  }
}

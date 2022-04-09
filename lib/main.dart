import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:student/screens/students_screen.dart';

import 'models/students_list_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => StudentsListModel(students: []),
      builder: (_, __) => MaterialApp(
        home: StudentsScreen(),
        theme: ThemeData.dark(),
      ),
    );
  }
}

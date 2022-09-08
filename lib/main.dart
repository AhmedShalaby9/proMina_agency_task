import 'package:flutter/material.dart';
import 'package:promina_agency/comman/constants/app_colors.dart';

import 'features/tasks/screens/create_new_task_screen.dart';
import 'features/tasks/screens/my_task_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'proMina Agency',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme:  AppBarTheme(
          iconTheme:  IconThemeData(
            color:Colors.black
          )
        )
      ),
      home: const MyTaskScreen()
    );
  }
}



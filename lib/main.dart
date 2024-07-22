import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_master_app/splash_screen.dart';
import 'models/task_data.dart';
void main( ) {
  runApp( MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: SplashScreen(),
        title: 'Task Master',
        theme: ThemeData(primarySwatch: Colors.blue),
      ),
    );
  }
}

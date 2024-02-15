import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hw_6/component/get_it.dart';

import 'screen/lower_part.dart';
import 'screen/upper.dart';

GetIt locator = GetIt.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setup();

  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Column(
          children: [MyWidget(), ContactList()],
        )),
      ),
    );
  }
}

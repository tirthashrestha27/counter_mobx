import 'package:flutter/material.dart';

import 'package:mobxproject/home_page.dart';
import 'package:provider/provider.dart';

import 'counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) => Counter(),
        )
      ],
      child: MaterialApp(
        title: 'Mobx Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const NewHome(title: 'Classic Counter'),
      ),
    );
  }
}

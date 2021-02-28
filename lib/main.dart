import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:show_random_cats/src/services/observer.dart';

import 'src/components/show_image/show_image_page.dart';

void main() {
  Bloc.observer = Observer();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Show random cats',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ShowImagePage(),
    );
  }
}

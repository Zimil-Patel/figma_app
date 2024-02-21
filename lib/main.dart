import 'package:figma_app/DrawerTasks/drawer_two.dart';
import 'package:flutter/material.dart';

import 'DrawerTasks/drawer_one.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      initialRoute: '/drawer2',

      routes: {
        '/drawer1' : (context) => const DrawerOne(),
        '/drawer2' : (context) => const DrawerTwo()
      },
    )
  );
}

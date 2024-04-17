import 'package:flutter/material.dart';
import 'package:task_hyd/features/home/view/home_page.dart';

class BhasausaTask extends StatelessWidget {
  const BhasausaTask({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}

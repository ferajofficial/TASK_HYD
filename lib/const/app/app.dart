import 'package:flutter/material.dart';
import 'package:task_hyd/const/router/router.dart';

class BhasausaTask extends StatelessWidget {
  final AppRouter _appRouter = AppRouter();

  BhasausaTask({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      routerConfig: _appRouter.config(),
    );
  }
}

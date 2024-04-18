import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:task_hyd/const/router/router.gr.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SplashView();
  }
}

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    // Navigate to the next screen after 5 seconds
    Timer(
      const Duration(seconds: 3),
      () {
        context.router.replace(const NavBarRoute());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff6C63FF),
      body: Center(
          child: Lottie.network(
              "https://lottie.host/b75eb557-da37-4d15-9306-f9d425b16988/Te7edDzfq6.json")),
    );
  }
}

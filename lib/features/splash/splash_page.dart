import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:task_hyd/const/app-text/app_text.dart';
import 'package:task_hyd/const/colors/app_colors.dart';

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
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.kSecondaryBgColor,
      body: Center(
        child: AppText(
          text: 'Bhasausa.Tech 🚀',
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: AppColors.kBlack,
        ),
      ),
    );
  }
}

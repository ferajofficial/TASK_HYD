import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:task_hyd/const/app-text/app_text.dart';
import 'package:task_hyd/const/colors/app_colors.dart';

@RoutePage()
class ShortsPage extends StatelessWidget {
  const ShortsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ShortsView();
  }
}

class ShortsView extends StatefulWidget {
  const ShortsView({super.key});

  @override
  State<ShortsView> createState() => _ShortsViewState();
}

class _ShortsViewState extends State<ShortsView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.kSecondaryBgColor,
      body: Center(
        child: AppText(text: 'Shorts Page 🚀'),
      ),
    );
  }
}

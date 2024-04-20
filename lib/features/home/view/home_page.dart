import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:task_hyd/const/app-text/app_text.dart';
import 'package:task_hyd/const/colors/app_colors.dart';
import 'package:task_hyd/features/home/widgets/home_body.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeView();
  }
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const AppText(
              text: 'Click to fetch datas from the  API 🚀 ',
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: AppColors.kBlack),
          centerTitle: true,
          elevation: 0,
        ),
        backgroundColor: AppColors.kSecondaryBgColor,
        body: const HomeBody());
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:task_hyd/const/app-text/app_text.dart';
import 'package:task_hyd/const/colors/app_colors.dart';
import 'package:task_hyd/features/shorts/widgets/shorts_actions.dart';
import 'package:task_hyd/features/shorts/widgets/shorts_player.dart';

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
    return Scaffold(
      backgroundColor: AppColors.kSecondaryBgColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const AppText(
          text: 'Shorts',
          color: AppColors.kwhite,
          fontWeight: FontWeight.w500,
          fontSize: 25,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: AppColors.kwhite),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert, color: AppColors.kwhite),
            onPressed: () {},
          ),
        ],
      ),
      body: const Stack(
        children: [
          ShortsPlayer(),
          Positioned(right: 20, bottom: 20, child: ShortsActions()),
        ],
      ),
    );
  }
}

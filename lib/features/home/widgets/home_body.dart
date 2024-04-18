import 'package:flutter/material.dart';
import 'package:task_hyd/const/app-text/app_text.dart';
import 'package:task_hyd/const/colors/app_colors.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppText(
              text: 'Tap on the shorts button below to\nwatch latest shorts 🎥',
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: AppColors.kBlack,
              textAlign: TextAlign.center,
              height: 1.5,
              maxlines: 2),
        ],
      ).p12(),
    );
  }
}

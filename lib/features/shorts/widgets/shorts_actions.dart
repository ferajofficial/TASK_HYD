import 'package:flutter/material.dart';
import 'package:task_hyd/const/colors/app_colors.dart';
import 'package:task_hyd/features/shorts/widgets/actions.dart';
import 'package:velocity_x/velocity_x.dart';

class ShortsActions extends StatelessWidget {
  const ShortsActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        UserActions(
          iconLabel: '1.2k',
          icon: Icons.thumb_up,
          iconColor: AppColors.kwhite,
          iconSize: 30,

        ),
        8.heightBox,
        UserActions(
          iconLabel: 'Dislike',
          icon: Icons.thumb_down,
          iconColor: AppColors.kwhite,
          iconSize: 30,

        ),
        8.heightBox,
        UserActions(
          iconLabel: '200',
          icon: Icons.comment,
          iconColor: AppColors.kwhite,
          iconSize: 30,

        ),
        8.heightBox,
        UserActions(
          iconLabel: 'Share',
          icon: Icons.share,
          iconColor: AppColors.kwhite,
          iconSize: 30,

        ),
      ],
    );
  }
}

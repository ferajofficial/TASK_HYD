import 'package:flutter/material.dart';
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
        const UserActions(
          iconLabel: '1.2k',
          icon: Icons.thumb_up,
          iconSize: 30,
        ),
        8.heightBox,
        const UserActions(
          iconLabel: 'Dislike',
          icon: Icons.thumb_down,
          iconSize: 30,
        ),
        8.heightBox,
        const UserActions(
          iconLabel: '200',
          icon: Icons.comment,
          iconSize: 30,
        ),
        8.heightBox,
        const UserActions(
          iconLabel: 'Share',
          icon: Icons.share,
          iconSize: 30,
        ),
      ],
    );
  }
}

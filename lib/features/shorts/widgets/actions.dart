import 'package:flutter/material.dart';
import 'package:task_hyd/const/app-text/app_text.dart';

class UserActions extends StatelessWidget {
  final String iconLabel;
  final IconData icon;
  final Color iconColor;
  final int iconSize;

  const UserActions({
    super.key,
    required this.iconLabel,
    required this.icon,
    required this.iconColor,
    required this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: iconColor,
          size: iconSize.toDouble(),
        ),
        AppText(text: iconLabel, color: Colors.white),
      ],
    );
  }
}

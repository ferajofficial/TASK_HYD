import 'package:flutter/material.dart';
import 'package:task_hyd/const/app-text/app_text.dart';
import 'package:task_hyd/const/colors/app_colors.dart';

class UserActions extends StatefulWidget {
  final String iconLabel;
  final IconData icon;
  final int iconSize;

  const UserActions({
    super.key,
    required this.iconLabel,
    required this.icon,
    required this.iconSize,
  });

  @override
  _UserActionsState createState() => _UserActionsState();
}

class _UserActionsState extends State<UserActions> {
  Color _iconColor = AppColors.kwhite; // Default color

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              // Change the color to the new color when tapped
              _iconColor = _iconColor == AppColors.kwhite
                  ? AppColors.kPrimaryBgColor
                  : AppColors.kwhite;
            });
          },
          child: Icon(
            widget.icon,
            color: _iconColor,
            size: widget.iconSize.toDouble(),
          ),
        ),
        AppText(
          text: widget.iconLabel,
          color: _iconColor,
        ),
      ],
    );
  }
}

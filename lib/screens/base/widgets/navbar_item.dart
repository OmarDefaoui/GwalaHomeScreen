import 'package:flutter/material.dart';

import '../../../core/managers/color_manager.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool isActive;
  final void Function() onTap;
  const NavBarItem({
    super.key,
    required this.title,
    required this.icon,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(
                bottom: isActive ? 6 : 0,
              ),
              child: Icon(
                icon,
                color: isActive
                    ? ColorManager.primaryColor
                    : ColorManager.deepGreyColor,
                size: isActive ? 80 : 30,
              ),
            ),
            Text(
              title,
              style: TextStyle(
                color: isActive
                    ? ColorManager.primaryColor
                    : ColorManager.deepGreyColor,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

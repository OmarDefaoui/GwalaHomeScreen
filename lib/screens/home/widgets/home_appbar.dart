import 'package:flutter/material.dart';
import 'package:gwala_interview/core/managers/text_manager.dart';

import '../../../core/managers/color_manager.dart';

class HomeAppBar extends StatelessWidget {
  final String name;
  const HomeAppBar({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text.rich(
            TextSpan(
              text: '${TextManager.welcome} ',
              style: TextStyle(
                color: ColorManager.whiteColor,
                fontSize: 20,
              ),
              children: [
                TextSpan(
                  text: name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Badge(
            backgroundColor: ColorManager.redColor,
            textColor: ColorManager.whiteColor,
            label: const Text("2"),
            offset: const Offset(1, -1),
            child: Container(
              width: 46,
              height: 46,
              decoration: BoxDecoration(
                color: ColorManager.whiteColor,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  color: ColorManager.secondaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

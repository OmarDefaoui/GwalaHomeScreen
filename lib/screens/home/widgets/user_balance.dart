import 'package:flutter/material.dart';
import 'package:gwala_interview/core/managers/text_manager.dart';
import 'package:gwala_interview/models/balance_model.dart';
import 'package:intl/intl.dart';

import '../../../core/managers/color_manager.dart';

class UserBalance extends StatelessWidget {
  final BalanceModel balance;
  const UserBalance({
    super.key,
    required this.balance,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .6,
      height: MediaQuery.of(context).size.width * .6,
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: ColorManager.secondaryColor,
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white,
          width: 3,
        ),
      ),
      child: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: ColorManager.whiteColor,
          shape: BoxShape.circle,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              TextManager.nextPayDate,
              style: TextStyle(
                color: ColorManager.blackColor,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.date_range_outlined,
                  color: ColorManager.secondaryColor,
                ),
                const SizedBox(width: 12),
                Text(
                  DateFormat("dd MMMM").format(balance.nextPayDate),
                  style: TextStyle(
                    color: ColorManager.secondaryColor,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              "${balance.balance.toStringAsFixed(2)} ${TextManager.currancy}",
              style: TextStyle(
                color: ColorManager.secondaryColor,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              TextManager.availableBalance,
              style: TextStyle(
                color: ColorManager.secondaryColor,
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

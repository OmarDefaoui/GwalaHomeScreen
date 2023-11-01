import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gwala_interview/models/transaction_model.dart';
import 'package:intl/intl.dart';

import '../../../core/managers/color_manager.dart';

class TransactionItem extends StatelessWidget {
  final TransactionModel transaction;
  const TransactionItem({
    super.key,
    required this.transaction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        color: ColorManager.greyColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Transform.rotate(
                angle: 180,
                child: Icon(
                  Icons.arrow_circle_left_outlined,
                  color: ColorManager.greenColor,
                ),
              ),
              const SizedBox(width: 12),
              Text(
                transaction.amount.toStringAsFixed(2),
                style: TextStyle(
                  color: ColorManager.blackColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                transaction.type.name.capitalize!,
                textAlign: TextAlign.end,
                style: TextStyle(
                  color: ColorManager.blackColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              Text(
                DateFormat("MMMM dd, yyyy").format(transaction.date),
                textAlign: TextAlign.end,
                style: TextStyle(
                  color: ColorManager.blackColor,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

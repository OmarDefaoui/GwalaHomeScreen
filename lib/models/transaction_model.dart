import 'package:gwala_interview/enums/transaction_type.dart';

class TransactionModel {
  final double amount;
  final TransactionType type;
  final DateTime date;

  TransactionModel({
    required this.amount,
    required this.type,
    required this.date,
  });
}

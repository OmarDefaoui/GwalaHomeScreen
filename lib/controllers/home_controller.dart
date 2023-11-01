import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:gwala_interview/enums/transaction_type.dart';
import 'package:gwala_interview/models/balance_model.dart';
import 'package:gwala_interview/models/transaction_model.dart';
import 'package:gwala_interview/models/user_model.dart';

class HomeController extends GetxController {
  BalanceModel? balance;
  List<TransactionModel> transactionsList = [];
  UserModel? user;

  void getUserDetails() {
    user = UserModel(
      name: "Ama",
    );
    update();
  }

  void getUserBalance() {
    balance = BalanceModel(
      nextPayDate: DateTime(2023, 7, 15),
      balance: 3747,
    );
    update();
  }

  void loadTransactions() {
    if (transactionsList.isEmpty) {
      transactionsList.add(
        TransactionModel(
          amount: 200,
          type: TransactionType.sent,
          date: DateTime(2023, 7, 5),
        ),
      );
      transactionsList.add(
        TransactionModel(
          amount: 100,
          type: TransactionType.sent,
          date: DateTime(2023, 7, 4),
        ),
      );
      update();
    }
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:gwala_interview/controllers/home_controller.dart';
import 'package:gwala_interview/core/managers/color_manager.dart';
import 'package:gwala_interview/core/managers/text_manager.dart';
import 'package:gwala_interview/models/transaction_model.dart';

import 'widgets/home_appbar.dart';
import 'widgets/user_balance.dart';
import 'widgets/transaction_item.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.find<HomeController>();
    // we are calling these func here because
    // they give the data directly, we don't
    // have to wait for anything
    homeController.getUserDetails();
    homeController.getUserBalance();
    homeController.loadTransactions();

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.white,
        statusBarBrightness: Brightness.dark,
      ),
    );

    return Scaffold(
      backgroundColor: ColorManager.primaryColor,
      body: SafeArea(
        child: GetBuilder<HomeController>(builder: (controller) {
          return Column(
            children: [
              HomeAppBar(name: controller.user?.name ?? ""),
              UserBalance(balance: controller.balance!),
              Flexible(
                flex: 1,
                child: Container(
                  color: ColorManager.whiteColor,
                  margin: const EdgeInsets.only(top: 16),
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Text(
                          TextManager.latestTransactions,
                          style: TextStyle(
                            color: ColorManager.blackColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: 2,
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          itemBuilder: (context, index) {
                            TransactionModel transaction =
                                controller.transactionsList[index];

                            return TransactionItem(
                              transaction: transaction,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}

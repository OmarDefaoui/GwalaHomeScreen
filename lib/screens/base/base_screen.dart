import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gwala_interview/controllers/base_controller.dart';
import 'package:gwala_interview/core/managers/color_manager.dart';
import 'package:gwala_interview/core/managers/text_manager.dart';
import 'package:gwala_interview/screens/base/widgets/navbar_item.dart';
import 'package:gwala_interview/screens/home/home_screen.dart';

class BaseScreen extends StatelessWidget {
  static String routeName = "/base";
  const BaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<BaseController>();

    List<Widget> screens = [
      Container(),
      const HomeScreen(),
      Container(),
    ];

    return Scaffold(
      body: GetBuilder<BaseController>(
        builder: (controller) {
          return screens[controller.navIndexSelected];
        },
      ),
      bottomNavigationBar: GetBuilder<BaseController>(
        builder: (controller) {
          return Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: ColorManager.greyColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
              Container(
                height: 150,
                color: Colors.transparent,
                alignment: Alignment.bottomCenter,
                child: SafeArea(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      NavBarItem(
                        title: TextManager.timeTracker,
                        icon: Icons.av_timer_sharp,
                        isActive: controller.navIndexSelected == 0,
                        onTap: () {
                          if (controller.navIndexSelected != 0) {
                            controller.navIndexSelected = 0;
                          }
                        },
                      ),
                      NavBarItem(
                        title: TextManager.getMoney,
                        icon: Icons.ac_unit_rounded,
                        isActive: controller.navIndexSelected == 1,
                        onTap: () {
                          if (controller.navIndexSelected != 1) {
                            controller.navIndexSelected = 1;
                          }
                        },
                      ),
                      NavBarItem(
                        title: TextManager.profile,
                        icon: Icons.person_2_rounded,
                        isActive: controller.navIndexSelected == 2,
                        onTap: () {
                          if (controller.navIndexSelected != 2) {
                            controller.navIndexSelected = 2;
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

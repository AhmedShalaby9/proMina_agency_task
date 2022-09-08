import 'package:flutter/material.dart';
import 'package:promina_agency/comman/constants/app_colors.dart';
import 'package:promina_agency/comman/constants/app_font_sizes.dart';
import 'package:promina_agency/features/tasks/widgets/tasks_list.dart';

import '../../../comman/widgets/days_list.dart';
import '../widgets/add_button.dart';

class MyTaskScreen extends StatefulWidget {
  const MyTaskScreen({Key? key}) : super(key: key);

  @override
  State<MyTaskScreen> createState() => _MyTaskScreenState();
}

class _MyTaskScreenState extends State<MyTaskScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  color: AppColors.primary_color,
                ),
                Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                      child: Column(
                        children: [
                          Spacer(
                            flex: 3,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "My Tasks",
                                style: TextStyle(
                                    color: AppColors.black_color,
                                    fontSize: AppFontSizes.SIZE26,
                                    fontWeight: FontWeight.bold),
                              ),
                              AddTaskButton()
                            ],
                          ),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Today",
                                style: TextStyle(
                                    color: AppColors.black_color,
                                    fontSize: AppFontSizes.SIZE20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Monday,1 june",
                                style: TextStyle(
                                    color: AppColors.grey_color1,
                                    fontSize: AppFontSizes.SIZE15,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          Spacer(
                            flex: 3,
                          ),
                          DaysList(),
                          Spacer(
                            flex: 3,
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: AppColors.white_color,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(60)))),
              ],
            ),
          ),
          Container(
            height: height * 0.6,
            child: Stack(
              children: [
                Container(color: AppColors.white_color),
                Container(
                  width: double.infinity ,
                  height: double.infinity ,
                  child: TasksList() ,
                    decoration: BoxDecoration(
                        color: AppColors.primary_color,
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(60)))),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

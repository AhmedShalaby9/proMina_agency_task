import 'package:flutter/material.dart';
import 'package:promina_agency/comman/constants/app_colors.dart';
import 'package:promina_agency/comman/constants/app_font_sizes.dart';
import 'package:promina_agency/comman/model/task_model.dart';

class TaskItem extends StatelessWidget {
  final TaskModel taskModel;
  TaskItem(this.taskModel);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 180,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.white_color,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: width * 0.3,
                    child: Icon(
                      Icons.call_split_rounded,
                      size: width * 0.25,
                      color: AppColors.primary_color.withOpacity(0.4),
                    ),
                  ),
                  Flexible(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        Spacer(),
                        Text(
                          taskModel.task_name,
                          style: TextStyle(
                              color: AppColors.black_color,
                              fontSize: AppFontSizes.SIZE19,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          taskModel.task_descreption,
                          style: TextStyle(
                              color: AppColors.primary_color.withOpacity(0.3),
                              fontSize: AppFontSizes.SIZE15,
                              fontWeight: FontWeight.w600),
                        ),
                        Spacer(),
                      ])),
                ],
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional.bottomEnd,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 14, left: 6),
              child: Container(
                  height: 40,
                  width: width * 0.3,
                  decoration: BoxDecoration(
                      color: AppColors.black_color,
                      borderRadius: BorderRadiusDirectional.only(
                        bottomEnd: Radius.circular(10),
                        topStart: Radius.circular(10),
                      )),
                  child: Center(
                    child: Text(
                      taskModel.task_date,
                      style: TextStyle(
                        color: AppColors.white_color,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}

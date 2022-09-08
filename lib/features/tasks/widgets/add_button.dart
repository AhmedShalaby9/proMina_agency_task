import 'package:flutter/material.dart';
import 'package:promina_agency/features/tasks/screens/create_new_task_screen.dart';

import '../../../comman/constants/app_colors.dart';
class AddTaskButton extends StatelessWidget {
  const AddTaskButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
        Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context ){return
          CreateNewTaskScreen();
          })
        );
      } ,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: AppColors.primary_color),
        height: 44,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 10),
          child: Icon(
            Icons.add,
            color: AppColors.white_color,
          ),
        ),
      ),
    );
  }
}

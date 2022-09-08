import 'package:flutter/material.dart';
import 'package:promina_agency/features/tasks/helper/task_helper.dart';
import 'package:promina_agency/features/tasks/widgets/task_item.dart';

TaskHelper taskHelper = TaskHelper();

class TasksList extends StatelessWidget {
  const TasksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 40,
      ),
      child: ListView.separated(
          itemBuilder: (BuildContext context, index) {
            return TaskItem(taskHelper.tasks_list[index]);
          },
          separatorBuilder: (BuildContext context, index) {
            return SizedBox(
              height: 10,
            );
          },
          itemCount: taskHelper.tasks_list.length),
    );
  }
}

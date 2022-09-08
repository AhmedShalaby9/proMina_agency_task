import 'package:flutter/material.dart';
import 'package:promina_agency/comman/constants/app_colors.dart';
import 'package:promina_agency/comman/constants/app_font_sizes.dart';
import 'package:promina_agency/comman/helper/app_helper.dart';
import 'package:promina_agency/comman/widgets/rounded_button.dart';
import 'package:promina_agency/features/category/helper/category_helper.dart';

import '../../category/widgets/categories_list.dart';
import '../../category/widgets/category_item.dart';

class CreateNewTaskScreen extends StatefulWidget {
  const CreateNewTaskScreen({Key? key}) : super(key: key);

  @override
  State<CreateNewTaskScreen> createState() => _CreateNewTaskScreenState();
}

class _CreateNewTaskScreenState extends State<CreateNewTaskScreen> {
  TextEditingController _taskNameController = TextEditingController();
  TextEditingController _taskDescriptionController = TextEditingController();
  TextEditingController _taskDateController = TextEditingController();
  TextEditingController _startTimeController = TextEditingController();
  TextEditingController _EndTimeController = TextEditingController();

  @override
  void initState() {
    _taskNameController.text = "Team Meeting";
    _taskDescriptionController.text = "this is task desc test for testing";
    _taskDateController.text = AppHelper().getFormattedDate();
    _startTimeController.text = AppHelper().getFormattedTime();
    _EndTimeController.text = AppHelper().getFormattedTime();
    super.initState();
  }

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white_color,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.menu,
              color: AppColors.primary_color,
            ),
          )
        ],
      ),
      backgroundColor: AppColors.white_color,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Expanded(
                child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Create New Task",
                      style: TextStyle(
                          color: AppColors.black_color,
                          fontSize: AppFontSizes.SIZE19,
                          fontWeight: FontWeight.bold),
                    ),
                    const Icon(
                      Icons.task_outlined,
                      size: 30,
                      color: AppColors.primary_color,
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Task Name",
                  style: TextStyle(
                      color: AppColors.primary_color,
                      fontSize: AppFontSizes.SIZE16,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: _taskNameController,
                  decoration: const InputDecoration(),
                  style: TextStyle(
                      color: AppColors.black_color,
                      fontWeight: FontWeight.bold,
                      fontSize: AppFontSizes.SIZE20),
                ),
                const SizedBox(
                  height: 33,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Select Category",
                      style: TextStyle(
                          color: AppColors.primary_color,
                          fontSize: AppFontSizes.SIZE18,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                          color: AppColors.grey_color1,
                          fontSize: AppFontSizes.SIZE16,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const CategoriesList(),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Date",
                  style: TextStyle(color: AppColors.primary_color),
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        style: TextStyle(
                            color: AppColors.black_color,
                            fontSize: AppFontSizes.SIZE17,
                            fontWeight: FontWeight.w600),
                        enabled: false,
                        controller: _taskDateController,
                      ),
                      flex: 2,
                    ),
                    SizedBox(
                      width: 0.25 * width,
                    ),
                    InkWell(
                      onTap: () async {
                        DateTime? dateSelected = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now()
                              .subtract(const Duration(days: 100)),
                          lastDate:
                              DateTime.now().add(const Duration(days: 900)),
                        );
                        if (dateSelected != null) {
                          _taskDateController.text = AppHelper()
                              .getFormattedDate(dateTime: dateSelected);
                        }
                        setState(() {});
                      },
                      child: const CircleAvatar(
                        radius: 22,
                        backgroundColor: AppColors.primary_color,
                        child: Icon(
                          Icons.calendar_month,
                          color: AppColors.white_color,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          const Text(
                            "Start Date",
                            style: TextStyle(color: AppColors.primary_color),
                          ),
                          InkWell(
                            onTap: () async {
                              TimeOfDay? timeSelected = await showTimePicker(
                                context: context,
                                initialTime: TimeOfDay.now(),
                              );
                              if (timeSelected != null) {
                                _startTimeController.text =
                                    timeSelected.format(context);
                              }
                              setState(() {});
                            },
                            child: TextFormField(
                              style: TextStyle(
                                  color: AppColors.black_color,
                                  fontSize: AppFontSizes.SIZE17,
                                  fontWeight: FontWeight.w600),
                              enabled: false,
                              controller: _startTimeController,
                              decoration: const InputDecoration(
                                  suffixIcon: Icon(
                                Icons.arrow_downward,
                                color: AppColors.primary_color,
                              )),
                            ),
                          ),
                        ],
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.17,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          const Text(
                            "End Date",
                            style: TextStyle(color: AppColors.primary_color),
                          ),
                          InkWell(
                            onTap: () async {
                              TimeOfDay? timeSelected = await showTimePicker(
                                context: context,
                                initialTime: TimeOfDay.now(),
                              );
                              if (timeSelected != null) {
                                _EndTimeController.text =
                                    timeSelected.format(context);
                              }
                              setState(() {});
                            },
                            child: TextFormField(
                              style: TextStyle(
                                  color: AppColors.black_color,
                                  fontSize: AppFontSizes.SIZE17,
                                  fontWeight: FontWeight.w600),
                              enabled: false,
                              controller: _EndTimeController,
                              decoration: const InputDecoration(
                                  suffixIcon: Icon(
                                Icons.arrow_downward,
                                color: AppColors.primary_color,
                              )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Description",
                  style: TextStyle(
                      color: AppColors.primary_color,
                      fontSize: AppFontSizes.SIZE18,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: _taskDescriptionController,
                  decoration: const InputDecoration(),
                  style: TextStyle(
                      color: AppColors.black_color,
                      fontWeight: FontWeight.w600,
                      fontSize: AppFontSizes.SIZE17),
                ),
              ],
            )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: RoundedButton(onpressed: () {}, title: "Create Task"),
            )
          ],
        ),
      ),
    );
  }
}

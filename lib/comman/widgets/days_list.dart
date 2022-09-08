import 'package:flutter/material.dart';
import 'package:promina_agency/comman/constants/app_colors.dart';

class DaysList extends StatefulWidget {
  const DaysList({Key? key}) : super(key: key);

  @override
  State<DaysList> createState() => _DaysListState();
}

class _DaysListState extends State<DaysList> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView.separated(
          itemBuilder: (BuildContext context, index) {
            return InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.primary_color),
                    borderRadius: BorderRadius.circular(10),
                    color: _selectedIndex == index
                        ? AppColors.primary_color
                        : AppColors.white_color),
                height: 55,
                width: 50,
                child: Center(child: Text((index + 1).toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold ,
                  color: _selectedIndex == index ?
                  AppColors.white_color : AppColors.primary_color
                ) ,
                ),
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, index) {
            return SizedBox(
              width: 8,
            );
          },
          scrollDirection: Axis.horizontal,
          itemCount: 30),
    );
  }
}

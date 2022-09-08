import 'package:flutter/material.dart';
import 'package:promina_agency/comman/constants/app_colors.dart';
import 'package:promina_agency/comman/model/category_model.dart';

class CategoryItem extends StatelessWidget {
  final CategoryModel categoryModel;
  final bool selected;
  CategoryItem(this.categoryModel, this.selected);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: selected ? AppColors.white_color  :  AppColors.primary_color
        ) ,
          borderRadius: BorderRadius.circular(10),
          color: selected ? AppColors.primary_color : AppColors.white_color),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Center(
            child: Text(
          categoryModel.category_name,
          style: TextStyle(
              color:
                  selected ? AppColors.white_color : AppColors.primary_color),
        )),
      ),
    );
  }
}

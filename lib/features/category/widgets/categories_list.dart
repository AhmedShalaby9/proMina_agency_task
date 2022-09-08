import 'package:flutter/material.dart';

import '../helper/category_helper.dart';
import 'category_item.dart';
CategoryHelper _categoryHelper = CategoryHelper();

class CategoriesList extends StatefulWidget {
  const CategoriesList({Key? key}) : super(key: key);

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 40,
      child: ListView.separated(
          separatorBuilder: (BuildContext context, index) {
            return SizedBox(
              width: 10,
            );
          },
          scrollDirection: Axis.horizontal,
          itemCount: _categoryHelper.categoriesList.length,
          itemBuilder: (BuildContext context, index) {
            return InkWell(
              onTap: (){
                setState(() {
                  _selectedIndex = index;
                });
              } ,
              child: CategoryItem(
                  _categoryHelper.categoriesList[index],
                  _selectedIndex == index ? true : false),
            );
          }),
    );
  }
}

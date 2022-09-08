 import 'package:flutter/material.dart';

import 'app_colors.dart';
abstract class AppStyles  {
  static ButtonStyle roundedButtonStyle =  ElevatedButton.styleFrom(
    primary: AppColors.primary_color,
    elevation: 0,

    shape: RoundedRectangleBorder(

      borderRadius: BorderRadius.all(Radius.circular(13)),

    ),
  );




}


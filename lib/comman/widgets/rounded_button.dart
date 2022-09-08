 import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_font_sizes.dart';
import '../constants/app_styles.dart';

class RoundedButton extends StatefulWidget {
  final VoidCallback onpressed;
  final String title;
  final Color? color;
  RoundedButton({required this.onpressed, required this.title, this.color});
  @override
  _RoundedButtonState createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55 ,
      child: ElevatedButton(

          style: AppStyles.roundedButtonStyle.copyWith(
              backgroundColor: MaterialStateProperty.all(
                  widget.color == null ? AppColors.primary_color : widget.color)),
          onPressed: widget.onpressed,
          child: Center(
            child: Text(
              widget.title,
              style: TextStyle(
                  color: AppColors.white_color,
                  fontSize: AppFontSizes.SIZE18,
                  fontWeight: FontWeight.w600
              ),
            ),
          )),
    );
  }
}

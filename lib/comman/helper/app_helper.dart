import 'package:intl/intl.dart';

class AppHelper{
  String getFormattedDate({DateTime? dateTime}) {
    String date =
    dateTime != null ? dateTime.toString() : DateTime.now().toString();
    var inputFormat = DateFormat('yyyy-MM-dd HH:mm');
    var inputDate = inputFormat.parse(date);
    var outputFormat = DateFormat('dd/MM/yyyy');
    return outputFormat.format(inputDate);
  }
  String getFormattedTime({DateTime? dateTime}) {
    DateTime date =  dateTime ??   DateTime.now();
    String formattedDate = DateFormat('HH:mm').format(date);
     return
      formattedDate;
  }
}
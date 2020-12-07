


import 'package:intl/intl.dart';

class TimeConvert{

  DateTime convertStringToDateTime(String date){
    final format = DateFormat("yyyy-MM-dd");
    DateTime newDate = format.parse(date);
    return newDate;
  }

  String convertDateTimeToString(DateTime date){
    var formattedDate = "${date.year}-${date.month}-${date.day}";
    return formattedDate;
  }
}
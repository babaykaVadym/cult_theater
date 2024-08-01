import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeUtils {
  /// Convert string 2022-08-19 12:00:00 to DateTime.
  static DateTime stringToDateTime(String dateTime, {bool useUts = false}) {
    final formatter = DateFormat('yyyy-MM-dd HH:MM:ss');
    return formatter.parse(dateTime, useUts);
  }

  /// Convert string 2022-08-19 to DateTime.
  static dateStringToDateTime(
    String date,
  ) {
    final formatter = DateFormat('yyyy-MM-dd');
    return formatter.parse(
      date,
    );
  }

  static String dateStringToDateTimeSlesh(
    DateTime date,
  ) {
    final formatter = DateFormat('dd/MM/yy');
    return formatter.format(
      date,
    );
  }

  /// Convert string 2022-09-23T19:02:42.000+0000 to DateTime
  static DateTime stringToDateTimeJS(String dateTime, {bool useUts = false}) {
    final formatter = DateFormat('yyyy-MM-ddTHH:mm:ss');
    return formatter.parse(dateTime, useUts);
  }

  /// Convert DateTime to a string similar to 2022-08-19 12:00:00.
  static String dateTimeToString(DateTime date) {
    final formatter = DateFormat('yyyy-MM-dd HH:mm');
    return formatter.format(
      date,
    );
  }

  static String dateStringToDateTimeJS(DateTime dateTime,
      {bool useUts = false}) {
    final formatter = DateFormat('yyyy-MM-ddTHH:mm:ss');
    return formatter.format(
      dateTime,
    );
  }

  static String dateTimeToDateString(DateTime date) {
    final formatter = DateFormat('yyyy-MM-dd');
    return formatter.format(date);
  }

  static String timeToString24(DateTime dateTime) {
    final formatter = DateFormat.Hm();
    return formatter.format(dateTime);
  }

  static String timeToString12(DateTime dateTime) {
    final formatter = DateFormat.jm();
    return formatter.format(dateTime);
  }

  static DateTime string24ToTime(String timeStr) {
    final formatter = DateFormat.Hm();
    return formatter.parse(timeStr);
  }

  static DateTime string12ToTime(String timeStr) {
    final formatter = DateFormat.jm();
    return formatter.parse(timeStr);
  }

  /// Add or subtract specified number of years from a given date.
  static DateTime adjustDateYear(DateTime date, int years) {
    return DateTime(date.year + years, date.month, date.day, date.hour,
        date.minute, date.second);
  }

  static DateTime timeByHalfHourInterval(DateTime date, int interval) {
    return DateTime(
      date.year,
      date.month,
      date.day,
    ).add(Duration(minutes: 30 * interval));
  }

  static int calculateTimeHalfHourInterval(DateTime dateTime) {
    return dateTime.hour * 2 + (dateTime.minute > 0 ? 1 : 0);
  }

  static DateTime endOfDay(DateTime day) =>
      DateTime(day.year, day.month, day.month, 23, 59, 59, 999);

  /// Change specified time to have minutes either :00 or :30.
  /// Adjustment is always done to bigger value: 13:01 -> 13:30, 13:36 -> 14:00.
  static DateTime alignTo30m(DateTime dateTime) {
    int minutes = dateTime.minute;
    if (minutes == 0 || minutes == 30) return dateTime;
    if (minutes > 30) {
      return dateTime.add(const Duration(hours: 1)).copyWith(minute: 0);
    } else {
      return dateTime.copyWith(minute: 30);
    }
  }

  static bool isTime24h(String? value) {
    if (value == null || value.isEmpty) return false;
    try {
      DateFormat('HH:mm').parse(value);
    } on FormatException {
      return false;
    }
    return true;
  }

  static bool isDateSQL(String? value) {
    if (value == null || value.isEmpty) return false;
    try {
      DateFormat('yyyy-MM-dd').parseStrict(value);
    } on FormatException {
      return false;
    }
    return true;
  }

  static String getDayUkr(int indexDay) {
    switch (indexDay) {
      case 0:
        return "Пн";
      case 1:
        return "Пн";
      case 2:
        return "Вт";
      case 3:
        return "Ср";
      case 4:
        return "Чт";
      case 5:
        return "Пт";
      case 6:
        return "Сб";
      case 7:
        return "Нд";
      default:
        return "";
    }
  }

  static String getLastDateUpdate(DateTime innput) {
    Duration projDuration = DateTime.now().difference(innput);

    int totalDays = projDuration.inDays;

    int years = totalDays ~/ 365;
    int months = (totalDays - years * 365) ~/ 30;
    int days = totalDays - years * 365 - months * 30;
    if ((totalDays ~/ 365) > 0) {
      return '${totalDays ~/ 365} years';
    } else if (months > 0) {
      return '$months months';
    } else if (days > 0) {
      return '$days days';
    } else if (projDuration.inHours > 0 && projDuration.inHours < 60) {
      return '${projDuration.inHours} hours';
    } else if (projDuration.inMinutes > 0 && projDuration.inMinutes < 60) {
      return '${projDuration.inMinutes} minutes';
    } else {
      return '${projDuration.inSeconds} seconds';
    }
  }

  /// Works only if each range has start <= end date.
  static bool areDateRangesOverlapped(
      DateTimeRange range1, DateTimeRange range2) {
    return (range1.start.isBefore(range2.end) ||
            range1.start.isAtSameMomentAs(range2.end)) &&
        (range1.end.isAfter(range2.start) ||
            range1.end.isAtSameMomentAs(range2.start));
  }
}

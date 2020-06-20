import 'package:intl/intl.dart';

class ChangeDageFormat {
  final String date;

  ChangeDageFormat(this.date);

  String getTime() {
    DateTime dateTime = DateTime.parse(date);

    String day = DateFormat('EEE').format(dateTime);
    String mon = DateFormat('MM').format(dateTime);
    String dayNumber = DateFormat('d').format(dateTime);

    String hour = DateFormat('h:mm').format(dateTime);
    String zone = DateFormat('a').format(dateTime);
    String fullDate;
    String monthName;
    switch (int.parse(mon)) {
      case 1:
        {
          monthName = 'كانون الثاني';
        }
        break;
      case 2:
        {
          monthName = 'شباط';
        }
        break;
      case 3:
        {
          monthName = 'آذار';
        }
        break;
      case 4:
        {
          monthName = 'نيسان';
        }
        break;
      case 5:
        {
          monthName = 'أيار';
        }
        break;
      case 6:
        {
          monthName = 'حزيران';
        }
        break;
      case 7:
        {
          monthName = 'تموز';
        }
        break;
      case 8:
        {
          monthName = 'آب';
        }
        break;
      case 9:
        {
          monthName = 'أيلول';
        }
        break;
      case 10:
        {
          monthName = 'تشرين الأول';
        }
        break;
      case 11:
        {
          monthName = 'تشرين الثاني';
        }
        break;
      case 12:
        {
          monthName = 'كانون الأول';
        }
        break;
      default:
        {
          monthName = '';
        }
        break;
    }
    String dayName;
    if (day == 'Monday') {
      dayName = 'الاثنين';
    } else if (day == 'Tuesday') {
      dayName = 'الثلاثاء';
    } else if (day == 'Wednesday') {
      dayName = 'الأربعاء';
    } else if (day == 'Thursday') {
      dayName = 'الخميس';
    } else if (day == 'Friday') {
      dayName = 'الجمعة';
    } else if (day == 'Saturday') {
      dayName = 'السبت';
    } else {
      dayName = 'الأحد';
    }

    String timeZone;

    if (zone == 'PM') {
      timeZone = 'مساءاً';
    } else {
      timeZone = 'صباحاً';
    }

    fullDate = dayName +
        ', ' +
        dayNumber +
        ' ' +
        monthName +
        ', ' +
        hour +
        ' ' +
        timeZone;
    return fullDate;
  }
}

import 'package:intl/intl.dart';

class CustomDateTime {
  static String formatTime(DateTime dateTime) {
    return DateFormat('hh:mm a').format(dateTime);
  }
}

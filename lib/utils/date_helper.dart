import 'package:intl/intl.dart';

class DateHelper {
  // Convert a DateTime to a formatted string (e.g., '2024-12-15 14:30')
  static String formatDate(DateTime dateTime) {
    final DateFormat formatter = DateFormat('yyyy-MM-dd HH:mm');
    return formatter.format(dateTime);
  }

  // Convert a DateTime to a user-friendly date string (e.g., 'December 15, 2024')
  static String formatDateForDisplay(DateTime dateTime) {
    final DateFormat formatter = DateFormat('MMMM dd, yyyy');
    return formatter.format(dateTime);
  }

  // Convert a DateTime to a user-friendly time string (e.g., '2:30 PM')
  static String formatTimeForDisplay(DateTime dateTime) {
    final DateFormat formatter = DateFormat('h:mm a');
    return formatter.format(dateTime);
  }

  // Parse a string back into a DateTime object
  static DateTime parseDateString(String dateString) {
    final DateFormat formatter = DateFormat('yyyy-MM-dd HH:mm');
    return formatter.parse(dateString);
  }

  // Get the current date and time
  static DateTime getCurrentDateTime() {
    return DateTime.now();
  }

  // Calculate the difference between two DateTimes (in hours)
  static int getTimeDifferenceInHours(DateTime start, DateTime end) {
    final Duration difference = end.difference(start);
    return difference.inHours;
  }

  // Get the difference between two DateTimes in days
  static int getTimeDifferenceInDays(DateTime start, DateTime end) {
    final Duration difference = end.difference(start);
    return difference.inDays;
  }

  // Add days to a DateTime (for example, to calculate appointment reminders)
  static DateTime addDaysToDate(DateTime date, int days) {
    return date.add(Duration(days: days));
  }

  // Check if a date is in the past
  static bool isDateInPast(DateTime date) {
    return date.isBefore(DateTime.now());
  }
}

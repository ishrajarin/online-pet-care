import 'package:intl/intl.dart';

class Formatters {
  // Format currency values (e.g., 1000.50 -> $1,000.50)
  static String formatCurrency(double value) {
    final NumberFormat currencyFormatter = NumberFormat.currency(symbol: '\$', decimalDigits: 2);
    return currencyFormatter.format(value);
  }

  // Format date to a human-readable string (e.g., 2024-12-15 -> December 15, 2024)
  static String formatDate(DateTime dateTime) {
    final DateFormat formatter = DateFormat('MMMM dd, yyyy');
    return formatter.format(dateTime);
  }

  // Format time to a human-readable string (e.g., 14:30 -> 2:30 PM)
  static String formatTime(DateTime dateTime) {
    final DateFormat formatter = DateFormat('h:mm a');
    return formatter.format(dateTime);
  }

  // Format number to add commas as thousand separators (e.g., 1000 -> 1,000)
  static String formatNumber(int number) {
    final NumberFormat numberFormatter = NumberFormat('#,###');
    return numberFormatter.format(number);
  }

  // Capitalize the first letter of a string
  static String capitalizeFirstLetter(String text) {
    if (text.isEmpty) return text;
    return text[0].toUpperCase() + text.substring(1);
  }

  // Format a phone number (e.g., (123) 456-7890)
  static String formatPhoneNumber(String phoneNumber) {
    final RegExp regExp = RegExp(r'(\d{3})(\d{3})(\d{4})');
    return phoneNumber.replaceAllMapped(regExp, (match) {
      return '(${match[1]}) ${match[2]}-${match[3]}';
    });
  }

  // Remove leading zeros from a string (useful for fields like zip code)
  static String removeLeadingZeros(String text) {
    return text.replaceFirst(RegExp(r'^0+'), '');
  }

  // Format a string to proper case (e.g., hello world -> Hello World)
  static String formatToProperCase(String text) {
    return text.split(' ').map((word) => capitalizeFirstLetter(word)).join(' ');
  }
}

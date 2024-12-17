class Validators {
  static bool isValidEmail(String email) {
    // Add email validation logic
    return RegExp(r"^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$").hasMatch(email);
  }

  static bool isValidPassword(String password) {
    // Add password validation logic
    return password.length >= 6;
  }
}

class Validators {
  // Boşluk kontrolü
  static bool isNotEmpty(String? value) {
    return value != null && value.trim().isNotEmpty;
  }

  // E-posta format kontrolü (örnek)
  static bool isValidEmail(String? email) {
    final emailRegex = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
    return email != null && emailRegex.hasMatch(email);
  }

  // Sayı doğrulama (örnek)
  static bool isWithinRange(int? value, int min, int max) {
    if (value == null) return false;
    return value >= min && value <= max;
  }
}

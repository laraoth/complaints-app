import 'input_validation_type.dart';

class InputValidator {
  static String? validate({
    required String value,
    required InputValidationType type,
    String? customPattern,
  }) {
    if (value.trim().isEmpty) {
      return "Can't Be Empty";
    }

    String pattern = '';

    switch (type) {
      case InputValidationType.email:
        pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
        break;

      case InputValidationType.phone:
        pattern = r'^(?:[+]?\d{8,15})$';
        break;

      case InputValidationType.username:
        pattern = r'^[a-zA-Z0-9_]{3,16}$';
        break;

      case InputValidationType.password:
        pattern = r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$';
        break;

      case InputValidationType.number:
        pattern = r'^[0-9]+$';
        break;

      case InputValidationType.none:
        return null;
    }

    if (customPattern != null) {
      pattern = customPattern;
    }

    final regex = RegExp(pattern);
    if (!regex.hasMatch(value.trim())) {
      return "Invalid $value format";
    }

    return null;
  }
}

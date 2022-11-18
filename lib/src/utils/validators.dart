import 'package:design_system/src/utils/formatters.dart';
import 'package:intl/intl.dart';

class Validator {
  static String? password(String? password) {
    if (password != null) {
      if (password.isEmpty) {
        return "Password cannot be empty";
      } else if (password.length < 8) {
        return "Password must be more than 7 characters";
      }
    }
    return null;
  }

  static String? email(String? email) {
    final emailReg = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (email != null) {
      if (email.isEmpty) {
        return "Email number cannot be empty";
      } else if (!emailReg.hasMatch(email)) {
        return "Invalid email address";
      }
      return null;
    }
    return "Invalid email address";
  }

  static String? phone(String? phone) {
    if (phone != null) {
      if (phone.isEmpty) {
        return "Phone number cannot be empty";
      } else if (phone.length > 13 || phone.length < 6) {
        return "Invalid phone number";
      }
      return null;
    }
    return "Invalid phone number";
  }

  static String? code(String? otp) {
    if (otp != null) {
      return otp.trim().isEmpty
          ? "Code cannot be empty"
          : otp.trim().length < 6
              ? "Code is not complete"
              : null;
    }
    return "Invalid code";
  }

  static String? singleName(String? name, [String title = "Name"]) {
    if (name != null) {
      if (name.isEmpty) {
        return "$title cannot be empty";
      } else if (name.length < 2) {
        return "Invalid $title";
      }
      return null;
    }
    return "Invalid $title";
  }
}

//formating
class TextFieldFormatter {
  static String removePhoneLeadingZero(String phone) {
    if (phone[0] == '0') {
      phone = phone.substring(1);
    }
    return phone;
  }

  static ThousandsFormatter thousandsFormatter(
      {String moneySymbol = "₦",
      NumberFormat? formatter,
      bool allowFraction = false}) {
    return ThousandsFormatter(
      moneySymbol: moneySymbol,
      formatter: formatter,
      allowFraction: allowFraction,
    );
  }

  static CreditCardFormatter creditCardFormatter(
      {NumberFormat? formatter, bool allowFraction = false}) {
    return CreditCardFormatter();
  }
}

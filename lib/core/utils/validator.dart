
class Validator {
  static String? validateUsername(String? value) {
    if (value == null || value.isEmpty) {
      return 'Name is required';
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    if (!RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$")
        .hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  static String? validateAgainPassword(String? value,String passWord) {
    if (value == null || value.isEmpty) {
      return 'Please re-enter your password';
    }
    if (value != passWord) {
      return 'Passwords do not match';
    }
    return null;
  }

  static String? validateText(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please provide the necessary details';
    }
    return null;
  }

static String? validatePhoneNumber(String? value) {
  if (value == null || value.isEmpty) {
    return 'Phone number is required';
  }

  final phoneRegExp = RegExp(r'^\+?0[0-9]{9,15}$');
  if (!phoneRegExp.hasMatch(value)) {
    return 'Enter a valid phone number';
  }
  
  return null;
}

 static String? validatePinCode(String? value) {
  if (value == null || value.isEmpty) {
    return 'PIN code is required';
  }

  final pinRegExp = RegExp(r'^[0-9]{6}$');
  if (!pinRegExp.hasMatch(value)) {
    return 'Enter a valid 6-digit PIN code';
  }

  return null;
}



}

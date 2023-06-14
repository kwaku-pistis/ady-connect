class Utils {
  static bool validatePhoneNumber(String phoneNumber) {
    String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = RegExp(patttern);
    if (phoneNumber.isEmpty) {
      return false;
    } else if (!regExp.hasMatch(phoneNumber)) {
      return false;
    }
    return true;
  }

  static String formatPhoneNumber(String phoneNumber) {
    if (phoneNumber.startsWith('0')) {
      return phoneNumber.replaceFirst('0', '233');
    }
    return phoneNumber;
  }
}

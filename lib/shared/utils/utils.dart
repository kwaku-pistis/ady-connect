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
}

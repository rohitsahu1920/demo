

class Validator {

  static Pattern emailPattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  static Pattern passwordPattern = r'^((?!.*[\s])(?=.*[A-Z])(?=.*\d).{8,15})';



  static String validatePassword(String value) {
    if (value.isEmpty) return "Invalid E-Mail";
    return null;
  }

  static String validateEmail(String value) {
    if (value.isEmpty) return "Please Enter E-Mail";
    RegExp regexEmail = RegExp(emailPattern);
    if (regexEmail.hasMatch(value))
      return null;
    else
      return "Invalid E-mail";
  }
}

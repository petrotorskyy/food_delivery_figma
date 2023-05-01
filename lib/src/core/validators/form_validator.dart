import '../constants/const.dart';

class FormValidator {
  String? validateName(String? value) {
    String pattern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = RegExp(pattern);
    if (value?.isEmpty ?? true) {
      return AppString.nameRequired;
    } else if (!regExp.hasMatch(value ?? '')) {
      return AppString.errorNameRequired;
    }
    return null;
  }

  String? validateMobile(String? value) {
    String pattern = r'(^\+?[0-9]*$)';
    RegExp regExp = RegExp(pattern);
    if (value?.isEmpty ?? true) {
      return AppString.mobileNumberRequired;
    } else if (!regExp.hasMatch(value ?? '')) {
      return AppString.errorMobileNumberRequired;
    }
    return null;
  }

  String? validatePassword(String? value) {
    if ((value?.length ?? 0) < 6) {
      return AppString.errorPasswordRequired;
    } else {
      return null;
    }
  }

  String? validateEmail(String? value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value ?? '')) {
      return AppString.errorValidEmail;
    } else {
      return null;
    }
  }

  String? validateConfirmPassword(String? password, String? confirmPassword) {
    if (password != confirmPassword) {
      return AppString.errorPasswordMatch;
    } else if (confirmPassword?.isEmpty ?? true) {
      return AppString.passwordConfirmRequired;
    } else {
      return null;
    }
  }
}

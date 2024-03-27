import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Validator {
  static RegExp alphaNumberRic =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

  static List<TextInputFormatter>? nameFormatterWithSpecialChar = [
    FilteringTextInputFormatter.allow(RegExp('[a-zA-Z0-9@#\$%^&*()_-]')),
  ];

  static List<TextInputFormatter>? mobileNumberFormatter = [
    FilteringTextInputFormatter.allow(RegExp('[0-9-_+]'))
  ];

  static String? passwordValid(String? v) {
    if (v!.isEmpty) {
      return "";
    } else {
      return null;
    }
  }

  static String? validateEmail(String? v) {
    if (v!.toString().trim().isEmpty) {
      return "";
    } else if (!GetUtils.isEmail(v.trim())) {
      return "";
    } else {
      return null;
    }
  }

  static String? validateFirstName(String? v) {
    if (v!.toString().trim().isEmpty) {
      return "";
    } else if (v.length > 25) {
      return "";
    } else {
      return null;
    }
  }

  static String? validLastName(String? v) {
    if (v!.toString().trim().isEmpty) {
      return "";
    } else if (v.length > 25) {
      return "";
    } else {
      return null;
    }
  }

  static String? validateUserName(String? v) {
    if (v!.toString().trim().isEmpty) {
      return "";
    } else {
      return null;
    }
  }

  static String? validNumber(String? v) {
    if (v!.isEmpty) {
      return "";
    } else if (v.length < 7) {
      return "";
    } else if (v.length > 15) {
      return "";
    } else {
      return null;
    }
  }

  static String? validateNewPassword(String? v) {
    if (v!.isEmpty) {
      return "";
    } else if (!alphaNumberRic.hasMatch(v)) {
      return "";
    } else {
      return null;
    }
  }

  static String? validOtp(String? v) {
    if (v!.length < 6) {
      return "";
    } else {
      return null;
    }
  }

  static String? validHomeAddress(String? v) {
    if (v!.toString().trim().isEmpty) {
      return "";
    } else {
      return null;
    }
  }

  static String? validOfficeAddress(String? v) {
    if (v!.toString().trim().isEmpty) {
      return "";
    } else {
      return null;
    }
  }
}

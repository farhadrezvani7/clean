import '../util/defaults.dart';

extension StringExtension on String {
  bool isValidIranianPhoneNumber() {
    var regex = RegExp(
      r'^(((98)|(\+98)|(0098)|0)(9){1}((0)|(1)|(3)|(9)|(2)){1}[0-9]{8})+$',
      caseSensitive: false,
    );
    return regex.hasMatch(this);
  }

  bool isValidOTPCode() {
    return length == Defaults.OTP_LENGTH;
  }
}

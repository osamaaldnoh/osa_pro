import 'dart:math';

import 'package:flutter/services.dart';

class DateTextFormatter extends TextInputFormatter {
  static const _maxChars = 8;

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var text = _format(newValue.text, '/');
    return newValue.copyWith(text: text, selection: updateCursorPosition(text));
  }

  String _format(String value, String seperator) {
    value = value.replaceAll(seperator, '');
    var newString = '';

    for (int i = 0; i < min(value.length, _maxChars); i++) {
      newString += value[i];
      if ((i == 1 || i == 3) && i != value.length - 1) {
        newString += seperator;
      }
    }

    return newString;
  }

  TextSelection updateCursorPosition(String text) {
    return TextSelection.fromPosition(TextPosition(offset: text.length));
  }
}

@override
TextEditingValue formatEditUpdate(
    TextEditingValue oldValue, TextEditingValue newValue) {
  //this fixes backspace bug
  if (oldValue.text.length >= newValue.text.length) {
    return newValue;
  }

  var dateText = _addSeperators(newValue.text, '/');
  return newValue.copyWith(
      text: dateText, selection: updateCursorPosition(dateText));
}

String _addSeperators(String value, String seperator) {
  value = value.replaceAll('/', '');
  var newString = '';
  for (int i = 0; i < value.length; i++) {
    newString += value[i];
    if (i == 1) {
      newString += seperator;
    }
    if (i == 3) {
      newString += seperator;
    }
  }
  return newString;
}

TextSelection updateCursorPosition(String text) {
  return TextSelection.fromPosition(TextPosition(offset: text.length));
}

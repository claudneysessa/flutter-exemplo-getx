library custom_flutter_masked_text;

import 'package:flutter/material.dart';

class CustomMaskedTextEditingController extends TextEditingController {
  CustomMaskedTextEditingController({String text, this.mask, Map<String, RegExp> translator}) : super(text: text) {
    this.translator = translator ?? CustomMaskedTextEditingController.getDefaultTranslator();

    this.addListener(() {
      var previous = this._lastUpdatedText;
      if (this.beforeChange(previous, this.text)) {
        this.updateText(this.text);
        this.afterChange(previous, this.text);
      } else {
        this.updateText(this._lastUpdatedText);
      }
    });

    this.updateText(this.text);
  }

  String mask;

  Map<String, RegExp> translator;

  Function afterChange = (String previous, String next) {};
  Function beforeChange = (String previous, String next) {
    return true;
  };

  String get rawText {
    String localMask = this.mask;
    String localText = this.text;
    for (int i = 0; i < localMask.length; i++) {
      var aux = localMask.substring(i, i + 1);
      if ((localMask.substring(i, i + 1) != '0') &&
          (localMask.substring(i, i + 1) != 'A') &&
          (localMask.substring(i, i + 1) != '@') &&
          (localMask.substring(i, i + 1) != '*')) {
        localText = localText.replaceFirst(aux, '|');
      }
    }
    return localText.replaceAll('|', '');
  }

  String get rawNumberValue {
    RegExp exp = RegExp(r"[^0-9]");
    return this.text.replaceAll(exp, '');
  }

  String get numberValue {
    String localMask = this.mask;
    for (int i = 0; i < localMask.length; i++) {
      var aux = localMask.substring(i, i + 1);
      if ((localMask.substring(i, i + 1) != '0') &&
          (localMask.substring(i, i + 1) != 'A') &&
          (localMask.substring(i, i + 1) != '@') &&
          (localMask.substring(i, i + 1) != '*')) {
        localMask = localMask.replaceFirst(aux, '0');
      }
    }
    return this._applyMask(localMask, this.text);
  }

  String _lastUpdatedText = '';

  void updateText(String text) {
    if (text != null) {
      this.text = this._applyMask(this.mask, text);
    } else {
      this.text = '';
    }

    this._lastUpdatedText = this.text;
  }

  void updateMask(String mask, {bool moveCursorToEnd = true}) {
    this.mask = mask;
    this.updateText(this.text);

    if (moveCursorToEnd) {
      this.moveCursorToEnd();
    }
  }

  void moveCursorToEnd() {
    var text = this._lastUpdatedText;
    this.selection = new TextSelection.fromPosition(new TextPosition(offset: (text ?? '').length));
  }

  @override
  set text(String newText) {
    if (super.text != newText) {
      super.text = newText;
      this.moveCursorToEnd();
    }
  }

  static Map<String, RegExp> getDefaultTranslator() {
    return {
      'A': new RegExp(r'[A-Za-z]'),
      '0': new RegExp(r'[0-9]'),
      '@': new RegExp(r'[A-Za-z0-9]'),
      '*': new RegExp(r'.*')
    };
  }

  String _applyMask(String mask, String value) {
    String result = '';

    var maskCharIndex = 0;
    var valueCharIndex = 0;

    while (true) {
      // if mask is ended, break.
      if (maskCharIndex == mask.length) {
        break;
      }

      // if value is ended, break.
      if (valueCharIndex == value.length) {
        break;
      }

      var maskChar = mask[maskCharIndex];
      var valueChar = value[valueCharIndex];

      // value equals mask, just set
      if (maskChar == valueChar) {
        result += maskChar;
        valueCharIndex += 1;
        maskCharIndex += 1;
        continue;
      }

      // apply translator if match
      if (this.translator.containsKey(maskChar)) {
        if (this.translator[maskChar].hasMatch(valueChar)) {
          result += valueChar;
          maskCharIndex += 1;
        }

        valueCharIndex += 1;
        continue;
      }

      // not masked value, fixed char on mask
      result += maskChar;
      maskCharIndex += 1;
      continue;
    }

    return result;
  }
}

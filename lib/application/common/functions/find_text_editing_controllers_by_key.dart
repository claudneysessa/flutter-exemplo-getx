import 'package:flutter/material.dart';
import 'package:flutter_getx/application/common/functions/find_widget_by_key.dart';
import 'package:flutter_getx/application/common/widgets/custom_maskedtexteditingcontroller.dart';
import 'package:flutter_getx/application/common/widgets/custom_moneymaskedtexteditingcontroller.dart';

TextEditingController findControllerByKey(String nome) {
  if (findWidgetByKey(nome) is TextFormField) {
    return (findWidgetByKey(nome) as TextFormField).controller;
  }
  if (findWidgetByKey(nome) is TextField) {
    return (findWidgetByKey(nome) as TextField).controller;
  } else {
    return null;
  }
}

CustomMaskedTextEditingController findMaskedControllerByKey(String nome) {
  if (findWidgetByKey(nome) is TextFormField) {
    return (findWidgetByKey(nome) as TextFormField).controller;
  }
  if (findWidgetByKey(nome) is TextField) {
    return (findWidgetByKey(nome) as TextField).controller;
  } else {
    return null;
  }
}

CustomMoneyMaskedTextEditingController findMoneyMaskedControllerByKey(String nome) {
  if (findWidgetByKey(nome) is TextFormField) {
    return (findWidgetByKey(nome) as TextFormField).controller;
  }
  if (findWidgetByKey(nome) is TextField) {
    return (findWidgetByKey(nome) as TextField).controller;
  } else {
    return null;
  }
}

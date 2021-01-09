import 'package:intl/intl.dart';

int convertAnyToInteger(var valorInteiro) {
  if (valorInteiro is int) {
    return valorInteiro;
  }
  if (valorInteiro is double) {
    return valorInteiro.toInt();
  }
  if (valorInteiro is String) {
    try {
      var numeroComoDouble = double.parse(valorInteiro);
      return numeroComoDouble.toInt();
    } catch (e) {
      return 0;
    }
  }
  return 0;
}

double convertAnyToDouble(var valorReal) {
  if (valorReal is int) {
    return double.parse(valorReal.toString());
  }
  if (valorReal is double) {
    return valorReal;
  }
  if (valorReal is String) {
    try {
      var numeroComoDouble = double.parse(valorReal);
      return numeroComoDouble.toDouble();
    } catch (e) {
      return 0;
    }
  }
  return 0;
}

String convertAnyToString(var valorString) {
  try {
    if (valorString is int) {
      return valorString.toString();
    } else if (valorString is double) {
      return valorString.toString();
    } else if (valorString is String) {
      return valorString.toString();
    } else if (valorString is DateTime) {
      return valorString.toString();
    } else {
      return '';
    }
  } catch (e) {
    return '';
  }
}

String convertDateFormattedStringToString(String value) {
  return DateFormat('dd/MM/yyyy HH:mm:ss').format(DateTime.parse(value).toLocal()).toString();
}

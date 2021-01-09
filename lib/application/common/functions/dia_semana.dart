String diaSemana(int weekDay, {bool completo = false}) {
  String complemento;
  complemento = completo ? "-Feira" : "";
  switch (weekDay) {
    case 1:
      return "Segunda$complemento";
      break;
    case 2:
      return "Terça$complemento";
      break;
    case 3:
      return "Quarta$complemento";
      break;
    case 4:
      return "Quinta$complemento";
      break;
    case 5:
      return "Sexta$complemento";
      break;
    case 6:
      return "Sábado";
      break;
    case 7:
      return "Domingo";
      break;
    default:
      return "Não Definido";
  }
}

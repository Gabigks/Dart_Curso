import 'dart:async';

void main() {
  final diaDaSemana = 0;
  var diaDaSemanaStr = '';

  switch (diaDaSemana) {
    case 0:
      print("Domingo");
      break;
    case 1:
      print("Segunda-feira");
      break;
    default:
      print("Errou");
      break;
  }

  var idade = 18;
  switch (idade) {
    case 18:
    case 19:
      print("Maior de idade");
      break;
    default:
      print("Menor de idade");
      break;
  }
}

void main() {
  final idade = 12;

  if (idade >= 18) {
    print("Maior de idade");
  } else {
    print("Menor de idade");
  }

  //Operadores ternarios
  final ehMaior = (idade >= 18 ? true : false);
  print("Eh maior de idade? " + ehMaior.toString());
}

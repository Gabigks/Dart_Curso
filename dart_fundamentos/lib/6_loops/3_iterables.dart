void main() {
  var numeros = List.generate(10, (index) => index);

  // for (var i = 0; i < numeros.length; i++) {
  //   if (i == 5) continue;
  //   print(numeros[i]);
  // }

  numeros.where((numero) => numero != 5).forEach((numero) => print(numero));
  //Como
  final numerosAte6 = numeros
      .takeWhile((numero) => numero < 7) //Proximo enquanto < 7
      .where((numero) => numero != 5) //Removo o 5
      .toList(); //Transforma o iterable em uma lista
  print(numeros);
  print(numerosAte6);

  final numerosRemoverAte5 = numeros
      .skipWhile((numero) => numero < 6) //Eh menor que 6, entao pula/remove
      .toList();
  print(numerosRemoverAte5);

  final nomes = ['Gabriel', 'Marcela', 'Amor', 'Tesao', 'Felicidade'];
  var nomesSkip = nomes.skipWhile((nome) {
    if (nome != 'Tesao') {
      return true;
    } else {
      return false;
    }
  }).toList();
  print(nomesSkip);

  var numeroStringList = numeros.map((numero) {
    return 'Numero é $numero';
  }).toList();
  print(numeroStringList);
}

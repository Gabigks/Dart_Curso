void main() {
  var numero = List.generate(10, (index) => index);
  var nomes = ['Gabriel', 'Marcela', 'Amor', 'Tesao'];

  for (var i = 0; i < numero.length; i++) {
    print(numero[i]);
  }

  for (var i in numero) {
    print(i);
  }
}

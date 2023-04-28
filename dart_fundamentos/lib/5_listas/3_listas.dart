void main() {
  final numeros = [1, 2, 3, 4];
  print(numeros);
  numeros.add(1);
  //Adiciona apenas os elementos no final da lista
  numeros.addAll([10, 11, 12, 13, 14]);
  print(numeros);

  final nomes = ['Gabriel', 'Marcela', 'Eugenio', 'Joao'];
  print(nomes);
  nomes.add('Maria');
  print(nomes);
  print(nomes[2]);

  //Passa o elemento 0 pra frente e coloca 'Carlin' no lugar
  nomes.insert(0, 'Carlin');
  print(nomes);

  nomes.remove('Carlin');
  print(nomes);

  nomes.removeWhere((nome) {
    print("Nome procurado $nome");
    if (nome == 'Eugenio') {
      return true;
    } else {
      return false;
    }
  });
  //remove todas palavras com tamanho 4
  nomes.removeWhere(
    (element) => element.length == 4,
  );

  print(nomes);

  print(nomes.first);
  print(nomes.last);

  //Buscando primeiro nome
  //Existe lastwhere tambem
  var primeiroNome = nomes.firstWhere((element) => element == 'Maria');
  print(primeiroNome);

  //Gera lista de 1 a 10
  final numerosGerados = List.generate(10, (index) => index + 1);
  print(numerosGerados);
  //Gera lista escrita Indice 0, Indice 1...            Interpolar
  final stringGerados = List.generate(10, (index) => 'Indice ${index}');
  print(stringGerados);

  //Gera lista com 10 elementos 0
  final repeticoes = List.filled(10, 0);
  print(repeticoes);

  final numerosCalculo = List.generate(100, (index) => index + 1);
  var soma = numerosCalculo.fold<int>(
    0, //Valor inicial
    (previousValue, numero) => previousValue = previousValue + numero,
  );
  print(soma);

  //Spread operator (...)
  var listaNumerosSpread2 = [4, 5, 6];
  var listaNumerosSpread = [1, 2, 3, ...listaNumerosSpread2];
  print(listaNumerosSpread);

  //Collection if
  var promocaoAtiva = true;
  var produtos = [
    'Cerveja',
    'Pao',
    'Agua',
    'Carne',
    if (promocaoAtiva) 'Suco de Laranja'
  ];
  print(produtos);

  //Colection for
  var listaInts = [1, 2, 3];
  var listaStrings = ['#0', for (var i in listaInts) '#$i'];
  print(listaStrings);

  var string = listaStrings.join('-> ');
  print(string);
}

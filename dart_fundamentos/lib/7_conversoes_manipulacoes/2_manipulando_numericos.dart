void main() {
  final idade = 21;

  print('Sua idade eh $idade');

  if (idade.isNegative) print('Negatico');

  final valorDouble = 10.65;
  print(valorDouble.round()); //Arredonda e retorna int
  print(valorDouble.roundToDouble()); //Arredonda e retorna double

  final valorCertoString = '30';
  final valorErradoString = 'Gabriel';
  final valorInt = int.parse(
      valorCertoString); //Converte pra int se a string for um int de fato se nao da erro
  final valorInt2 =
      int.tryParse(valorErradoString); //Se a string nao for um int retorna null
  if (valorInt2 != null) print(valorInt2);

  final precoCamiseta = 30.27876;
  print(precoCamiseta.toStringAsFixed(2)); //Arrendonda com o numero de casas
}

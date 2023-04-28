//funcao de nivel superior
void main() {
  int idade = 10;
  double valorIphone = 12.000;
  //camelCase
  String nomeCurso = 'Academia do flutter';

  //pai do int e do double, aceita ambos
  num qualquerNumero = 1.2;
  num qualquerNumero2 = 1;

  //nao é necessario declarar o tipo, pode-se usar:
  //chama-se inferir o tipo
  var age = 21; //o 21 faz o papel de dar o tipo, nesse caso int
  var nome = 'Gabriel'; //mesma ideia para string
  var val = 1.2; //mesma ideia pra double

  //todas variaveis são filhas de object
  Object objetoQualquer = 10;
  //quase igual object, pode ser qualquer tipo e pode mudar o tipo tambem
  dynamic dynamicQualquer = 1.2;
  dynamicQualquer = 'Mudei de double pra string';
}

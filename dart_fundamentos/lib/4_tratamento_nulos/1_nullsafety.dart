//Variaveis de nivel superior nao podem ser inicializadas depois
//Nao é permitido
//String nomeCompletoSuperior;
String nomeCompletoSuperior = 'Gabriel';
String? nomeCompletoSuperiorOpc;

void main() {
  //Variaveis locais nao precisam ser inicializadas de cara porem
  //podem ser ciradas sem valor e depois atribuido um valor

  //usando ? variavel pode ser nula
  String nomeCompleto;
  String? nomeCompletoOpc;

  //Variaveis locais que sao nulas(nullable) por padrao
  //Se for atribuido um valor a ela, automaticamente elas
  //sao promovidas a nao nulo (non-null)
  nomeCompleto = 'sim';
  nomeCompletoOpc = '';

  //Variaveis de nivel superior NUNCA sao promovidas para non-null
  nomeCompletoSuperiorOpc = '';

  //se a variavel for nula o dart nao permite usar funcoes nela
  //mas se usar o !, é como dizer que sabe que ela é nula
  //mas garantindo pro dart que ela nao vai ser nula
  print(nomeCompleto.length);
}

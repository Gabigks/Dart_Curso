void main() {
  //Parametros obrigatorios
  print(soma(10, 10));

  //Parametros Nomeados
  //Parametros Nomeados são nullables por default
  //podem ser promovidos para non-null com checagem de null
  print(somaDouble()); //da pra passar assim pois aceita null
  print(somaDouble(numero1: 10.2, numero2: 2.4)); //Devem ser nomeados
  print(somaDouble(numero2: 2.4, numero1: 10.2)); //Não importa a ordem

  print(somaDoubleObrigatorios(numero1: 12, numero2: 3.6));
  print(somaDoubleObrigatoriosNull(numero1: null, numero2: null));
  print(somaDoubleDefault());

  //Parametros Opcionais
  print(somaIntOptional());

  //Mistura
  parametrosNormaisComNomeados(10, nome: 'Gabriel', idade: 21);
  parametrosNormaisComOpcionais(1, 'Gabriel', 21);
}

int soma(int a, int b) {
  return a + b;
}

//Parametros nomeados podem ser nulos, por isso tenq usar o ?
double somaDouble({double? numero1, double? numero2}) {
  if (numero1 != null && numero2 != null) return numero1 + numero2;
  return 0.0;
}

//Obrigatorio passar, {} para nomeados
double somaDoubleObrigatorios(
    {required double numero1, required double numero2}) {
  return numero1 + numero2;
}

//É obrigatório mas aceita null
double somaDoubleObrigatoriosNull(
    {required double? numero1, required double? numero2}) {
  //Se for null atribui 0, se nao ignora
  numero1 ??= 0;
  numero2 ??= 0;
  return numero1 + numero2;
}

//Se a variavel for passada como null atribui 0
double somaDoubleDefault({double numero1 = 0, double numero2 = 0}) {
  return numero1 + numero2;
}

//[] demonstra opcionalidade
int somaIntOptional([int a = 0, int b = 0]) {
  return a + b;
}

void parametrosNormaisComNomeados(int numero,
    {required String nome, required int idade}) {}
void parametrosNormaisComOpcionais(int numero, [String? nome, int? idade]) {}

void main() {
  var nomeCompleto = "Gabriel Kolling";

  //Variaveis finais:
  //Não podem ser alteradas depois de inicializadas (Imutaveis)
  //São definidas do programa em tempo de execução (Runtime)
  //Utilize sem moderação
  final nomeCompletoFinal = "Gabriel Kolling";
  final nomeCompletoFInal2 = nomeCompleto;
  //nome = "teste"; //da erro

  //Variaveis const:
  //Não podem ser alteradas depois de inicializadas (Imutaveis)
  //São definidas do programa em tempo de compilação (Compilation-time)
  //Não podem receber valor de outras variaveis a não ser que essas sejam const
  //Utilize sem moderação
  const nomeCompletoConst = "Gabriel Kolling";
  const nomeCompletoConst2 = nomeCompletoConst;
}

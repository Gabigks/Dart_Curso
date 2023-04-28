void main() {
  //? = Nullable (Aceita nulo)
  //Sem nada (padrão) = non-null (Não aceita nulo)

  //Nao aceita/pode ser nulo
  var nomes = <String>[];
  //Aceita null
  List<String>? nomesNulos = null;

  //Lista não pode ser nula e nem os itens internos
  List<String> nomesInternosNaoAceitaNulos = ['Gabriel'];
  var nomesInternosNaoAceitaNulos1 = ['Gabriel'];

  //Lista nao pode ser nula mas os items internos podem ser nulos
  List<String?> nomesInternosAceitaNulos = ['Gabriel', null, 'Joao', null];
  var nomesInternosAceitaNulos1 = <String?>['Gabriel'];

  //<?> interno diz que o tipo um elemento dentro da lista pode ser nulo
  //? externo se refere pra lista como um todo, dizendo que a lista pode receber o valor nulo
  List<String?>? nomesAceitaNulos = null;
}

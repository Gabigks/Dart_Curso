void main() {
  List<int> listNumeros = [1, 2, 3];
  //O dart infere o tipo quando ja inicializamos a lista com valores
  var listNumeros2 = [1, 2, 3];
  //Agora se inicializarmos sem valores e sem a tipagem ele infere sempre o tipo 'dynamic'
  //Errado!!
  var listDynamic = [];

  List<int> listSemDados = [];
  var listSemDados2 = <int>[];
}

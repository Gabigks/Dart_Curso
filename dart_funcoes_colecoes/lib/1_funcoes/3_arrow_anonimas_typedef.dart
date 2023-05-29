void main() {
  //Funcoes arrow
  print(somaInteiros(10, 10));

  //Funcoes anonimas
  //serve para associar funções a variaveis, por ex:
  var funcaoQualquer = () {
    print('Chamou a funcao da variavel');
    return 2000;
  };
  print(funcaoQualquer());

  chamarUmaFuncaoDeUmParametro((nome) {
    if (nome == null) {
      print("Nome veio vazio");
    } else {
      print(nome);
    }
  });

  //Typedef
  //'apelida' uma funcao, é util para reutilizar o mesmo tipo de função em situações diferentes
}

//função tem 3 partes
//1 - Tipo de retorno
//2 - Nome
//3 - Parametros (normais, nomeados e opcionais)

//funcao arrow - nao precisa de return, é pra ser feita em uma linha, arrow pq => parece uma flecha
int somaInteiros(int a, int b) => a + b;

//Recebe uma função anonima como parametro
void chamarUmaFuncaoDeUmParametro(FuncaoQueRecebeNome funcaoRecebeNome) {
  final nomeCompleto = null;
  funcaoRecebeNome(nomeCompleto);
}

typedef FuncaoQueRecebeNome = void Function(String nome);
typedef FuncaoQueRecebeNomeComplexo = String Function(
    String nome, String nomeCompleto,
    {required String? x, String? y, int? qq});
//Resumindo, a assinatura pode se tornar grande e complexa, por isso é interessante utilizar o typedef
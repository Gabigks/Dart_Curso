String? nomeCompleto;
int? idade;

void main() {
  //Null Aware Operator
  //var nomeCompletoLocal = nomeCompleto ?? "Nome nao preenchido"; //atribuindo a uma variavel

  //IF convencional
  if (nomeCompleto != null) {
    print(nomeCompleto!.toUpperCase());
  } else {
    print("Nome nao preenchido");
  }

  //Conditional Property access
  //Junção da conditional property access com o null aware operator
  print(nomeCompleto?.toUpperCase() ?? "Nome não preenchido");
  print(idade?.round() ?? "Idade não preenchida");
}
